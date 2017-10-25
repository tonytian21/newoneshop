<?php
require(dirname(dirname(dirname(dirname(__FILE__)))).'/libs/workerman/workerman/Autoloader.php');
require(dirname(__FILE__).'/libs/redis.class.php');

use workerman\Worker;

$task = new Worker();

$task->count = 10;
$task->onWorkerStart = function($task)
{
    $redis = new redis();
    // 定时器计算开奖结果
    Timer::add(1, function ()use($task,$redis){
        $term_num = $redis->rpop('PRIZE:COMPUTE');

        $this->ComputePrizeNum($term_num);
    });
};

// 运行
Worker::runAll();

function ComputePrizeNum($term_num){
    //获取期数相关信息
    $termInfo = Db::name('goods_term')->where('term_num',$term_num)->find();

    if(!$termInfo)
        return;

    //获取购买记录最后100条,不足100条则获取全部记录
    $buyRecordList = Db::name('order_goods')->where('term_id',$termInfo['term_id'])->limit(100)->order('order_goods_id desc')->select();

    if(!$buyRecordList)
        return;

    $lastRobotBuyTime = 0;
    $lastRobotBuyId = 0;
    //指定中奖人的中奖号码
    $targetTicket = '';
    $robotTargetTicket = '';

    $totalTicket = 0;
    //每个时间记录按时、分、秒、毫秒依次排列
    for($i = 0; $i < count($buyRecordList); $i++){
        $tmpTicketTime = intval(date('Gis.', substr($buyRecordList[$i]['createtime'], 0, -3)) . substr($buyRecordList[$i]['createtime'], -3));
        $totalTicket += $tmpTicketTime;

        if(!$lastRobotBuyTime && $buyRecordList[$i]['isrobot']){
            $lastRobotBuyTime = $buyRecordList[$i]['createtime'];
            $lastRobotBuyId = $buyRecordList[$i]['order_goods_id'];
            $robotTargetTicket = $buyRecordList[$i]['ticketnum'];
        }

        if(!$targetTicket && $termInfo['winneruid'] && $termInfo['winneruid'] == $buyRecordList[$i]['uid']){
            $targetTicket = $buyRecordList[$i]['ticketnum'];
        }
    }

    //计算正确的余数
    $finalMod = null;

    if($targetTicket){
        $finalMod = $targetTicket - 10000001;
    }else{
        //判断期数是否指定机器人中奖
        if($termInfo['robot_win']){
            //判断当前期数机器人参与比例是否小于20%，小于20%则正常开奖
            $robotBuyCount = Db::name('order_goods')->where('term_id='.$termInfo['term_id'].' and isrobot=1')->count();

            if(doubleval($robotBuyCount*1.00 / $termInfo['totalcopies']) > 0.2){
                $finalMod = $robotTargetTicket - 10000001;
            }
        }
    }

    //将这100个数值之和除以该商品总参与人次后取余数
    $tmpTag = $totalTicket / intval($termInfo['totalcopies']);
    $tmpMod = $totalTicket % intval($termInfo['totalcopies']);

    if(!is_null($finalMod)){
        //计算正确的除数,更新机器人购买的时间
        $successTotal = intval($termInfo['totalcopies']) * $tmpTag + $finalMod;
        $diffMod = $successTotal - $totalTicket;
        if($diffMod){
            $lastRobotBuyTime += $diffMod;
            if(Db::name('order_goods')->where('order_goods_id',$lastRobotBuyId)->update(['createtime'=>$lastRobotBuyTime])){
                $tmpMod = $finalMod;
            }
        }
    }
    
    //(余数) + 10000001 即为中奖号码
    $lastTicket = 10000001 + $tmpMod;
    
    //更改期数表 为等待开奖状态 complate = 3  winneruid order_id
    $termInfo['complate'] = 3;
    $termInfo['ticketnum'] = $lastTicket;
    //获取中奖的订单信息
    $orderGoodsInfo = Db::name('order_goods')->where("term_id = ".$termInfo['term_id']." and ticketnum='".$lastTicket."'")->find();

    if($orderGoodsInfo){
        $termInfo['winneruid'] = $orderGoodsInfo['uid'];
        $termInfo['order_id'] = $orderGoodsInfo['order_id'];
    }
    
    Db::name('goods_term')->update($termInfo,false,true);
}