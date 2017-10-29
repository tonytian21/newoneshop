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

    $goodsInfo = $db->GetOne("select * from go_shoplist where gid=".$goods_id);

    if(!$goodsInfo)
        return;

    $zongrenshu = ceil($goodsInfo['money'] / $goodsInfo['yunjiage']);
            
    $codes_len = ceil($zongrenshu / 3000);

    System::load_app_fun("content","admin");
    $query_table = content_get_codes_table();
    $sid = $goods_id;
    $term_num = date('Ymd',time()).$goods_id.str_pad('1',strlen($goodsInfo['maxqishu']),'0',STR_PAD_LEFT);
    $canyurenshu = 0;
    $shenyurenshu = $zongrenshu;
    $time = time();
    $xsjx_time = $goodsInfo['g_xsjx_time'];
    
    $query_3 = "insert into go_shoplist_term (`sid`,`term_num`,`zongrenshu`,`canyurenshu`,`qishu`,`shenyurenshu`,`time`,`codes_table`,`xsjx_time`) values ('$sid','$term_num','$zongrenshu','$canyurenshu','1','$shenyurenshu','$time','$query_table','$xsjx_time')";

    $termid = $db->Query($query_3);

    $query_2 = content_get_go_codes($zongrenshu, 3000, $termid);
}