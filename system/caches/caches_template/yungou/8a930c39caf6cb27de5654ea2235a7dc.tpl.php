<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no, maximum-scale=1.0"/>
    <title>个人资料修改 触屏版</title>
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/comm.css?v=130715" rel="stylesheet" type="text/css" />
    <link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/password.css" rel="stylesheet" type="text/css" />
    <script src="<?php echo G_TEMPLATES_JS; ?>/mobile/jquery190.js" language="javascript" type="text/javascript"></script>
</head>
<body style="background-color: #f4f4f4;">
<div class="h5-1yyg-v11"> 
<!-- 栏目页面顶部 -->
<!-- 内页顶部 -->

    <header class="header" style="position: fixed;width: 100%;z-index: 99999999;">

    <h1 style="width: 100%;text-align: center;float: none;top: 0px;left: 0px;font-size: 25px;" class="fl">
        <span style="display: block;height: 49px;line-height: 49px;">
            <a style="font-size: 20px;line-height: 49px;" href="<?php echo WEB_PATH; ?>/mobile/mobile">
               资料修改
            </a>
        </span>

        <!--<img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo Getlogo(); ?>"/>
        -->
        <!--<img src="<?php echo G_TEMPLATES_IMAGE; ?>/sjlogo.png"/>
        -->
    </h1>

    <a id="fanhui" class="cefenlei" onclick="history.go(-1)" href="javascript:;">
        
        <img width="30" height="30" src="<?php echo G_TEMPLATES_IMAGE; ?>/mobile/fanhui.png">
    </a>

    <div class="fr head-r" style="position: absolute;right: 6px;top: 10px;">

        <!--<a href="<?php echo WEB_PATH; ?>/mobile/user/login" class="z-Member"></a>
    -->
    <a href="<?php echo WEB_PATH; ?>/mobile/mobile" class="z-shop" style="background-position: 2px -73px;"></a>

</div>

</header>
<div class="main-content clearfix">

<section style="padding-top: 55px;">
<div class="registerCon">
<ul class="form">
<li>
<input name="username" type="text" placeholder="请输入昵称" value="" style="padding-left: 50px;">
<span style="border: none;height: 34px;width: 50px;background-position: 0 -25px;position: absolute;top: 12px;left: 5px;">昵称：</span>
</li>
<li>
<input name="qianming" type="text" placeholder="请输入签名" value="" style="padding-left: 50px;">
<span style="border: none;height: 34px;width: 50px;background-position: 0 -25px;position: absolute;top: 12px;left: 5px;">签名：</span>
</li>
<li>
    <p>提示：(请在微信里面进行绑定，如在微信端外会报错哦！)</p>
</li>


<a href="javascript:;" id="btnSave" class="nextBtn orgBtn">保存</a>
</li>
</ul>
</div>
</section>
<script>
$(function(){
var b = function() {
var submiting = false;
var $username = $('input[name=username]');
var $qianming = $('input[name=qianming]');
$('#btnSave').click(function(){
if (submiting) {
return false;
}
var post = {
username : $username.val(),
qianming : $qianming.val()
};
if ( post.username == '' ) {
$.PageDialog.fail("昵称不能为空哦");
return false;
}
if ( post.qianming == '' ) {
$.PageDialog.fail("签名不能为空哦");
return false;
}
var the = $(this).text('正在提交');
submiting = true;
$.post("<?php echo WEB_PATH; ?>/mobile/user/profilechange",post,function(s){
if (s==1) {
$.PageDialog.ok('保存成功！', function(){
window.location.href="<?php echo WEB_PATH; ?>/mobile/home";
});
} else {
submiting = false;
the.text('保存');
$.PageDialog.fail(s);
}
},'text');
});
};
var a = function() {
Base.getScript(Path.Skin + "/js/mobile/pageDialog.js", b);
};
Base.getScript(Path.Skin + "/js/mobile/Comm.js", a);
});
</script>

</div>
<?php include templates("mobile/index","footer");?>
<script language="javascript" type="text/javascript">
  var Path = new Object();
  Path.Skin="<?php echo G_TEMPLATES_STYLE; ?>";  
  Path.Webpath = "<?php echo WEB_PATH; ?>";
  Path.imgpath = "<?php echo G_WEB_PATH; ?>/statics";
  
var Base={head:document.getElementsByTagName("head")[0]||document.documentElement,Myload:function(B,A){this.done=false;B.onload=B.onreadystatechange=function(){if(!this.done&&(!this.readyState||this.readyState==="loaded"||this.readyState==="complete")){this.done=true;A();B.onload=B.onreadystatechange=null;if(this.head&&B.parentNode){this.head.removeChild(B)}}}},getScript:function(A,C){var B=function(){};if(C!=undefined){B=C}var D=document.createElement("script");D.setAttribute("language","javascript");D.setAttribute("type","text/javascript");D.setAttribute("src",A);this.head.appendChild(D);this.Myload(D,B)},getStyle:function(A,B){var B=function(){};if(callBack!=undefined){B=callBack}var C=document.createElement("link");C.setAttribute("type","text/css");C.setAttribute("rel","stylesheet");C.setAttribute("href",A);this.head.appendChild(C);this.Myload(C,B)}}
function GetVerNum(){var D=new Date();return D.getFullYear().toString().substring(2,4)+'.'+(D.getMonth()+1)+'.'+D.getDate()+'.'+D.getHours()+'.'+(D.getMinutes()<10?'0':D.getMinutes().toString().substring(0,1))}
Base.getScript('<?php echo G_TEMPLATES_JS; ?>/mobile/Bottom.js?v='+GetVerNum());
</script>
 
</div>

</body></html>