<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><div style="clear: both"></div>
<div class="footer mt20">
	<div class="footer_center w1200">
		<div class="g-guide">
			<?php $category=$this->DB()->GetList("select * from `@#_category` where `parentid`='1'",array("type"=>1,"key"=>'',"cache"=>0)); ?> <?php $ln=1;if(is_array($category)) foreach($category AS $help): ?>
			<dl>
				<dt><?php echo $help['name']; ?></dt>
				<?php $article=$this->DB()->GetList("select * from `@#_article` where
				`cateid`='$help[cateid]'",array("type"=>1,"key"=>'',"cache"=>0)); ?> <?php 
				foreach($article as $art){ echo "
				<dd>
					<a href='".WEB_PATH.'/help/'.$art['id']."' target='_blank'>".$art['title'].'</a>
				</dd>
				';}  ?>
			</dl>
			<?php  endforeach; $ln++; unset($ln); ?> <?php if(defined('G_IN_ADMIN')) {echo '<div style="padding:8px;background-color:#F93; color:#fff;border:1px solid #f60;text-align:center"><b>This Tag</b></div>';}?>
		</div>

		<div class="g-special">
			<ul>
				<li><a> <em class="u-spc-icon1"></em> <span>100%公平公正</span>
						参与过程公开透明，用户可随时查看
				</a></li>
				<li><a> <em class="u-spc-icon2"></em> <span>100%正品保证</span>
						精心挑选优质商家，100%品牌正品
				</a></li>
				<li><a> <em class="u-spc-icon3"></em> <span>全国免运费</span>
						全场商品全国包邮
				</a></li>
			</ul>
		</div>
	</div>
	<div class="g-copyrightCon">
		<div class="w1190">
			<!-- //底部短连接 -->
			<div class="g-links">
				<?php echo Getheader('foot'); ?>
				<script
					src="https://s19.cnzz.com/z_stat.php?id=1266470257&web_id=1266470257"
					language="JavaScript"></script>
			</div>
			<div class="g-copyright">
				<?php echo _cfg('web_copyright'); ?><br />
			</div>

		</div>
	</div>
</div>
<style>
#top_div {
	display: none;
}
</style>
<div id="top_div">
	<div id="divRighTool" class="quickBack">
		<div class="dingbu"></div>
		<ul>
			<li class="gouwuche">
				<div class="mini_mycart" id="sCart">
					<a href="<?php echo WEB_PATH; ?>/member/cart/cartlist" class="cart c_red"
						target="_blank" id="sCartNavi"> <s></s> <em>购物车</em> <span
						id="sCartTotalA" class="c_red"></span>

					</a>
				</div>

			</li>
			<li class="fenxianga">

				<div onmouseover="MM_over(this)" onmouseout="MM_out(this)"
					style="position: relative; width: 37px; height: 56px;">
					<i></i>
					<div
						style="width: 37px; display: none; position: absolute; height: 56px;">
						<a
							style="color: #fff; height: 32; line-height: 16px; width: 25px; padding-top: 12px; display: block; padding-left: 6px;"
							id="btnRigQQ" target="_blank" class="quick_serviceA">好友分享</a>

						<ul class="-mob-share-list"
							style="position: absolute; left: -152px; background: #fff; border: 1px solid #dcdcdc; width: 150px; padding: 15px 0; text-align: center; top: 0px;">
							<li class="-mob-share-facebook"></li>
							<li class="-mob-share-twitter"></li>
							<li class="-mob-share-linkedin"></li>
						</ul>
					</div>
				</div>
			</li>
			<!-- <li class="app">

	<div onmouseover="MM_over(this)" onmouseout="MM_out(this)" style="position:relative;width: 37px;height: 56px;">
			<i></i>
			<div style="width:37px;display:none;position:absolute;height: 56px;">
				<a style="color: #fff;height: 32;line-height: 16px;width: 25px;padding-top:12px;display: block;padding-left: 6px;" id="btnRigQQ" href="<?php echo G_WEB_PATH; ?>/app/index.html" target="_blank" class="quick_serviceA">手机APP</a>
				<div style="position: absolute;left:-99px;background: #fff;border: 1px solid #dcdcdc;width: 97px;height: 113px;text-align: center;top: -57px;">
					<a target="_blank" href="<?php echo G_WEB_PATH; ?>/app/index.html"><img style="width: 75px;height: 75px;padding:5px 5px 10px 5px;" src="<?php echo G_TEMPLATES_IMAGE; ?>/code.jpg" alt="客户端"></a>
					<a style="text-align: center;line-height: 10px;" target="_blank" href="<?php echo G_WEB_PATH; ?>/app/index.html">下载客户端</a>
				</div>

			</div>
		</div>
		</li>
		<li class="weixin">

		<div onmouseover="MM_over(this)" onmouseout="MM_out(this)" style="position:relative;width: 37px;height: 56px;">
			<i></i>
			<div style="width:37px;display:none;position:absolute;height: 56px;">
				<a style="color: #fff;height: 32;line-height: 16px;width: 25px;padding-top:12px;display: block;padding-left: 6px;" id="btnRigQQ" href="<?php echo G_WEB_PATH; ?>/weixin/index.html" target="_blank" class="quick_serviceA">官方微信</a>
				<div style="position: absolute;left:-99px;background: #fff;border: 1px solid #dcdcdc;width: 97px;height: 113px;text-align: center;top: -57px;">
					<a target="_blank" href="<?php echo G_WEB_PATH; ?>/weixin/index.html"><img style="width: 75px;height: 75px;padding:5px 5px 10px 5px;" src="<?php echo G_TEMPLATES_IMAGE; ?>/code.jpg" alt="微信">
					</a>
					<a style="text-align: center;line-height: 10px;" target="_blank" href="<?php echo G_WEB_PATH; ?>/weixin/index.html">关注官方微信</a>
				</div>

			</div>
		</div>
		</li> -->


			<li class="qq">
				<div onmouseover="MM_over(this)" onmouseout="MM_out(this)"
					style="position: relative; width: 37px; height: 56px;">
					<i></i>
					<div
						style="width: 37px; display: none; position: absolute; height: 56px;">
						<a
							style="color: #fff; height: 32; line-height: 16px; width: 25px; padding-top: 12px; display: block; padding-left: 6px;"
							id="btnRigQQ"
							href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo _cfg("
							qq"); ?>&site=qq&menu=yes " target="_blank" class="quick_serviceA livechatinc">在线客服</a>
					</div>
				</div>
			</li>


			<li class="zhiding" style="background: none;">
				<div onmouseover="MM_over(this)" onmouseout="MM_out(this)"
					style="position: relative; width: 37px; height: 56px;">
					<i></i>
					<div
						style="width: 37px; display: none; position: absolute; height: 56px;">
						<a
							style="width: 37px; height: 56px; line-height: 56px; color: #fff; text-align: center; display: block;"
							id="btnGotoTop" href="javascript:;" class="quick_ReturnA">置顶</a>
					</div>
				</div>


			</li>
		</ul>

	</div>
</div>
<script type="text/javascript">
window.onscroll = function(){
    var t = document.documentElement.scrollTop || document.body.scrollTop; 
    var top_div = document.getElementById( "top_div" );
    if( t >= 300 ) {
        top_div.style.display = "block";
    } else {
        top_div.style.display = "none";
    }
}



function MM_over(mmObj) {
	var mSubObj = mmObj.getElementsByTagName("div")[0];
	mSubObj.style.display = "block";
	mSubObj.style.backgroundColor = "#9f948d";
}
function MM_out(mmObj) {
	var mSubObj = mmObj.getElementsByTagName("div")[0];
	mSubObj.style.display = "none";
	
}


function guanbi3(){
var display=$("#MaCenter1").css("display");
	if(display=="block"){
		$("#MaCenter1").css("display","none");
	}else{
		$("#MaCenter1").css("display","block");
	};
}
$(function(){	
	$(".guanbi3").click(guanbi3);
});



	$(".weixinload").click(function(){
		$(".yun_mobile").fadeIn();
	})
	$(".yun_close").click(function(){
		$(".yun_mobile").fadeOut();
	})
	
	
</script>

<script>
/*
$("#divRighTool").show(); 
var wids=($(window).width()-1200)/2-70;
if(wids>0){
	$("#divRighTool").css("right",wids);
}else{
	$("#divRighTool").css("right",10);
}
*/
$(function(){
	$("#btnGotoTop").click(function(){
		$("html,body").animate({scrollTop:0},1500);
	});
	$("#btnFavorite,#addSiteFavorite").click(function(){
		var ctrl=(navigator.userAgent.toLowerCase()).indexOf('mac')!=-1?'Command/Cmd': 'CTRL';
		if(document.all){
			window.external.addFavorite('<?php echo G_WEB_PATH; ?>','<?php echo _cfg("web_name"); ?>');
		}
		else if(window.sidebar){
		   window.sidebar.addPanel('<?php echo _cfg("web_name"); ?>','<?php echo G_WEB_PATH; ?>', "");
		}else{ 
			alert('您可以通过快捷键' + ctrl + ' + D 加入到收藏夹');
		}
    });
    /*
	$("#divRighTool a").hover(		
		function(){
			$(this).addClass("Current");
		},
		function(){
			$(this).removeClass("Current");
		}
	)
	*/
});
</script>

<script id="-mob-share"
	src="http://f1.webshare.mob.com/code/mob-share.js?appkey=21f30d1b7ccb5"></script>
<script>
mobShare.config( {
    debug: false, // 开启调试，将在浏览器的控制台输出调试信息
    appkey: '21f30d1b7ccb5', // appkey
    params: window.shareParams,
} );
</script>
</body>
</html>