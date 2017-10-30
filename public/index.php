<?php

/**
 *      [2yyg!] (C)2010-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: index.php  2013-06-30 05:34:47Z wangguo $
 */
/*
 * ---------------------------------------------------------------
 * SYSTEM BAN BEN TYPE
 * ---------------------------------------------------------------
 */

/*
 * ---------------------------------------------------------------
 * SYSTEM FOLDER NAME
 * ---------------------------------------------------------------
 */
$system_path = 'system';

/*
 * ---------------------------------------------------------------
 * STATICS FOLDER NAME
 * ---------------------------------------------------------------
 */
$statics_path = 'statics';
// 处理微信分享链接
if (! empty ( $_SERVER ["QUERY_STRING"] )) {
	$temp = explode ( "rom", $_SERVER ["QUERY_STRING"] );
	$_SERVER ["QUERY_STRING"] = str_replace ( "?f", "", $temp [0] );
	$_SERVER ["QUERY_STRING"] = str_replace ( "&f", "", $_SERVER ["QUERY_STRING"] );
	if ($_SERVER ["QUERY_STRING"] == "f") {
		$_SERVER ["QUERY_STRING"] = "/mobile/mobile/";
	}
}
/*
 * ---------------------------------------------------------------
 * APP START PATH
 * ---------------------------------------------------------------
 */
define ( 'G_WEB_DIR_PATH', dirname ( __FILE__ ) . DIRECTORY_SEPARATOR );
define ( 'G_APP_PATH', G_WEB_DIR_PATH.'..'.DIRECTORY_SEPARATOR );

/*
 * --------------------------------------------------------------
 * LOAD THE BOOTSTRAP FILE
 * --------------------------------------------------------------
 */
include G_APP_PATH . $system_path . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'global.php';

require_once(dirname(dirname(__FILE__)).'/system/libs/predis.class.php');
/*
 * --------------------------------------------------------------
 * APP START
 * --------------------------------------------------------------
 */
System::CreateApp ();

?>
