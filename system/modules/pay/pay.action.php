<?php
defined('G_IN_SYSTEM')or exit('No permission resources.');
System::load_app_class('admin',G_ADMIN_DIR,'no');
System::load_app_fun('global',G_ADMIN_DIR);
class pay extends admin {
	public function __construct(){
		parent::__construct();
		$this->db=System::load_sys_class('model');
	}

	//支付列表
	public function pay_list(){

		$paylist = $this->db->GetList("SELECT * FROM `@#_pay` where 1");
		include $this->tpl(ROUTE_M,'paylist');
	}


	public function pay_bank(){
		if(isset($_POST['dosubmit'])){
			$bank_type = htmlspecialchars($_POST['bank_type']);
			$q_ok = $this->db->Query("UPDATE `@#_caches` SET `value` = '$bank_type' where `key` = 'pay_bank_type'");
			if($q_ok){
				_message("操作成功!");
			}else{
				_message("操作失败!");
			}
		}

		$bank = $this->db->GetOne("select * from `@#_caches` where `key` = 'pay_bank_type'");
		if(!$bank)_message("查询失败");
		include $this->tpl(ROUTE_M,'paybank');
	}

	public function pay_set(){
	    /*
	  $arr=array(
	        "CompanyName" =>array("name"=>"公司名:","val"=>"IFNT Global Sdn Bhd"),
	        "WebMerchantCode" =>array("name"=>"Web Merchant Code:","val"=>"M13802"),
	        "WebMerchantKey" =>array("name"=>"Web Merchant Key:","val"=>"1U2CPe1aPr"),
	        "AppMerchantCode" =>array("name"=>"App Merchant Code:","val"=>"M13802_S0001"),
	        "AppMerchantKey" =>array("name"=>"App Merchant Key:","val"=>"1f1L6ihZCq"),
	        "currency" =>array("name"=>"币种:","val"=>"MYR"),
	    );
	    
	  $pay_key=serialize($arr);
	  $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'ipay88',`pay_mobile`='1',`pay_thumb` = 'photo/ipay88_logo_wide.png',`pay_type` = '1',`pay_class` = 'ipay88',`pay_des` = 'ipay88',`pay_start` = '1',`pay_key` = '$pay_key'");
	  
	  $arr=array(
	        "id" =>array("name"=>"API Key:","val"=>"f0879846fc7b43e6"),
	        "key" =>array("name"=>"Secret Key:","val"=>"c9f63a6feb8b3133661b89d18e82f4de"),
	        "currency" =>array("name"=>"币种:","val"=>"MYR"),
	        "pm" =>array("name"=>"支付平台:","val"=>"alipay_cn"),
	        "is_livemode"=>array("name"=>"是否上线（上线1,沙箱0）:","val"=>"1")
	    );
	    $arr["pm"]["val"]="fpx_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Myclear FPX',`pay_mobile`='1',`pay_thumb` = 'photo/1-myclear FPX.jpg',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Myclear FPX',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="hlb_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Hong Leong',`pay_mobile`='1',`pay_thumb` = 'photo/2-HongLeongBank.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Hong Leong',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="maybank2u_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Maybank2u',`pay_mobile`='1',`pay_thumb` = 'photo/3-maybank2U.jpg',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Maybank2u',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="cimb_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'CIMB Clicks',`pay_mobile`='1',`pay_thumb` = 'photo/4-CimbClicks.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_CIMB Clicks',`pay_start` = '1',`pay_key` = '$pay_key'");
	    $arr["pm"]["val"]="affinepg_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Affin Bank',`pay_mobile`='1',`pay_thumb` = 'photo/5-Affin Bank.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Affin Bank',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="amb_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Am online',`pay_mobile`='1',`pay_thumb` = 'photo/6-Ambank.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Am online',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="rhb_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'RHB Now',`pay_mobile`='1',`pay_thumb` = 'photo/7-RHB bank.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_RHB Now',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="molwallet_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'MOLWallet',`pay_mobile`='1',`pay_thumb` = 'photo/8-molwallet.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_MOLWallet',`pay_start` = '1',`pay_key` = '$pay_key'");
	    $arr["pm"]["val"]="webcash_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Webcash',`pay_mobile`='1',`pay_thumb` = 'photo/9-webcash.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Webcash',`pay_start` = '1',`pay_key` = '$pay_key'");
	    $arr["pm"]["val"]="7eleven_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = '7-eleven',`pay_mobile`='1',`pay_thumb` = 'photo/10-7-eleven.png',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_7-eleven',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="esapay_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'Esapay',`pay_mobile`='1',`pay_thumb` = 'photo/11-Esapay.jpg',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_Esapay',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	    $arr["pm"]["val"]="epay_my";
	    $pay_key=serialize($arr);
	    $this->db->Query("INSERT INTO  `@#_pay` SET `pay_name` = 'epay',`pay_mobile`='1',`pay_thumb` = 'photo/12-Epay.jpg',`pay_type` = '1',`pay_class` = 'payssion',`pay_des` = 'Payssion_epay',`pay_start` = '1',`pay_key` = '$pay_key'");
	    
	   
	    exit;
	    */
	    
		$payid = intval($this->segment(4));

		$pay = $this->db->GetOne("SELECT * FROM `@#_pay` where `pay_id` = '$payid'");
		if(!$pay)_message("参数错误");
		if($pay['pay_class'] == 'yeepay'){
			if(!file_exists(G_SYSTEM.'modules/'.ROUTE_M.'/lib/yeepay.class.php')){
			    
				_message("开通易宝支付请联系官网");
			}
		}
		
		$pay['pay_key']  = @unserialize($pay['pay_key']);

		if(!is_array($pay['pay_key'])){
			$pay['pay_key'] = array("id"=>array("name"=>"商户号","val"=>""),"key"=>array("name"=>"密匙","val"=>""));
		}

		if(isset($_POST['dosubmit'])){
			$name = htmlspecialchars($_POST['pay_name']);
			$thumb = htmlspecialchars($_POST['pay_thumb']);
			$type = intval($_POST['pay_type']);
			$des = htmlspecialchars($_POST['pay_des']);
			$start = intval($_POST['pay_start']);

			$pay_key = $_POST['pay_key'];
			foreach($pay_key as $key=>$val){
				$pay_key[$key]=array("name"=>$pay['pay_key'][$key]['name'],"val"=>$pay_key[$key]);
			}
// 			$pay_key["is_livemode"]=array("name"=>"是否上线（上线1,沙箱0）:","val"=>"0");
			
			$pay_key = serialize($pay_key);

			$this->db->Query("UPDATE `@#_pay` SET `pay_name` = '$name',`pay_thumb` = '$thumb',`pay_type` = '$type',`pay_des` = '$des',`pay_start` = '$start',`pay_key` = '$pay_key' where `pay_id` = '$payid'");
			_message("操作成功",WEB_PATH.'/pay/pay/pay_list');
		}



		include $this->tpl(ROUTE_M,'payset');
	}

}
?>