<?php
class ipay88 {
	
	private $config;
	private $url;
	//主入口
	public function config($config=null){
		$this->config = $config;
	}

	public function send_pay(){
		# Gateway Specific Variables
		$payTypeData = $this->config['pay_type_data'];

		$merchantid = $this->config['id'];
		$verifykey = $this->config['key'];
		$description = $this->config['shouname'];

		foreach ($payTypeData as $value) {
			if($value['name'] == 'Merchant Code'){
				$merchantid = $value['val'];
			}

			if($value['name'] == 'Merchant Key'){
				$verifykey = $value['val'];
			}
		}
		
		# Invoice Variables
		$invoiceid = $this->config['code'];
		$amount = $this->config['money']; # Format: ##.##
	    $currency = 'MYR';//$this->config['pay_key']['currency']['val']; # Currency Code

		# Client Variables

		$bill_name = $this->config['member']['username'];
		
		$email = $this->config['member']['email'];
		$country = $this->config['member']['country'];
		$bill_desc = $description;
		$returnurl = $this->config['ReturnUrl'];
		$NotifyUrl = $this->config['NotifyUrl'];
		
		$phone = $this->config['member']['mobile'];
		
		$vkey = hash('sha256', $verifykey.$merchantid.$invoiceid.str_replace(".", "", str_replace(",", "", $amount)).$currency);
		# System Variables	
		# Enter your code submit to the gateway...

		$code = '<form action="https://www.mobile88.com/ePayment/entry.asp" id="form1" name="form1" method="post" />
			 <input type=hidden name="MerchantCode" value="'.$merchantid.'">
			 <input type=hidden name="PaymentId" value="">
			 <input type=hidden name="RefNo" value="'.$invoiceid.'">
			 <input type=hidden name="Amount" value="'.$amount.'">
			 <input type=hidden name="Currency" value="'.$currency.'">
			 <input type=hidden name="ProdDesc" value="'.$bill_desc.'">
			 <input type=hidden name="UserEmail" value="'.$email.'">
			 <input type=hidden name="UserName" value="'.$bill_name.'">
			 <input type=hidden name="Remark" value="">
			 <input type=hidden name="Lang" value="UTF-8">
			 <input type=hidden name="SignatureType" value="SHA256">
			 <input type=hidden name="Signature" value="'.$vkey.'">
			 <input type=hidden name="ResponseURL" value="'.$returnurl.'">
			 <input type=hidden name="BackendURL" value="'.$NotifyUrl.'">
			 </form><script type="text/javascript">function load_submit(){document.form1.submit()}load_submit();</script>';
		echo $code; 
	}
}