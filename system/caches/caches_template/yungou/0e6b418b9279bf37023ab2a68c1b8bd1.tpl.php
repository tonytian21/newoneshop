<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?>

<!DOCTYPE html>
<html>
<head><meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no, maximum-scale=1.0" />
<title>
	计算结果 - <?php echo $webname; ?>触屏版
</title>
<meta content="app-id=518966501" name="apple-itunes-app" /><meta content="yes" name="apple-mobile-web-app-capable" /><meta content="black" name="apple-mobile-web-app-status-bar-style" /><meta content="telephone=no" name="format-detection" />
<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/comm.css" rel="stylesheet" type="text/css" />
<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/lottery.css" rel="stylesheet" type="text/css" />
<script src="<?php echo G_TEMPLATES_JS; ?>/mobile/jquery190.js" language="javascript" type="text/javascript"></script>
<script id="pageJS" data="<?php echo G_TEMPLATES_JS; ?>/mobile/CalResult.js" language="javascript" type="text/javascript"></script></head>
<body>
<div class="h5-1yyg-v1">
    
<!-- 栏目页面顶部 -->


<!-- 内页顶部 -->

    <header class="header" style="position: fixed;width: 100%;z-index: 99999999;">

    <h1 style="width: 100%;text-align: center;float: none;top: 0px;left: 0px;font-size: 25px;" class="fl">
        <span style="display: block;height: 49px;line-height: 49px;">
            <a style="font-size: 20px;line-height: 49px;" href="<?php echo WEB_PATH; ?>/mobile/mobile">
               计算结果
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

    <div class="fr head-r" style="position: absolute;right: 0px;top: 0px;">

        <!--<a href="<?php echo WEB_PATH; ?>/mobile/user/login" class="z-Member"></a>
    -->
    <a href="<?php echo WEB_PATH; ?>/mobile/cart/cartlist" class="z-shop"></a>

</div>

</header>

    <input name="hidCodeID" type="hidden" id="hidCodeID" value="<?php echo $item['id']; ?>" />
    <input name="hidRaffleTime" type="hidden" id="hidRaffleTime" value="<?php echo microt($item['q_end_time']); ?>" />
    <input name="hidBaseNum" type="hidden" id="hidBaseNum" value="<?php echo $user_shop_time_add; ?>" />
    <input name="hidCodeQuantity" type="hidden" id="hidCodeQuantity" value="<?php echo $item['canyurenshu']; ?>" />
    <input name="hidYuShu" type="hidden" id="hidYuShu" value="<?php echo $user_shop_fmod; ?>" />
    <input name="hidCodeRno" type="hidden" id="hidCodeRno" value="<?php echo $item['q_user_code']; ?>" />

    <section id="calResult" class="z-minheight" style="padding-top: 50px;">
        <div id="divGoodsLoading" class="loading loading2"><b></b>正在加载</div>
    </section>
    
    
<?php include templates("mobile/index","footer");?>
<script language="javascript" type="text/javascript">
  var Path = new Object();
  Path.Skin="<?php echo G_TEMPLATES_STYLE; ?>";  
  Path.Webpath = "<?php echo WEB_PATH; ?>";
  
var Base={head:document.getElementsByTagName("head")[0]||document.documentElement,Myload:function(B,A){this.done=false;B.onload=B.onreadystatechange=function(){if(!this.done&&(!this.readyState||this.readyState==="loaded"||this.readyState==="complete")){this.done=true;A();B.onload=B.onreadystatechange=null;if(this.head&&B.parentNode){this.head.removeChild(B)}}}},getScript:function(A,C){var B=function(){};if(C!=undefined){B=C}var D=document.createElement("script");D.setAttribute("language","javascript");D.setAttribute("type","text/javascript");D.setAttribute("src",A);this.head.appendChild(D);this.Myload(D,B)},getStyle:function(A,B){var B=function(){};if(callBack!=undefined){B=callBack}var C=document.createElement("link");C.setAttribute("type","text/css");C.setAttribute("rel","stylesheet");C.setAttribute("href",A);this.head.appendChild(C);this.Myload(C,B)}}
function GetVerNum(){var D=new Date();return D.getFullYear().toString().substring(2,4)+'.'+(D.getMonth()+1)+'.'+D.getDate()+'.'+D.getHours()+'.'+(D.getMinutes()<10?'0':D.getMinutes().toString().substring(0,1))}
Base.getScript('<?php echo G_TEMPLATES_JS; ?>/mobile/Bottom.js?v='+GetVerNum());
</script>

</div>
</body>
</html>
