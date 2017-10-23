<?php 


defined('G_IN_SYSTEM')or exit('no');
System::load_app_class('admin',G_ADMIN_DIR,'no');
System::load_app_fun('global',G_ADMIN_DIR);

class index extends admin {
	private $db;
	public function __construct(){	
		parent::__construct();		
		$this->db=System::load_app_model('admin_model');		
	}
	
	public function init(){
		$info=$this->AdminInfo;
		include $this->tpl(ROUTE_M,'admin.index');
	}
	public function Tdefault(){
		$info=$this->AdminInfo;
		$SysInfo=GetSysInfo();		
		$SysInfo['MysqlVersion']=$this->db->GetVersion();		
		$versions = System::load_sys_config("version");
		include $this->tpl(ROUTE_M,'admin.default');
	}

	public function map(){
	    $info=$this->AdminInfo;
	    include $this->tpl(ROUTE_M,'admin.map');
	}
	
}
?>