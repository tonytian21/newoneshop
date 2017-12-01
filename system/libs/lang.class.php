<?php
class lang {
	static public function get_lang($key, ...$param){
		if(isset($_COOKIE['ONESHOP_LANG']) && $_COOKIE['ONESHOP_LANG'] == 'en-us'){
			$lang = include(dirname(dirname(dirname(__FILE__))).'/system/lang/en-us.php');
		}else{
			$lang = include(dirname(dirname(dirname(__FILE__))).'/system/lang/zh-cn.php');
		}
		
		if(isset($lang[$key])){
			return vsprintf($lang[$key], $param);
		}

		return $key;
	}
}