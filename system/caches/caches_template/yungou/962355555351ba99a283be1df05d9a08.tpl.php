<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><div class="left">
	<div class="head">
		<a href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($member['uid']); ?>" target="_blank">			
			<img style="border-radius: 55px;" id="imgUserPhoto" src="<?php if($member['img']!='photo/member.jpg'): ?>
				<?php echo G_UPLOAD_PATH; ?>/<?php echo $member['img']; ?>
			<?php elseif ($member['headimg']!=''): ?>
				<?php echo $member['headimg']; ?>
			<?php  else: ?>
				<?php echo G_UPLOAD_PATH; ?>/<?php echo $member['img']; ?>
			<?php endif; ?>		" width="160" height="160" border="0"/>	
			
		</a>
	</div>
	<div class="head-but">
		<a href="<?php echo WEB_PATH; ?>/member/home/userphoto" class="blue"><?php echo lang::get_lang('修改头像'); ?></a>
		<a href="<?php echo WEB_PATH; ?>/member/home/modify" class="blue fr"><?php echo lang::get_lang('编辑资料'); ?></a>
	</div>
	<div class="sidebar-nav">
		<p class="sid-line"></p>
		<h2 class="sid-icon01"><a href="<?php echo WEB_PATH; ?>/member/home"><b></b><?php echo lang::get_lang('个人中心'); ?></a></h2>
		<p class="sid-line"></p>
		<h3 class="sid-icon09" ><a href="<?php echo WEB_PATH; ?>/member/home/modify"><b></b><?php echo lang::get_lang('个人设置'); ?></a></h3>		
		<p class="sid-line"></p>
		<h3 class="sid-icon02">
			<a href="javascript:void();"><b></b><?php echo lang::get_lang('我的夺宝'); ?> <s class="sid_ss" title="<?php echo lang::get_lang('收起'); ?>"></s></a>
		</h3>
		<ul>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/userbuylist"><?php echo lang::get_lang('夺宝记录'); ?></a></li>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/orderlist"><?php echo lang::get_lang('获得的商品'); ?></a></li>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/singlelist"><?php echo lang::get_lang('晒单'); ?></a></li>
		</ul>
		<p class="sid-line"></p>
		<h3 class="sid-icon03 " >
			<a href="javascript:void();"><b></b><?php echo lang::get_lang('圈子管理'); ?> <s class="sid_ss" title="<?php echo lang::get_lang('收起'); ?>"></s></a>
		</h3>
		<ul>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/joingroup"><?php echo lang::get_lang('加入的圈子'); ?></a></li>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/topic"><?php echo lang::get_lang('圈子话题'); ?></a></li>
		</ul>
		<p class="sid-line"></p>
		<h3 class="sid-icon04 " >
			<a href="javascript:void();"><b></b><?php echo lang::get_lang('邀请管理'); ?> <s class="sid_ss" title="<?php echo lang::get_lang('收起'); ?>"></s></a>
		</h3>
		<ul>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/invitefriends"><?php echo lang::get_lang('邀请好友'); ?></a></li>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/commissions"><?php echo lang::get_lang('佣金明细'); ?></a></li>
			
		</ul>
		<p class="sid-line"></p>		
		<h3 class="sid-icon05 " >
			<a href="javascript:void();"><b></b><?php echo lang::get_lang('账户管理'); ?> <s class="sid_ss" title="<?php echo lang::get_lang('收起'); ?>"></s></a>
		</h3>
		<ul>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/userbalance"><?php echo lang::get_lang('账户明细'); ?></a></li>
			<li class=""><a href="<?php echo WEB_PATH; ?>/member/home/userrecharge"><?php echo lang::get_lang('账户充值'); ?></a></li>
		</ul>
		<p class="sid-line"></p>
		<h3 class="sid-icon07 sid-hcur" hasChild="0" url=""><a href="<?php echo WEB_PATH; ?>/member/home/userfufen"><b></b><?php echo lang::get_lang('我的积分'); ?></a></h3>

	</div>
	<div class="sid-service">
		<p>
			<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo _cfg("qq"); ?>&site=qq&menu=yes" target="_blank" class="service-btn livechatinc">
				<s></s><img border="0" src="images/pa" style="display:none;"><?php echo lang::get_lang('在线客服'); ?>
			</a>
		</p>
		<span><?php echo lang::get_lang('客服热线'); ?></span>
		<b class="tel"><?php echo _cfg("cell"); ?></b>
	</div>
</div>
<script type="text/javascript">
var _NavState = [true, true, true, true, true];  
$("div.sidebar-nav").find("h3").each(function(i,v){
	var _This = $(this);
	var _HasClild = _This.attr("hasChild")=="1"; 
	var _SObj = _This.find("s");
	_This.click(function(e){
		if(_HasClild){
			var _State = _NavState[i];                
			/* <?php echo lang::get_lang('一级栏目更改样式'); ?> */
			if(_State){
				_This.addClass("sid-iconcur");
				_SObj.attr("title","<?php echo lang::get_lang('展开'); ?>");
			}
			else {
				_This.removeClass("sid-iconcur");
				_SObj.attr("title","<?php echo lang::get_lang('收起'); ?>");
			}                
			/* <?php echo lang::get_lang('二级栏目显示或隐藏'); ?> */
			_This.next("ul").children().each(function(){
				if(_State){
					$(this).hide(50);
				}
				else {
					$(this).show(50);
				}
			});
			_NavState[i] = !_State;
		}
	});
});
$(".sid_ss").click(function(){
	$(this).parents(".ss").next().toggle(200);
});    
</script>
<script type="text/javascript">
	$(".yu_ff").mouseover(function(){
	  $(".h_1yyg_eject").show();
	})
	$(".yu_ff").mouseout(function(){
	  $(".h_1yyg_eject").hide();
	})

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
</script>

<!--content left end-->