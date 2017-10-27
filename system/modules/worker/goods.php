<?php
$system_path = 'system';
$statics_path = 'statics';
define ( 'G_WEB_DIR_PATH', dirname(dirname(dirname(__FILE__))) . DIRECTORY_SEPARATOR );
define ( 'G_APP_PATH', G_WEB_DIR_PATH.'..'.DIRECTORY_SEPARATOR );
include G_APP_PATH . $system_path . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'global.inc.php';

require_once(dirname(dirname(dirname(dirname(__FILE__)))).'/libs/workerman/workerman/Autoloader.php');
require_once(dirname(dirname(dirname(__FILE__))).'/libs/predis.class.php');

use workerman\Worker;
use Workerman\Lib\Timer;

$task = new Worker();

$task->count = 10;
$task->onWorkerStart = function($task)
{
    $redis = new predis();
    // 定时器添加商品
    Timer::add(1, function ()use($task,$redis){
        //获取redis上的商品添加队列，生成期数信息，并记录期数至redis备用
        $goods_id = $redis->rpop('GOODS:ADDTERM');

        AutoAddTerm($goods_id);
    });
};

// 运行
Worker::runAll();

function AutoAddTerm($goods_id){
    if(!$goods_id)
        return ;
    $db = System::load_sys_class('model');

    $goodsInfo = $db->GetOne("select * from go_shoplist where id=".$goods_id);

    if(!$goodsInfo)
        return;

    //计算总共需要参与的份数 价格/最小购买价格
    $totalCopies = intval($goodsInfo['money'])/intval($goodsInfo['yunjiage']);
    
    $redis = new predis();
    //数据库中增加期数信息
    $lenth = strlen(strval(intval($goodsInfo['maxqishu'])));

    for($i = 0 ; $i < intval($goodsInfo['maxqishu']); $i++){
        $sid = $goods_id;
        $term_num = date('Ymd',time()).$goods_id.str_pad($i,$lenth,'0',STR_PAD_LEFT);
        $robot_buy_ratio = intval($goodsInfo['robot_buy_ratio']);
        $robot_win = intval($goodsInfo['robot_win']);
        $zongrenshu = $totalCopies;
        $canyurenshu = 0;
        $shenyurenshu = $totalCopies;
        $complate = 0;
        $complatetime = 0;
        $q_uid = 0;
        
        $sql = "insert into go_shoplist_term (`sid`,`term_num`,`t_robot_buy_ratio`,`t_robot_win`,`zongrenshu`,`canyurenshu`,`shenyurenshu`,`complate`,`complatetime`,`q_uid`) values ('$sid','$term_num','$robot_buy_ratio','$robot_win','$zongrenshu','$canyurenshu','$shenyurenshu','$complate','$complatetime','$q_uid')";

        $db->Query($sql);

        $tmpArr = null;
        //生成期数对应的兑奖记录码，最后100条内随机生成一条至机器人购买队列
        for ($j=0; $j < $totalCopies; $j++) { 
            $tmpArr[$j] = $j;
        }

        for($n = 0; $n < $totalCopies; $n++){
            $randKey = array_rand($tmpArr,1);
            if($n == 0 && $robot_buy_ratio){
                //预留一个给机器人购买
                $redis->lpush('ROBOT:'.$term_num,10000001 + $randKey);
            }else{
                $redis->lpush('GOODS:'.$term_num,10000001 + $randKey);
            }

            unset($tmpArr[$randKey]);
        }
    }
}