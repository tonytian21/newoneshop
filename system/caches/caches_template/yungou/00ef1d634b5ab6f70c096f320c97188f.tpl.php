<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><!DOCTYPE html>
<html>
<head>
<title>帐户转帐 - 触屏版</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no, maximum-scale=1.0"/>
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />

<script id="pageJS" data="<?php echo G_TEMPLATES_JS; ?>/js/mobile/recharge.js" language="javascript" type="text/javascript"></script>
<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/comm.css?v=130715" rel="stylesheet" type="text/css" />
<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/member.css?v=130726" rel="stylesheet" type="text/css" />
<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/invite.css?v=130715" rel="stylesheet" type="text/css" />
<script src="<?php echo G_TEMPLATES_JS; ?>/mobile/jquery190.js" language="javascript" type="text/javascript"></script>

</head>
<body>
<div class="h5-1yyg-v1" id="loadingPicBlock">
    
<!-- 栏目页面顶部 -->


<!-- 内页顶部 -->

    <header class="header" style="position: fixed;width: 100%;z-index: 99999999;">

    <h1 style="width: 100%;text-align: center;float: none;top: 0px;left: 0px;font-size: 25px;" class="fl">
        <span style="display: block;height: 49px;line-height: 49px;">
            <a style="font-size: 20px;line-height: 49px;" href="<?php echo WEB_PATH; ?>/mobile/mobile">
                转账申请
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

  

        <!--<a href="<?php echo WEB_PATH; ?>/mobile/user/login" class="z-Member"></a>-->
    <a href="<?php echo WEB_PATH; ?>/mobile/home/userbalance" class="z-shop" style="background:none;color:#fff;position: absolute;right: 0px;top:18px;font-size: 16px;width: 70px;">账户明细</a>



</header>

 <div class="R-content" style="padding-top: 55px;">
	<div class="subMenu">
		<a id="linkApply" class="current">转帐申请</a>
		
	</div>
 
	<div id="divSQTX" class="Apply-con">
	  <form name="form1" action="" method="post">
		<dl>
			<dt>帐户金额：</dt>
			<dd><span id="spanBrokerage" class="orange"><?php echo $info['money']; ?></span> 元&nbsp;(<span class="gray02" style="color:#999999">转帐金额不得大于帐户余额</span>)</dd>
		</dl>
		<dl>
			<dt>转帐金额：</dt>
			<dd><input id="txtAppMoney" type="text" name="money" onkeyup="value=value.replace(/\D/g,'')" class="inp-money txtAri" value="" maxlength="10" tip="1" /><b>元</b>&nbsp;<span id="tip1"></span></dd>
		</dl>
	
		<dl>
			<dt>转入用户：</dt>
			<dd><input name="txtBankName" type="text" id="txtBankName" class="input-txt" tip="3" />&nbsp;<span class="gray02" style="color:#999999">填写邮箱或手机号</span></dd>
			
		</dl>
		<dl>
			<dt>确认用户：</dt>
			<dd><input name="txtBankName1" type="text" id="txtBankName" class="input-txt" tip="3" />&nbsp;<span class="gray02" style="color:#999999">填写邮箱或手机号</span></dd>
			
		</dl>
		
		<div class="Apply-button">
			<input style="padding: 10px 25px;" type="submit" name="submit1" id="btnSQTX" class="bluebut" title="提交申请" value="提交申请">
		</div>
	 </form>
	</div>
	
  
     
<style>
   #divSQTX span{color:#FF6600};
</style>

</div>
</div>
<div style="height:70px;"></div>

<?php include templates("mobile/index","footer");?>

<script language="javascript" type="text/javascript">
  var Path = new Object();
  Path.Skin="<?php echo G_TEMPLATES_STYLE; ?>";
  Path.Webpath = "<?php echo WEB_PATH; ?>";
var Base={head:document.getElementsByTagName("head")[0]||document.documentElement,Myload:function(B,A){this.done=false;B.onload=B.onreadystatechange=function(){if(!this.done&&(!this.readyState||this.readyState==="loaded"||this.readyState==="complete")){this.done=true;A();B.onload=B.onreadystatechange=null;if(this.head&&B.parentNode){this.head.removeChild(B)}}}},getScript:function(A,C){var B=function(){};if(C!=undefined){B=C}var D=document.createElement("script");D.setAttribute("language","javascript");D.setAttribute("type","text/javascript");D.setAttribute("src",A);this.head.appendChild(D);this.Myload(D,B)},getStyle:function(A,B){var B=function(){};if(callBack!=undefined){B=callBack}var C=document.createElement("link");C.setAttribute("type","text/css");C.setAttribute("rel","stylesheet");C.setAttribute("href",A);this.head.appendChild(C);this.Myload(C,B)}}
function GetVerNum(){var D=new Date();return D.getFullYear().toString().substring(2,4)+'.'+(D.getMonth()+1)+'.'+D.getDate()+'.'+D.getHours()+'.'+(D.getMinutes()<10?'0':D.getMinutes().toString().substring(0,1))}
Base.getScript('<?php echo G_TEMPLATES_JS; ?>/js/mobile/Bottom.js?v='+GetVerNum());
</script>
 
</div>
</body>
</html>
