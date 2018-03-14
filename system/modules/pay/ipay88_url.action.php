<?php 

defined('G_IN_SYSTEM')or exit('No permission resources.');
ini_set("display_errors","OFF");
class ipay88_url extends SystemAction {
	public function __construct(){			
		$this->db=System::load_sys_class('model');		
	} 	
	
	public function qiantai(){	
		$out_trade_no = $_POST['RefNo'];	//商户订单号
		$trade_no = $_POST['TransId'];			//支付宝交易号
		$trade_status = $_POST['Status'];	//交易状态
		//开始处理及时到账和担保交易订单
		if($trade_status == '1') {
			$this->db->Autocommit_start();
			$dingdaninfo = $this->db->GetOne("select * from `@#_member_addmoney_record` where `code` = '$out_trade_no' and `status` = '未付款' for update");
			if(!$dingdaninfo){	
				if(_is_mobile()){
					_messagemobile("支付失败",WEB_PATH . "/mobile/mobile/");	
				}else{
					_message("支付失败");	
				}
				return;
			}	
			$c_money = intval($dingdaninfo['money']);			
			$uid = $dingdaninfo['uid'];
			$time = time();			
			$up_q1 = $this->db->Query("UPDATE `@#_member_addmoney_record` SET `pay_type` = 'molpay', `status` = '已付款' where `id` = '$dingdaninfo[id]' and `code` = '$dingdaninfo[code]'");
			$up_q2 = $this->db->Query("UPDATE `@#_member` SET `money` = `money` + $c_money,`totalrecharge` = `totalrecharge` + $c_money where (`uid` = '$uid')");				
			$up_q3 = $this->db->Query("INSERT INTO `@#_member_account` (`uid`, `type`, `pay`, `content`, `money`, `time`) VALUES ('$uid', '1', '账户', '充值', '$c_money', '$time')");
				
			if($up_q1 && $up_q2 && $up_q3){
				$this->db->Autocommit_commit();			
			}else{
				$this->db->Autocommit_rollback();
				if(_is_mobile()){
					_messagemobile("支付失败",WEB_PATH . "/mobile/mobile/");	
				}else{
					_message("支付失败");	
				}
				return;
			}			
			if(empty($dingdaninfo['scookies'])){					
				if(_is_mobile()){
					_messagemobile("支付失败",WEB_PATH . "/mobile/mobile/");	
				}else{
					_message("支付失败");	
				}
				return;		
			}			
			$scookies = unserialize($dingdaninfo['scookies']);			
			$pay = System::load_app_class('pay','pay');			
			$pay->scookie = $scookies;	

			$ok = $pay->init($uid,$pay_type['pay_id'],'go_record');	//1Shop商品	
			if($ok != 'ok'){
				_setcookie('Cartlist',NULL);
				if(_is_mobile()){
					_messagemobile("支付失败",WEB_PATH . "/mobile/mobile/");	
				}else{
					_message("支付失败");	
				}
				return;
			}			
			$check = $pay->go_pay(1);
			if($check){
				$this->db->Query("UPDATE `@#_member_addmoney_record` SET `scookies` = '1' where `code` = '$out_trade_no' and `status` = '已付款'");
				_setcookie('Cartlist',NULL);
				
				if(_is_mobile()){
					_messagemobile("充值成功!",WEB_PATH . "/mobile/home/userbalance");	
				}else{
					_message("充值成功!",WEB_PATH."/member/home/userbalance");
				}			
			}
		}else{
			if(_is_mobile()){
				_messagemobile("支付失败",WEB_PATH . "/mobile/mobile/");	
			}else{
				_message("支付失败");	
			}
		}
/*
		$out_trade_no = $_POST['RefNo'];	//商户订单号
		$dingdaninfo = $this->db->GetOne("select * from `@#_member_addmoney_record` where `code` = '$out_trade_no'");
		if(!$dingdaninfo || $dingdaninfo['status'] == '未付款'){
			_message("支付失败");		
		}else{
			if(empty($dingdaninfo['scookies'])){
				_message("充值成功!",WEB_PATH."/member/home/userbalance");
			}else{
				if($dingdaninfo['scookies'] == '1'){
					_message("支付成功!",WEB_PATH."/member/cart/paysuccess");
				}else{
					_message("商品还未购买,请重新购买商品!",WEB_PATH."/member/cart/cartlist");
				}
					
			}
		}
*/
	}
	
	public function houtai(){	
		$out_trade_no = $_POST['RefNo'];	//商户订单号
		$trade_no = $_POST['TransId'];			//支付宝交易号
		$trade_status = $_POST['Status'];	//交易状态
		//开始处理及时到账和担保交易订单
		if($trade_status == '1') {
			
			$this->db->Autocommit_start();
			$dingdaninfo = $this->db->GetOne("select * from `@#_member_addmoney_record` where `code` = '$out_trade_no' and `status` = '未付款' for update");
			if(!$dingdaninfo){	
				header("location: ".WEB_PATH."/pay/ipay88_url/qiantai");
				exit;
			}	
			$c_money = intval($dingdaninfo['money']);			
			$uid = $dingdaninfo['uid'];
			$time = time();			
			$up_q1 = $this->db->Query("UPDATE `@#_member_addmoney_record` SET `pay_type` = 'molpay', `status` = '已付款' where `id` = '$dingdaninfo[id]' and `code` = '$dingdaninfo[code]'");
			$up_q2 = $this->db->Query("UPDATE `@#_member` SET `money` = `money` + $c_money,`totalrecharge` = `totalrecharge` + $c_money where (`uid` = '$uid')");				
			$up_q3 = $this->db->Query("INSERT INTO `@#_member_account` (`uid`, `type`, `pay`, `content`, `money`, `time`) VALUES ('$uid', '1', '账户', '充值', '$c_money', '$time')");
				
			if($up_q1 && $up_q2 && $up_q3){
				$this->db->Autocommit_commit();			
			}else{
				$this->db->Autocommit_rollback();
				header("location: ".WEB_PATH."/pay/ipay88_url/qiantai");
				exit;
			}			
			if(empty($dingdaninfo['scookies'])){					
				header("location: ".WEB_PATH."/pay/ipay88_url/qiantai");
				exit;		
			}			
			$scookies = unserialize($dingdaninfo['scookies']);			
			$pay = System::load_app_class('pay','pay');			
			$pay->scookie = $scookies;	

			$ok = $pay->init($uid,$pay_type['pay_id'],'go_record');	//1Shop商品	
			if($ok != 'ok'){
				_setcookie('Cartlist',NULL);
				header("location: ".WEB_PATH."/pay/ipay88_url/qiantai");
				exit;		
			}			
			$check = $pay->go_pay(1);
			if($check){
				$this->db->Query("UPDATE `@#_member_addmoney_record` SET `scookies` = '1' where `code` = '$out_trade_no' and `status` = '已付款'");
				_setcookie('Cartlist',NULL);			
			}

			header("location: ".WEB_PATH."/pay/ipay88_url/qiantai");
			exit;
		
		}
				

	}
	
}

?>