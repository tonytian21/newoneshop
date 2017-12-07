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

	static public function get_image($imagePath){
		$tmpImagePath = trim(str_replace(G_UPLOAD_PATH,'',$imagePath),'/');
		
		if($tmpImagePath && file_exists(G_UPLOAD.$tmpImagePath)){
			return $imagePath;
		}
		return G_TEMPLATES_STYLE.'/images/goods.jpg';
	}

	static public function get_lang_url(){
		$url = $_SERVER["QUERY_STRING"];
		$url = str_replace('index.php', '', $url);
		$url = str_replace('zh-cn', '', $url);
		$url = str_replace('en-us', '', $url);
		$url = str_replace('//', '/', $url);
		return trim($url,'/');
	}
}