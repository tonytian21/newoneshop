<?php 
defined('G_IN_SYSTEM')or exit('No permission resources.');
System::load_app_fun('user','go');
System::load_sys_fun('user');
class contactus extends SystemAction{
	public function __construct() {	
			
	}	
	public function init(){
		$title=lang::get_lang("关于我们");
		include templates("contactus","contactus");	
	}

}

?>