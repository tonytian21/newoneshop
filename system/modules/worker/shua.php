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
$task->count = 1;
$task->onWorkerStart = function($task)
{
    // 定时器自动购买
    Timer::add(1, function ()use($task){
        sleep(rand(0, 20));
        AutoBuy();
    });
};

// 运行
Worker::runAll();

/**
 * 机器人自动购买程序
 */
function AutoBuy(){
    $db = System::load_sys_class('model');

    //获取当前正在进行的商品
    $shopInfoList = getshopinfo();
    
    if($shopInfoList){
        foreach ($shopInfoList as $key => $shopinfo) {
            //获取当前商品,机器人已购买数量
            $buycount = $db->GetOne("select sum(ifnull(gonumber,0)) as autobuycount from go_member_go_record A
                INNER join go_member B on A.uid=B.uid 
                where B.auto_user='1' and A.shopid='".$shopinfo['id']."'");
            //判断当前商品设置的机器人最大购买比例
            if($buycount){
                $now_buy_ratio = $buycount['autobuycount'] / $shopinfo['zongrenshu'] * 100;
                if(intval($shopinfo['robot_buy_ratio']) > 0 && $now_buy_ratio >= intval($shopinfo['robot_buy_ratio']))
                {
                    continue;
                }
            }
            //随机获取机器人
            $member = $db->GetOne("select * from go_member where auto_user='1' order by rand() limit 1");

            if(!$member)
                continue;

            //机器人完成商品购买
            buyshop($shopinfo,$member);
        }
    }
}

/*
 * 获取商品id
 * 返回商品id一维数组
 */
function getshopinfo()
{
    $db = System::load_sys_class('model');
    
    $shopInfoList = $db->GetList("select * from `@#_shoplist` A inner join `@#_shoplist_term` B on A.gid=B.sid where `q_uid` is null and `canyurenshu` < `zongrenshu` ORDER BY `id`");

    return $shopInfoList;
}

// 购买商品
function buyshop($shopinfo, $member)
{
    $db = System::load_sys_class('model');
    $pay = System::load_app_class("pay", "pay");
    // 购买商品数量
    $shopnum = rand(1, 50);
    $user_id = $member['uid'];
    $shopid = $shopinfo['id'];
    $time = time();
    // 判断商品是否购买完
    if ($shopinfo['zongrenshu'] > $shopinfo['canyurenshu']) {
        if ((intval($shopinfo['yunjiage']) * $shopnum) > $member['money']) { // 商品价格大于用户金钱---给用户充值
            $m = intval($shopinfo['yunjiage']) * $shopnum + 5;
            $db->Query(" UPDATE `@#_member` SET  `money` = '$m' WHERE `uid` = '$user_id' ");
        }
        // 设置IP
        $_SERVER['HTTP_CLIENT_IP'] = randip($member);
        // 查询剩余可购买人数
        $shengyu = $shopinfo['zongrenshu'] - $shopinfo['canyurenshu'];
        if ($shopnum >= $shengyu) {
            $shopnum = $shengyu;
        }
        // 调用购买商品接口
        $rs = $pay->pay_user_go_shop($user_id, $shopid, $shopnum);
    }
}

// 随机生成IP 中国区
function randip($member)
{
    if ($member['user_ip']) {
        $ip = explode(',', $member['user_ip']);
        return $ip[1];
    } else {
        $ip_1 = - 1;
        $ip_2 = - 1;
        $ip_3 = rand(0, 255);
        $ip_4 = rand(0, 255);
        $ipall = array(
            array(
                array(
                    58,
                    26
                ),
                array(
                    58,
                    27
                )
            ),
            array(
                array(
                    58,
                    71
                ),
                array(
                    58,
                    139
                )
            ),
            array(
                array(
                    60,
                    48
                ),
                array(
                    60,
                    52
                )
            ),
            array(
                array(
                    60,
                    54
                ),
                array(
                    61,
                    4
                )
            ),
            array(
                array(
                    61,
                    6
                ),
                array(
                    61,
                    16
                )
            ),
            array(
                array(
                    110,
                    4
                ),
                array(
                    110,
                    74
                )
            ),
            array(
                array(
                    110,
                    159
                ),
                array(
                    111,
                    67
                )
            ),
            array(
                array(
                    111,
                    90
                ),
                array(
                    112,
                    137
                )
            ),
            array(
                array(
                    113,
                    21
                ),
                array(
                    113,
                    23
                )
            ),
            array(
                array(
                    113,
                    210
                ),
                array(
                    113,
                    212
                )
            ),
            array(
                array(
                    114,
                    133
                ),
                array(
                    115,
                    132
                )
            ),
            array(
                array(
                    115,
                    146
                ),
                array(
                    115,
                    164
                )
            ),
            array(
                array(
                    116,
                    0
                ),
                array(
                    116,
                    197
                )
            ),
            array(
                array(
                    116,
                    206
                ),
                array(
                    118,
                    100
                )
            ),
            array(
                array(
                    118,
                    107
                ),
                array(
                    119,
                    40
                )
            ),
            array(
                array(
                    119,
                    110
                ),
                array(
                    119,
                    161
                )
            ),
            array(
                array(
                    120,
                    50
                ),
                array(
                    120,
                    138
                )
            ),
            array(
                array(
                    120,
                    139
                ),
                array(
                    120,
                    140
                )
            )
        );
        $ip_p = rand(0, count($ipall) - 1); // 随机生成需要IP段
        $ip_1 = $ipall[$ip_p][0][0];
        if ($ipall[$ip_p][0][1] == $ipall[$ip_p][1][1]) {
            $ip_2 = $ipall[$ip_p][0][1];
        } else {
            $ip_2 = rand(intval($ipall[$ip_p][0][1]), intval($ipall[$ip_p][1][1]));
        }
        return $ip_1 . '.' . $ip_2 . '.' . $ip_3 . '.' . $ip_4;
    }
}