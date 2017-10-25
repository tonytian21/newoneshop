<?php
global $_cfg;
include G_APP_PATH . $system_path . DIRECTORY_SEPARATOR.'config/global.inc.php';
header ( 'Content-type: text/html; charset=' . G_CHARSET );
unset ( $templates );
if (System::load_sys_config ( 'system', 'gzip' ) && function_exists ( 'ob_gzhandler' )) {
	ob_start ( 'ob_gzhandler' );
} else {
	ob_start ();
}
?>
