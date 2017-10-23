<?php
/**
* 	配置账号信息
*/

class WxPayConf_pub
{
	
	const APPID = 'wxd516af78f5861572';
	//受理商ID，身份标识
	const MCHID = '1260556801';
	//商户支付密钥Key。审核通过后，在微信发送的邮件中查看
	const KEY = 'woyoujunqwertyuiop11223344556677';
	//JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看
	const APPSECRET = 'c5d5bd0bcbdde51be67667d25f18f0a4';


	//=======【JSAPI路径设置】===================================
	//获取access_token过程中的跳转uri，通过跳转将code传入jsapi支付页面
	//const JS_API_CALL_URL = 'http://m.zyxztd.com/system/modules/pay/lib/wxpay_web.class.php';
	//=======【证书路径设置】=====================================
	//证书路径,注意应该填写绝对路径
	const SSLCERT_PATH ='system/modules/pay/lib/wxpay/cacert/apiclient_cert.pem';
	const SSLKEY_PATH = 'system/modules/pay/lib/wxpay/cacert/apiclient_key.pem';
	
	//=======【异步通知url设置】===================================
	//异步通知url，商户根据实际开发过程设定
	const NOTIFY_URL = "http://m.zyxztd.com/index.php/pay/wxpay_url/houtai/";

	//=======【curl超时设置】===================================
	//本例程通过curl使用HTTP POST方法，此处可修改其超时时间，默认为30秒
	const CURL_TIMEOUT = 30;
}
	
?>