<?php
defined('G_IN_SYSTEM')or exit("no");
include dirname(__FILE__).'/lib/Facebook/autoload.php';
class facebooklogin extends SystemAction {
	private $db;
	protected $userinfo=NULL;
	private $conf;
	private $openid;
	private $open_name;
	private $open_cover;
	public function __construct(){
		$uid=intval(_encrypt(_getcookie("uid"),'DECODE'));
		$this->userinfo=$this->DB()->GetOne("SELECT * from `@#_member` where `uid` = '$uid'");
		$this->conf = System::load_app_config("connect");
	}

	public function init(){
		$this->facebook_login();	 
	}
	//facebook登录
	public function facebook_login(){
		 $fb = new Facebook\Facebook([
		  'app_id' => $this->conf['facebook']['id'],
		  'app_secret' => $this->conf['facebook']['key'],
		  'default_graph_version' => 'v2.10',
		  ]);

		$helper = $fb->getRedirectLoginHelper();

		$permissions = ['email','public_profile']; // Optional permissions
		$loginUrl = $helper->getLoginUrl(WEB_PATH."/api/facebooklogin/callback", $permissions);

		header("Location:$loginUrl");
	}

	//qq回调
	/*
	id
	cover
	name
	first_name
	last_name
	age_range
	link
	gender
	locale
	picture
	timezone
	updated_time
	verified
	 */
	public function callback(){	
		$fb = new Facebook\Facebook([
		  'app_id' => $this->conf['facebook']['id'],
		  'app_secret' => $this->conf['facebook']['key'],
		  'default_graph_version' => 'v2.10',
		  ]);

		$helper = $fb->getRedirectLoginHelper();

		try {
		   $accessToken = $helper->getAccessToken();
		} catch(Exception $e) {} 

		if(!$accessToken){
			header("Location:".G_WEB_PATH);exit;
		}

		try {
		  $response = $fb->get('/me?fields=id,name,cover', $accessToken->getValue());
		} catch(Exception $e){}
		
		$user = $response->getGraphUser();
		$this->open_name = $user['name'];
		$this->openid = $user['id'];
		$this->open_cover = $user['cover'];
		$faceopenid = $user['id'];

		$this->db = System::load_sys_class("model");
		
		$go_user_info = $this->db->GetOne("select * from `@#_member_band` where `b_code` = '$faceopenid' and `b_type` = 'facebook' LIMIT 1");
		if(!$go_user_info){
			$this->facebook_add_member();
		}else{
			$uid = intval($go_user_info['b_uid']);
			$this->facebook_set_member($uid,'login_bind');
		}

	}

	private function facebook_add_member(){
		$member_db=System::load_app_class('base','member');

		$memberone=$member_db->get_user_info();

		if($memberone){

			$go_user_id = $memberone['uid'];

			$openid    = $this->openid;

			$go_user_time = time();

			$this->db->Query("INSERT INTO `@#_member_band` (`b_uid`, `b_type`, `b_code`, `b_time`) VALUES ('$go_user_id', 'facebook', '$openid', '$go_user_time')");
			if(_is_mobile()){
				_messagemobile("facebook账号绑定成功",WEB_PATH."/mobile/home",3);
				return;
			}else{
				return;
			}
			

		}

		$go_user_time = time();

		$go_user_info=array('nickname'=>$this->open_name);

		$go_y_user = $this->db->GetOne("select * from `@#_member` where `username` = '$go_user_info[nickname]' LIMIT 1");

		if($go_y_user)$go_user_info['nickname'] .= rand(0,9);

		$go_user_name = $go_user_info['nickname'];

		$go_user_himg  = $this->open_cover;

		$go_user_img  = $this->open_cover;

		$go_user_pass = md5('123456');

		$openid    = $this->openid;

		$this->db->Autocommit_start();

		$q1 = $this->db->Query("INSERT INTO `@#_member` (`username`,`password`,`img`,`headimg`,`time`) VALUES ('$go_user_name','$go_user_pass','$go_user_img','$go_user_himg','$go_user_time')");

		$go_user_id = $this->db->insert_id();

		$q2 = $this->db->Query("INSERT INTO `@#_member_band` (`b_uid`, `b_type`, `b_code`, `b_time`) VALUES ('$go_user_id', 'facebook', '$openid', '$go_user_time')");

		if($q1 && $q2){

			$this->db->Autocommit_commit();

			$this->qq_set_member($go_user_id,'add');

		}else{

			$this->db->Autocommit_rollback();
			_message("登录失败!",G_WEB_PATH);
		}
	}



	private function facebook_set_member($uid=null,$type='bind_add_login'){	

		$member_db=System::load_app_class('base','member');

		$memberone=$member_db->get_user_info();

		if($memberone){
			if(_is_mobile()){
				_messagemobile("该facebook号已经被其他用户所绑定！操作失败",WEB_PATH."/mobile/home",3);
			}else{
				_message("该facebook号已经被其他用户所绑定！",WEB_PATH.'/login');
			}		
		}
		$member = $this->db->GetOne("select uid,password,mobile,email from `@#_member` where `uid` = '$uid' LIMIT 1");	

		$_COOKIE['uid'] = null;

		$_COOKIE['ushell'] = null;

		$_COOKIE['UID'] = null;

		$_COOKIE['USHELL'] = null;	

		$s1 = _setcookie("uid",_encrypt($member['uid']),60*60*24*7);			

		$s2 = _setcookie("ushell",_encrypt(md5($member['uid'].$member['password'].$member['mobile'].$member['email'])),60*60*24*7);

		if($s1 && $s2){
			if(_is_mobile()){
				header("location:".WEB_PATH.'/mobile/home');
			}else{
				header("location:".WEB_PATH.'/member/home');
			}
		}else{

			_message("登录失败请检查cookie!",G_WEB_PATH);

		}		

	}

	

	public function set_config(){

		System::load_app_class("admin",G_ADMIN_DIR,'no');

		$objadmin = new admin();		

		$config = System::load_app_config("connect");

		if(isset($_POST['dosubmit'])){

			$qq_off = intval($_POST['type']);

			$qq_id = $_POST['id'];

			$qq_key = $_POST['key'];

			$config['facebook'] = array("off"=>$qq_off,"id"=>$qq_id,"key"=>$qq_key);

			$html = var_export($config,true);

			$html = "<?php return ".$html."; ?>";

			$path =  dirname(__FILE__).'/lib/connect.ini.php';

			if(!is_writable($path)) _message('Please chmod  connect.ini.php  to 0777 !');

			$ok=file_put_contents($path,$html);

			_message("配置更新成功!");

		}	

	

		$config = $config['facebook'];		

		include $this->tpl(ROUTE_M,'facebook_set_config');

	}

	

}



?>