<?php
error_reporting(E_ALL);
require_once 'config.php';

$template_dir = $_SERVER['DOCUMENT_ROOT'].'/template/';

$path = $_SERVER['REQUEST_URI'];
$path = explode("/", $path);
$admin = false;

if((isset($path[1]))) {
	 $pagename = $path[1];
	switch($path[1]) {
		case 'work':
			$content = getContent('work.tpl');
			break;
        case 'contact':
			$content = getContent('contact.tpl');
            break;
		case 'admin':
			$admin = true;
            break;
		default:
			$content = getContent('main.tpl');
			break;
	}
}
if(!$admin){
	require_once $template_dir.'index.tpl';
}else{
	require_once $template_dir.'index-admin.tpl';
}
function getContent ($path) {
	ob_start();
	require $_SERVER['DOCUMENT_ROOT'].'/template/'.$path;
	$content = ob_get_contents();
	ob_end_clean();
	return $content;
}