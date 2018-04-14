<?php
defined('G_IN_SYSTEM') or exit('No permission resources.');
ini_set("display_errors", "OFF");

class payssion_url extends SystemAction
{

    public function __construct()
    {
        $this->db = System::load_sys_class('model');
    }

    public function qiantai()
    {
        $order_id = $_GET['order_id']; // 商户订单号
        $trade_no = $_GET['transaction_id']; // 支付宝交易号
        $sub_track_id = $_GET['sub_track_id']; // 支付宝交易号
        $trade_status = $_GET['state']; // 交易状态
        $dingdaninfo = $this->db->GetOne("select * from `@#_member_addmoney_record` where `code` = '$order_id'");
        if (! $dingdaninfo || $dingdaninfo['status'] == '未付款') {
            
            if (_is_mobile()) {
                _messagemobile("支付失败", ":js:");
            } else {
                _message("支付失败");
            }
        } else {
            if (empty($dingdaninfo['scookies'])) {
                
                if (_is_mobile()) {
                    _messagemobile("充值成功!", WEB_PATH . "/mobile/mobile/home/userbalance");
                } else {
                    _message("充值成功!", WEB_PATH . "/member/home/userbalance");
                }
            } else {
                if ($dingdaninfo['scookies'] == '1') {
                    if (_is_mobile()) {
                        _messagemobile("支付成功!", WEB_PATH . "/mobile/mobile/cart/paysuccess");
                    } else {
                        _message("支付成功!", WEB_PATH . "/member/cart/paysuccess");
                    }
                } else {
                    
                    if (_is_mobile()) {
                        _messagemobile("商品还未购买,请重新购买商品!", WEB_PATH . "/mobile/mobile/cart/cartlist");
                    } else {
                        _message("商品还未购买,请重新购买商品!", WEB_PATH . "/member/cart/cartlist");
                    }
                }
            }
        }
    }

    protected function log($data)
    {
        $stdout = fopen('php://stdout', 'w');
        if (is_array($data)) {
            fwrite($stdout, json_encode($data) . "\n"); // 为了打印出来的格式更加清晰，把所有数据都格式化成Json字符串
        } else {
            fwrite($stdout, $data . "\n");
        }
        
        fclose($stdout);
    }

    public function houtai()
    {
        $pm_id = $_POST['pm_id'];
        $pay_type = $this->db->GetOne("SELECT * from `@#_pay` where `pay_class` = 'payssion' and `pay_start` = '1'");
        $pay_type_key = unserialize($pay_type['pay_key']);
        $app_key = $pay_type_key['id']['val']; // 支付KEY
        $secret_key = $pay_type_key['key']['val']; // 支付商号ID
        /*
         * include G_SYSTEM."modules/pay/lib/payssion/payssion_client.class.php";
         * $payssion = new PayssionClient($app_key, $secret_key,$pay_type_key['is_livemode']['val']==1 ? true:false);
         *
         * $payssion->getDetails($params)
         */
        
        $pm_id = $_POST['pm_id'];
        $amount = $_POST['amount'];
        $currency = $_POST['currency'];
        $order_id = $_POST['order_id'];
        $state = $_POST['state'];
        
        $check_array = array(
            $app_key,
            $pm_id,
            $amount,
            $currency,
            $order_id,
            $state,
            $secret_key
        );
        
        $check_msg = implode('|', $check_array);
        $check_sig = md5($check_msg);
        $notify_sig = $_POST['notify_sig'];
       // $this->log($check_array);
        
        // 开始处理及时到账和担保交易订单
        if ($notify_sig == $check_sig) {
            //$this->log($state);
            switch ($state) {
                case 'completed':
                   // $this->log(2);
                    $this->db->Autocommit_start();
                    $dingdaninfo = $this->db->GetOne("select * from `@#_member_addmoney_record` where `code` = '$order_id' and `status` = '未付款' for update");
                    
                    $c_money = intval($dingdaninfo['money']);
                    $uid = $dingdaninfo['uid'];
                    $time = time();
                    $up_q1 = $this->db->Query("UPDATE `@#_member_addmoney_record` SET `pay_type` = 'payssion', `status` = '已付款' where `id` = '$dingdaninfo[id]' and `code` = '$dingdaninfo[code]'");
                    $up_q2 = $this->db->Query("UPDATE `@#_member` SET `money` = `money` + $c_money,`totalrecharge` = `totalrecharge` + $c_money where (`uid` = '$uid')");
                    $up_q3 = $this->db->Query("INSERT INTO `@#_member_account` (`uid`, `type`, `pay`, `content`, `money`, `time`) VALUES ('$uid', '1', '账户', '充值', '$c_money', '$time')");
                    
                    if ($up_q1 && $up_q2 && $up_q3) {
                        $this->db->Autocommit_commit();
                    } else {
                        $this->db->Autocommit_rollback();
                    }
                    if (empty($dingdaninfo['scookies'])) {
                        exit;
                    }
                    $scookies = unserialize($dingdaninfo['scookies']);
                    $pay = System::load_app_class('pay', 'pay');
                    $pay->scookie = $scookies;
                    $ok = $pay->init($uid, $pay_type['pay_id'], 'go_record'); // 1Shop商品
                    if ($ok != 'ok') {
                        _setcookie('Cartlist', NULL);
                    }
                    $check = $pay->go_pay(1);
                    if ($check) {
                        $this->db->Query("UPDATE `@#_member_addmoney_record` SET `scookies` = '1' where `code` = '$order_id' and `status` = '已付款'");
                        _setcookie('Cartlist', NULL);
                    }
                    break;
                case 'paid_partial':
                    // this is rare case if it goes here
                    break;
                case 'pending':
                    break;
                case 'failed':
                    break;
                case 'expired':
                    break;
                case 'error':
                    break;
                default:
                    // please refer to the following URL for more states:
                    // https://payssion.com/en/docs/#api-reference-payment-notifications
                    break;
            }
            exit();
        }
    }
}

?>