<?php
class molpay {
	
	private $config;
	private $url;
	//主入口
	public function config($config=null){
		$this->config = $config;
	}

	public function send_pay(){
		# Gateway Specific Variables
		$merchantid = $this->config['id'];
		$verifykey = $this->config['key'];
		$description = $this->config['shouname'];
		
		# Invoice Variables
		$invoiceid = $this->config['code'];
		$amount = $this->config['money']; # Format: ##.##
	    $currency = $this->config['pay_key']['currency']['val']; # Currency Code

		# Client Variables

		$bill_name = $this->config['member']['username'];
		
		$email = $this->config['member']['email'];
		$country = $this->config['member']['country'];
		$bill_desc = $description;
		$returnurl = $this->config['NotifyUrl'];
		$phone = $this->config['member']['mobile'];
		
		$vkey = md5($amount.$merchantid.$invoiceid.$verifykey);

		# System Variables	
		# Enter your code submit to the gateway...

		$code = '<form action="https://www.onlinepayment.com.my/NBepay/pay/'.$merchantid.'/" id="form1" name="form1" method="post" />
			 <input type=hidden name=instID value="'.$merchantid.'">
			 <input type=hidden name=orderid value="'.$invoiceid.'">
			 <input type=hidden name=amount value="'.$amount.'">
			 <input type=hidden name=cur value="'.$currency.'">
			 <input type=hidden name=bill_desc value="'.$bill_desc.'">
			 <input type=hidden name=bill_email value="'.$email.'">
			 <input type=hidden name=bill_name value="'.$bill_name.'">
			 <input type=hidden name=country value="'.$country.'">
			 <input type=hidden name=bill_mobile value="'.$phone.'">
			 <input type=hidden name=returnurl value="'.$returnurl.'">
			 <input type=hidden name=vcode value="'.$vkey.'">
			 </form><script type="text/javascript">function load_submit(){document.form1.submit()}load_submit();</script>';
		echo $code; 
	}
}