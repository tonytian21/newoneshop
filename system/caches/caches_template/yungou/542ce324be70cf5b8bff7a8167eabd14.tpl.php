<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><?php include templates("index","header");?>



<script type="text/javascript">



$.fn.CloudZoom.defaults = {



	zoomWidth: '400',



	zoomHeight: '310',



	position: 'right',



	tint: false,



	tintOpacity: 0.5,



	lensOpacity: 0.5,



	softFocus: false,



	smoothMove: 7,



	showTitle: false,



	titleOpacity: 0.5,



	adjustX: 0,



	adjustY: 0



};



</script>



<style type="text/css">



.zoom-section{clear:both;margin-top:20px;}



.zoom-small-image{border:1px solid #dedede;float:left;margin-bottom:0px; width:400px; height:507px;border-left: none;border-top: none;border-bottom: none;}



.zoom-small-image img{ width:400px; height:400px;}



.zoom-desc{float:left;width:362px; height:52px;margin-bottom:20px; overflow:hidden;}



.zoom-desc p{ width:10000px; height:52px; float:left; display:block; position:absolute; top:0; z-index:3; overflow:hidden;}



.zoom-desc label{ width:50px; height:52px; margin:0 5px 0 5px; _margin-right:4px; display:block; float:left; overflow:hidden;}



.zoom-tiny-image{border:1px solid #CCC;margin:0px; width:48px; height:50px;}



.zoom-tiny-image:hover{border:1px solid #ff6600;}



</style>



<div class="Current_nav w1200">



	<a href="<?php echo WEB_PATH; ?>">首页</a> <span>&gt;</span> 



	<a href="<?php echo WEB_PATH; ?>/goods_list/<?php echo $item['cateid']; ?>">



	<?php echo $category['name']; ?>



	</a><span>&gt;</span> 



	<a href="<?php echo WEB_PATH; ?>/goods_list/<?php echo $item['cateid']; ?>e<?php echo $item['brandid']; ?>">



	<?php echo $brand['name']; ?>



	</a> <span>&gt;</span>商品详情 



</div>



<div class="show_content" style="margin-bottom: 10px;overflow: hidden;">



	<!-- 商品期数 -->



	<div id="divPeriodList" class="show_Period" style="max-height:33px;box-shadow:0 0 5px #e4e4e4;position: absolute;z-index: 99999;">







		<div class="period_Open bt_gray bb_gray bl_gray" style="top: 0;border-top: none;">



			<a class="gray02" href="javascript:;" id="btnOpenPeriod" click="off" style="color: #f60">更多<i></i></a>



		</div>	



			<?php echo $loopqishu; ?>



	</div>



	<!-- 商品信息 -->



	<div class="Pro_Details">



		



		<div class="Pro_Detleft" style="width: 363px;">



			<div class="zoom-small-image" style="width: 362px;height: 512px;">



				<span style="height: 362px;" href="<?php echo G_UPLOAD_PATH; ?>/<?php echo $item['thumb']; ?>" class = 'cloud-zoom' id='zoom1' rel="adjustX:10, adjustY:-2">



                <img style="width: 362px;height: 362px;" width="80px" height="80px" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $item['thumb']; ?>" /></span>



                <div class="zoom-desc" style="margin-top: 30px;"> 



				<div class="jcarousel-prev jcarousel-prev-disabled"></div>



				<div class="jcarousel-clip" style="height:55px;width:362px;">



				<p style="float: none;position:static;margin: 0 auto;">



					<?php $ln=1;if(is_array($item['picarr'])) foreach($item['picarr'] AS $imgtu): ?>                  



					<label href="<?php echo G_UPLOAD_PATH; ?>/<?php echo $imgtu; ?>" class='cloud-zoom-gallery'  rel="useZoom: 'zoom1', smallImage: '<?php echo G_UPLOAD_PATH; ?>/<?php echo $imgtu; ?>'">



					<img style="height: 48px;width: 48px;" class="zoom-tiny-image" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $imgtu; ?>" /></label>			



					<?php  endforeach; $ln++; unset($ln); ?> 



				</p>



				</div>



				<div class="jcarousel-next jcarousel-next-disabled"></div>



			</div>



			</div>



			<div class="fenxiang1" style="position: absolute;bottom: 15px;left: 5px;width: 350px;">



				<div class="fenxiang" style="margin-top: 13px;"><i></i>分享</div>



				<!-- JiaThis Button BEGIN -->



				<div class="jiathis_style">



					<style>



						.jiathis_style .jtico{



							padding: 0px!important;



							display: block!important;



							margin: 0 5px 0 0!important;



							width: 17px!important;



							height: 17px!important;



						}



						.jtico_tsina:hover{



							opacity: 1;



							background-position: 0 -26px!important;



						}



						.jiathis_style .jtico_weixin{



							background-position: -27px 0!important;



						}



						.jtico_weixin:hover{



							background-position: -27px -26px!important;



						}



						.jiathis_style .jtico_qzone{



							background-position: -54px 0!important;



						}



						.jtico_qzone:hover{



							background-position: -54px -26px!important;



						}



						.jiathis_style .jtico_tqq{



							background-position: -81px 0!important;



						}



						.jtico_tqq:hover{



							background-position: -81px -26px!important;



						}



						.jiathis_style .jtico_cqq{



							background-position: -108px 0!important;



						}



						.jtico_cqq:hover{



							background-position: -108px -26px!important;



						}



					</style>



					<a class="jiathis_button_tsina"></a>



					<a class="jiathis_button_weixin"></a>



					<a class="jiathis_button_qzone"></a>



					<a class="jiathis_button_tqq"></a>



					<a class="jiathis_button_cqq"></a>



					



				</div>



				<span style="text-align: right;line-height: 13px;display: block;float: right;"><a href="<?php echo G_WEB_PATH; ?>">下载app，随时<?php echo _cfg("web_name"); ?></a></span>



				<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>



				<!-- JiaThis Button END -->







			</div>



			<script>



				var si=$(".jcarousel-clip label").size();



				var label=si*60;



				$(".jcarousel-clip p").css({width:label,left:"0"});



				if(label>395){



					$(".jcarousel-prev,.jcarousel-next").show();



				}else{



					$(".jcarousel-prev,.jcarousel-next").hide();



				}



				$(".jcarousel-prev").click(function(){



					var le=$(".jcarousel-clip p").css("left");



					var le2=le.replace(/px/,"");



					if(le!='0px'){



						$(".jcarousel-clip p").css({left:le2*1+60});



					}						



				})



				$(".jcarousel-next").click(function(){



					var le=$(".jcarousel-clip p").css("left");



					var le2=le.replace(/px/,"");



					var max_next=-(si-7)*55+"px";



					if(le!=max_next){						



						$(".jcarousel-clip p").css({left:le2*1-60});



					}



				})



			</script>
			<?php if($sid_code): ?>
			<?php 
				$sid_code['q_user'] = unserialize($sid_code['q_user']);
			 ?>
			<?php if($sid_code['q_showtime']=='N'): ?>
			<!--
			<div class="Pro_GetPrize">				
				<h2>上期获得者</h2>
				<div class="GetPrize">				    
					<dl>
						<dt><a rel="nofollow" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($sid_code['q_uid']); ?>" target="_blank"><img width="80" height="80" alt="" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $sid_code['q_user']['img']; ?>"></a></dt>
						<dd class="gray02">
							<p>恭喜 <a href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($sid_code['q_uid']); ?>" target="_blank" class="blue"><?php echo get_user_name($sid_code['q_uid']); ?></a>获得了本商品</p>
							<?php if($sid_go_record['ip']): ?>
							<?php echo get_ip($sid_go_record['id'],'ipcity'); ?>
							<?php endif; ?>
							<p>揭晓时间：<?php echo microt($sid_code['q_end_time']); ?></p>
							<p>乐购时间：<?php echo microt($sid_go_record['time']); ?></p>
							<p>幸运乐购码：<em class="orange Fb"><?php echo $sid_code['q_user_code']; ?></em></p>
						</dd>
					</dl>				
				</div>
			</div>
			-->
			<?php endif; ?>
			<?php endif; ?>
		</div>
		<div class="Pro_Detright" style="position: relative;width: 548px;height: 492px;">
			<p style="font-size:18px;margin-top: 15px;color:#333;height: 72px; overflow: hidden;">
		<span class="f24">(第<?php echo $item['qishu']; ?>期)</span>
		<span  class="f24"><?php echo $item['title']; ?></span><br/>
		<span style="<?php echo $item['title_style']; ?>color:#CCC; font-size:14px"><?php echo $item['title2']; ?></span>
		</p>
			<!--<p class="Det_money">价值：<span class="rmbgray"><?php echo $item['money']; ?></span></p>
			显示揭晓动画 start-->
			<?php if(($q_showtime=='Y')): ?>
				<?php include templates("index","item_animation");?>
			<?php  else: ?>
				<?php include templates("index","item_contents");?>
			<?php endif; ?>	
            <!-- <div id="divBuy" class="Det_button">

				<a href="javascript:;" class="Det_Shopbut">立即乐购</a>

				<a href="javascript:;" class="Det_Cart"><i></i>加入购物车</a>							

			</div>
			<!--显示揭晓动画 end-->		
			<div class="Security">
				<ul>
					<li style="color: #9a9a9a;font-family: 微软雅黑;">三大服务保证：</li>
					<li><a href="<?php echo WEB_PATH; ?>/help/4" target="_blank"><i></i>100%公平公正</a></li>
					<li><a href="<?php echo WEB_PATH; ?>/help/5" target="_blank"><s></s>100%正品保证</a></li>



					<li><a href="<?php echo WEB_PATH; ?>/help/7" target="_blank"><b></b>全国免费配送</a></li>



				</ul>



			</div>		



			<div style="height: 124px;width: 540px;border: 1px solid #dedede;border-radius: 20px;margin-top: 20px;">



				<ul style="border-right: 1px solid #e4e4e4;float: left;height: 124px;position: relative;width: 52px;">



					<li style="color: #f60;cursor: default;float: left;font-size: 14px;padding: 41px 10px;position:relative;">



						怎么玩儿



						<i class="jiantou" style="background-color:#fff;background-position: -109px -283px;height: 13px;overflow: hidden;position: absolute;right: -8px;top: 55px;width: 8px;"></i>



					</li>



				</ul>



				<div style=" float: left;height: 110px;padding-top: 14px;text-align: center;width: 453px;">



					<div style="float: left;position: relative;width: 132px;">



						<div class="ad-icon01 ng-xq-bg" style="height: 35px;margin-left: 39px;width: 38px;"></div>



						<p style="color: #444;font-size: 16px;line-height: 26px;">选择商品</p>



						<p style="color: #bbb;font-size: 12px;line-height: 18px;">



							 每个商品规定总需



							<br>



							参与人次(1人次=1元) 



						</p>



						<div class="ng-xq-bg" style="background-position: -111px -5px;height: 8px;overflow: hidden;position: absolute;top: 15px;width: 17px;right: -8px;"></div>



					</div>



					<div style="float: left;position: relative;width: 145px;">



						<div class="ad-icon02 ng-xq-bg" style="height: 30px;width: 59px;margin:4px auto 2px"></div>



						<p style="color: #444;font-size: 16px;line-height: 26px;">支付1乐币</p>



						<p style="color: #bbb;font-size: 12px;line-height: 18px;">



							 参与人次越多



							<br>



							获得机率越大



						</p>



						<div class="ng-xq-bg" style="background-position: -111px -5px;height: 8px;overflow: hidden;position: absolute;top: 15px;width: 17px;right: -8px;"></div>



					</div>



					<div style="float: left;position: relative;width: 176px;">



							<div class="ad-icon03 ng-xq-bg" style="height: 35px;width: 38px;margin: -1px auto 0;"></div>



						<p style="color: #444;font-size: 16px;line-height: 26px;">抽出幸运获得者</p>



						<p style="color: #bbb;font-size: 12px;line-height: 18px;">



							所有人次售完后根据计算规则



							<br>



							抽出一位幸运获得者



						</p>



					</div>



				</div>



			</div>	



		</div>



		<div class="Pro_Record">



				<ul id="ulRecordTab" class="Record_tit">



					<li class="NewestRec Record_titCur">最新乐购记录</li>



					<li class="MytRec">我的乐购记录</li>



					<!--<li class="Explain orange">什么是1元乐购？</li>-->



				</ul>



				<div class="Newest_Con hide" style="position: relative;">



					<ul>



						<?php $ln=1;if(is_array($us)) foreach($us AS $user): ?>



						<?php $tiezi=$this->DB()->GetList("select * from `@#_member` where `uid`=$user[uid]",array("type"=>1,"key"=>'',"cache"=>0)); ?>



                    		<?php $ln=1;if(is_array($tiezi)) foreach($tiezi AS $tz): ?>



						<li>



						



						<a href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($user['uid']); ?>" target="_blank">



						<?php if($tz['img']!='photo/member.jpg'): ?>



							<img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $tz['img']; ?>" border="0" alt="" width="20" height="20">



						<?php elseif ($tz['headimg']!=''): ?>



							<img src="<?php echo $tz['headimg']; ?>" border="0" alt="" width="20" height="20">



						<?php  else: ?>



							<img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $tz['img']; ?>" border="0" alt="" width="20" height="20">



						<?php endif; ?>



						</a>



								



						<a style="width: 105px;overflow: hidden;display: inline-block;height: 14px;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($user['uid']); ?>" target="_blank" class="blue"><?php echo $user['username']; ?></a>



						<!--



						<?php if($user['ip']): ?>



						(<?php echo get_ip($user['id'],'ipcity'); ?>) 



						<?php endif; ?>







						<?php echo _put_time($user['time']); ?> 乐购了



						-->	



						<em class="Fb gray01" style="color: #f60;"><?php echo $user['gonumber']; ?></em>人次</li>



						<?php  endforeach; $ln++; unset($ln); ?>



						<?php  endforeach; $ln++; unset($ln); ?>	



					</ul>



					<p style="position: absolute;bottom: 3px;left: 28px;margin:0px;"><a id="btnUserBuyMore" href="javascript:;" class="gray01">查看更多</a></p>					



				</div>



				<div class="My_Record hide" style="display:none;">



					<?php if(uidcookie('uid')): ?>					



					<ul>



						<?php $ln=1;if(is_array($us2)) foreach($us2 AS $user): ?>



						<?php if($user['uid']==uidcookie('uid')): ?>



						<li style="height: 38px;text-align: center;border-bottom: 1px solid #eee;line-height: 38px;">您于<?php echo _put_time($user['time']); ?>  夺得了  <em style="color: #f60;"><?php echo $user['gonumber']; ?></em>个乐购码</li>



						<?php endif; ?>



						<?php  endforeach; $ln++; unset($ln); ?>



					</ul>



					<?php  else: ?>



					<div class="My_RecordReg">



						<b class="gray01">看不到？是不是没登录或是没注册？ 登录后看看</b>



						<a href="<?php echo WEB_PATH; ?>/member/user/login" class="My_Signbut">登录</a><a href="<?php echo WEB_PATH; ?>/member/user/register" class="My_Regbut">注册</a>



					</div>



					<?php endif; ?>



				</div>



				<!--



				<div class="Newest_Con hide" style="display:none;">



					<p class="MsgIntro"><?php echo _cfg("web_name_two"); ?>购是指只需1元就有机会买到想要的商品。即每件商品被平分成若干“等份”出售，每份1元，当一件商品所有“等份”售出后，根据乐购规则产生一名幸运者，该幸运者即可获得此商品。</p>



					<p class="MsgIntro1"><?php echo _cfg("web_name_two"); ?>以“快乐乐购，惊喜无限”为宗旨，力求打造一个100%公平公正、100%正品保障、寄娱乐与购物一体化的新型购物网站。<a href="<?php echo WEB_PATH; ?>/help/1" class="blue" target="_blank">查看详情&gt;&gt;</a></p>



				</div>



				-->



			</div>	



	</div>



</div>



<!-- 商品信息导航 -->



<div class="ProductTabNav">



	<div id="divProductNav" class="DetailsT_Tit">



		<div class="DetailsT_TitP">



			<ul>



				<li class="Product_DetT DetailsTCur"><span class="DetailsTCur">商品详情</span></li>



				<li id="liUserBuyAll" class="All_RecordT"><span class="">所有参与记录</span></li>



				<li class="Single_ConT"><span class="">晒单</span></li>



			</ul>



		</div>



	</div>



</div>



<!-- 商品内容 -->



<div id="divContent" class="Product_Content">



	<div class="Product_Con hide" style="display:block;"><?php echo $item['content']; ?></div>



	<div name="bitem" class="AllRecordCon hide" style="display:none;">



		<?php $ln=1;if(is_array($us2)) foreach($us2 AS $user): ?>



		<div class="AllRecW AllRecTime"><p><?php echo microtDate($user['time']); ?></p> <b></b></div>			



		<div class="AllRecW AllReclist">



			<div class="AllRecL fl"><?php echo microt($user['time']); ?><i></i></div>



			<div class="AllRecR fl" style="background:#F8F8F8; border:1px solid #F8F8F8">



			<p class="AllRecR_T"  style="line-height:15px;">



				<span name="spCodeInfo" class="AllRecR_Over">



				<a class="Headpic" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($user['uid']); ?>" target="_blank"><img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $user['uphoto']; ?>" border="0" width="20" height="20"></a>



				<a href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($user['uid']); ?>" target="_blank" class="blue"><?php echo _strcut($user['username'],6); ?></a>



				<?php if($user['ip']): ?>



				(<?php echo get_ip($user['id'],'ipcity'); ?> IP:<?php echo get_ip($user['id'],'ipmac'); ?>)



				<?php endif; ?>



				乐购了<em class="Fb orange"><?php echo $user['gonumber']; ?></em>人次



				</span>



			</p>



			</div>



		</div>



		<?php  endforeach; $ln++; unset($ln); ?>



	</div>



	



		<!-- 晒单 -->



	<div id="divPost" class="Single_Content">



		<iframe id="iframea" src="<?php echo WEB_PATH; ?>/go/shaidan/itmeifram/<?php echo $itemid; ?>" style="width:1200px; border:none;height:0px;" frameborder="0" scrolling="no"></iframe>



	</div>



	



</div>



<script>



$("#btnOpenPeriod").click(function(){



		var ui_obj = $("#divPeriodList > ul");



		if($(this).attr("click")=='off'){



			$("#divPeriodList").css("max-height",ui_obj.length*33+"px");	



			$(this).attr("click","on");



			$(this).html("关闭<s></s>");



			



		}else{



			$("#divPeriodList").css("max-height","33px");	



			$(this).attr("click","off");



			$(this).html("更多<i></i>");



		}			



});







//添加购买



$(function(){







var syrs="<?php echo $syrs; ?>";



var shopnum = $("#num_dig");







function baifenshua(aa,n){



	n = n || 2;



	return ( Math.round( aa * Math.pow( 10, n + 2 ) ) / Math.pow( 10, n ) ).toFixed( n ) + '%';



}







shopnum.ready(function(){



	if(shopnum.val()>syrs){



		shopnum.val(syrs);



	}   



});











/*shopnum.keyup(function(){



	if(isNaN(shopnum.val())){					



	 shopnum.val(1);



	}else{



		if(shopnum.val()<=0){					



		 shopnum.val(1);	



		} 



		if(shopnum.val()>syrs){



			shopnum.val(syrs);



		}



			var numshop=shopnum.val();



			if(numshop==69){



				var baifenbi='100%';



			}else{



				var showbaifen=numshop/69;



				var baifenbi=baifenshua(showbaifen,2);



			}



			$("#chance").html("<span style='color:red'>获得机率"+baifenbi+"</span>");   		



	}	



  



});	*/







$("#shopadd").click(function(){



				var shopnum = $("#num_dig");



				var resshopnump='';				



				var num = parseInt(shopnum.val());



				if(num+1 >syrs){				



					shopnum.val(syrs);



					resshopnump = syrs;



				}else{



					resshopnump=parseInt(shopnum.val())+1;



					// shopnum.val(resshopnump);	



					// if(shopnum.val()>=syrs){



					// 	resshopnump=shopinfo['shenyu'];



					// 	shopnum.val(resshopnump);



					// }



				}



			if(resshopnump==69){



				var baifenbi='100%';



			}else{



				var showbaifen=resshopnump/69;



				var baifenbi=baifenshua(showbaifen,2);



			}



			$("#chance").html("<span style='color:red'>获得机率"+baifenbi+"</span>");                			



		});



		



$("#shopsub").click(function(){



		var shopnum = $("#num_dig");



		var num = parseInt(shopnum.val());



		if(num<2){



			shopnum.val(1);			



		}else{



			var shopnums = shopnum.val(parseInt(shopnum.val()));



		}



 		// var shopnums=parseInt(shopnum.val());



		if(shopnums==69){



				var baifenbi='100%';



			}else{



				var showbaifen=shopnums/69;



				var baifenbi=baifenshua(showbaifen,2);



			}



			$("#chance").html("<span style='color:red'>获得机率"+baifenbi+"</span>");       



	});		



});







$(function(){



$(".Det_Cart").click(function(){ 



	Cartcookie(false);



});



	$(".Det_Shopbut").click(function(){	



		Cartcookie(true);



	});	



});











function Cartcookie(cook){



	var info = {};



	var shopid=shopinfo['shopid'];



	var cookie_pre="wc_";//cookie配置前缀



	var Cartlist = $.cookie(cookie_pre+'Cartlist');



	if(!Cartlist){



		var info = {};



	}else{



		var info = $.evalJSON(Cartlist);



		if((typeof info) !== 'object'){



			var info = {};



		}



	}		



	if(!info[shopid]){



		var CartTotal=$("#sCartTotal").text();



			$("#sCartTotal").text(parseInt(CartTotal)+1);



			$("#btnMyCart em").text(parseInt(CartTotal)+1);



	}	



	var number=parseInt($("#num_dig").val());	



	info[shopid]={};



	info[shopid]['num']=number;



	info[shopid]['shenyu']=shopinfo['shenyu'];



	info[shopid]['money']=shopinfo['money'];



	info['MoenyCount']='0.00';



	$.cookie(cookie_pre+'Cartlist',$.toJSON(info),{expires:7,path:'/'});	



	if(cook){



		window.location.href="<?php echo WEB_PATH; ?>/member/cart/cartlist/"+new Date().getTime();//+new Date().getTime()



	}



}











</script>



<script type="text/javascript">



function set_iframe_height(height){



//	alert(height);



	$("#iframea").css("height",height);



	if(this.divPost!='yes'){



		$("#divPost").hide();this.divPost='yes';



	}



}







$(function(){



	$("#ulRecordTab li").click(function(){



		var add=$("#ulRecordTab li").index(this);



		$("#ulRecordTab li").removeClass("Record_titCur").eq(add).addClass("Record_titCur");



		$(".Pro_Record .hide").hide().eq(add).show();



	});



var fouli=$(".DetailsT_TitP ul li");



	fouli.click(function(){



		var add=fouli.index(this);	



		if(add ==2){



			$("#divPost").show();



		}



		if(add ==0 || add==1){



			$("#divPost").hide();



		}



		



		fouli.removeClass("DetailsTCur").eq(add).addClass("DetailsTCur");



		$("#divContent .hide").hide().eq(add).show();



	});



	$("#btnUserBuyMore").click(function(){



		fouli.removeClass("DetailsTCur").eq(1).addClass("DetailsTCur");



		$("#divContent .hide").hide().eq(1).show();



		$("html,body").animate({scrollTop:941},1500);



		$("#divProductNav").addClass("nav-fixed");



	});



	$(window).scroll(function(){



		if($(window).scrollTop()>=941){



			$("#divProductNav").addClass("nav-fixed");



			var wh = $(document.body).outerWidth(true);



			var w = (wh-1200)/2;



			$("#divProductNav").css("left",w + "px");



			



		}else if($(window).scrollTop()<941){



			$("#divProductNav").removeClass("nav-fixed");



		}



	});



})



var shopinfo={'shopid':<?php echo $item['id']; ?>,'money':<?php echo $item['yunjiage']; ?>,'shenyu':<?php echo $syrs; ?>};







	



$(function(){



	function baifenshua(aa,n){



	n = n || 2;



	return ( Math.round( aa * Math.pow( 10, n + 2 ) ) / Math.pow( 10, n ) ).toFixed( n ) + '%';



}



	var shopnum = $("#num_dig");



	shopnum.keyup(function(){



		if(shopnum.val()><?php echo $syrs; ?>){



			shopnum.val(<?php echo $syrs; ?>);



		}



		var numshop=shopnum.val();



		if(numshop==<?php echo $item['zongrenshu']; ?>){



			var baifenbi='100%';



		}else{



			var showbaifen=numshop/<?php echo $item['zongrenshu']; ?>;



			var baifenbi=baifenshua(showbaifen,2);



		}



		$("#chance").html("<span style='color:red'>获得机率"+baifenbi+"</span>");



	});	



	



	$("#shopadd").click(function(){



		var shopnum = $("#num_dig");



			var resshopnump='';



			var num = parseInt(shopnum.val());				



			if(num+1 > 450){				



				shopnum.val(<?php echo $syrs; ?>);



				resshopnump = <?php echo $syrs; ?>;



			}else{



				resshopnump=parseInt(shopnum.val())+1;



				shopnum.val(resshopnump);	



				if(shopnum.val()>=<?php echo $syrs; ?>){



					resshopnump=shopinfo['shenyu'];



					shopnum.val(resshopnump);



				}



			}



			if(resshopnump==<?php echo $item['zongrenshu']; ?>){



				var baifenbi='100%';



			}else{



				var showbaifen=resshopnump/<?php echo $item['zongrenshu']; ?>;



				var baifenbi=baifenshua(showbaifen,2);



			}



			$("#chance").html("<span style='color:red'>获得机率"+baifenbi+"</span>");



	});



	



	



	$("#shopsub").click(function(){



		var shopnum = $("#num_dig");



		var num = parseInt(shopnum.val());



		if(num<2){



			shopnum.val(1);			



		}else{



			shopnum.val(parseInt(shopnum.val())-1);



		}



		var shopnums=parseInt(shopnum.val());



		if(shopnums==<?php echo $item['zongrenshu']; ?>){



				var baifenbi='100%';



			}else{



				var showbaifen=shopnums/<?php echo $item['zongrenshu']; ?>;



				var baifenbi=baifenshua(showbaifen,2);



			}



			$("#chance").html("<span style='color:red'>获得机率"+baifenbi+"</span>");



	});



});







$(function(){



$(".Det_Cart").click(function(){ 



	//添加到购物车动画



	var src=$("#zoom1 img").attr('src');  



	var $shadow = $('<img id="cart_dh" style="display: none;z-index: 99;" width="400" height="400" src="'+src+'" />').prependTo("body"); 



	var $img = $(".mousetrap").first("img");



	$shadow.css({ 



	   'width' : $img.css('width'), 



	   'height': $img.css('height'),



	   'position' : 'absolute',      



	   'top' : $img.offset().top,



	   'left' : $img.offset().left, 



	   'opacity' :1    



	}).show();



	var $cart =$("#btnMyCart");



	var numdig=$(".num_dig").val();



	$shadow.animate({   



		width: 1, 



		height: 1, 



		top: $cart.offset().top, 



		left: $cart.offset().left,



		opacity: 0



	},500,function(){



		Cartcookie(false);



	});		



});



	$(".Det_Shopbut").click(function(){	



		Cartcookie(true);



	});	



});



$("#m_all_sort").hide();







$(".m_menu_all").mouseenter(function(){



$(".m_all_sort").show();



     })



$(".m_menu_all").mouseleave(function(){



$(".m_all_sort").hide();



     })



$(".m_all_sort").mouseenter(function(){



$(this).show();



     })



$(".m_all_sort").mouseleave(function(){



  $(this).hide();



})







$(function(){



  $(window).scroll(function() {	



 		



		if($(window).scrollTop()>=130&&$(window).scrollTop()<=560){



			$(".head_nav").addClass("fixedNav");	



			$("#m_all_sort").fadeOut();



		}else if($(window).scrollTop()>560){



			$(".head_nav").addClass("fixedNav");



			$("#m_all_sort").fadeOut();



	} else if($(window).scrollTop()<130){



			$(".head_nav").removeClass("fixedNav");



	}



      });



});



















function Cartcookie(cook){



	var shopid=shopinfo['shopid'];



	var number=parseInt($("#num_dig").val());



	if(number<=1){number=1;}



	var Cartlist = $.cookie('Cartlist');



	if(!Cartlist){



		var info = {};



	}else{



		var info = $.evalJSON(Cartlist);



		if((typeof info) !== 'object'){



			var info = {};



		}



	}		



	if(!info[shopid]){



		var CartTotal=$("#sCartTotal").text();



			$("#sCartTotal").text(parseInt(CartTotal)+1);



			$("#sCartTotalA").text(parseInt(CartTotal)+1);



			$("#btnMyCart em").text(parseInt(CartTotal)+1);



	}	



	info[shopid]={};



	info[shopid]['num']=number;



	info[shopid]['shenyu']=shopinfo['shenyu'];



	info[shopid]['money']=shopinfo['money'];



	info['MoenyCount']='0.00';	



	$.cookie('Cartlist',$.toJSON(info),{expires:7,path:'/'});



	if(cook){



		window.location.href="<?php echo WEB_PATH; ?>/member/cart/cartlist/"+new Date().getTime();//+new Date().getTime()



	}



}  



</script> 







<?php include templates("index","footer");?>