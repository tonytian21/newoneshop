<?php
class lang {
	static $lang;
	static public function init($_lang){
		self::$lang = $_lang;
	}
	static public function get_lang($key, ...$param){
		if(isset(self::$lang[$key])){
			return vsprintf(self::$lang[$key], $param);
		}

		return $key;
	}
}