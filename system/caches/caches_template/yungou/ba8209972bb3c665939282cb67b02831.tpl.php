<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><?php include templates("index","header");?>
<link rel="stylesheet" type="text/css" href="<?php echo G_TEMPLATES_STYLE; ?>/css/user.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo G_TEMPLATES_STYLE; ?>/css/user.message.css"/>
<div class="layout980 clearfix">
<?php include templates("member","left");?>
<div class="center">
	<div class="per-info">
		<ul>
			<li class="info-mane gray02" style="font-size: 16px;color: #555;">
				你好，
				<?php if($member['username']!=null): ?>
				<a style="font-size: 16px;color: #555;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($member['uid']); ?>" target="_blank"><?php echo $member['username']; ?></a>
				<?php elseif ($member['mobile']!=null): ?>
				<a style="font-size: 16px;color: #555;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($member['uid']); ?>" target="_blank"><?php echo $member['mobile']; ?></a>
				<?php  else: ?>
				<a style="font-size: 16px;color: #555;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($member['uid']); ?>" target="_blank"><?php echo $member['email']; ?></a>
				<?php endif; ?>
				<?php if($member['username']!=null): ?>
				
				<?php if($member['mobile']!=null): ?>
				<a style="font-size: 14px;color: #999;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($member['uid']); ?>" target="_blank">(<?php echo $member['mobile']; ?>)</a>
				<?php  else: ?>
				<a style="font-size: 14px;color: #999;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($member['uid']); ?>" target="_blank">(<?php echo $member['email']; ?>)</a>
				<?php endif; ?>
				
				<?php endif; ?>
			</li>
			<li class="account-money">
				<em class = "gray02">经验值：<?php echo $member['jingyan']; ?></em> 
				<span class="class-icon0<?php echo $dengji_1['groupid']; ?> gray01"><s></s><?php echo $dengji_1['name']; ?></span>
				<?php if($dengji_2): ?>
					<span class = "gray02">（还差<?php echo $dengji_x; ?>经验值升级到<?php echo $dengji_2['name']; ?>）</span>
				<?php  else: ?>
					<span class = "gray02">（还差<?php echo $dengji_x; ?>经验值升级到最高等级）</span>
				<?php endif; ?>
			</li>
			<li class="account-money" style="width: 300px;line-height: 25px;">
				<em class="gray02">帐户余额：</em>
				<span class="money-red"><?php echo uidcookie('money'); ?>云购币</span>&nbsp;&nbsp;
				<a href="<?php echo WEB_PATH; ?>/member/home/userrecharge" title="充值" class="blue">充值</a>
			</li>
		</ul>		
		<div class="bangding">
			<ul>
				<?php if($member['username']!=null): ?>
				<li><a class="nicheng" href="/index.php/member/home/modify" style="padding-top: 14px;">昵称<br/>已设定</a></li>
				<?php  else: ?>
				<li  style="border-radius:30px;border: 1px solid #d60; "><a style="color: #f60;padding-top: 14px;" class="nicheng" href="/index.php/member/home/modify" style="padding-top: 13px;">昵称<br/>未设定</a></li>
				<?php endif; ?>
				<!--
				<?php if($member['qq']!=null): ?>
				<li  style=""><a class="qq" href="/index.php/member/home/qqclock"><i></i>已绑定</a></li>
				<?php  else: ?>
				<li  style="border-radius:30px;border: 1px solid #d60; "><a style="color: #f60;" class="qq1" href="/index.php/member/home/qqclock"><i></i>未绑定</a></li>
				<?php endif; ?>
				-->
				<?php if($member['email']!=null): ?>
				<li><a class="email" href="/index.php/member/home/mailchecking"><i></i>已绑定</a></li>
				<?php  else: ?>
				<li  style="border-radius:30px;border: 1px solid #d60; "><a style="color: #f60;" class="email1" href="/index.php/member/home/mailchecking"><i></i>未绑定</a></li>
				<?php endif; ?>
				<?php if($member['mobile']!=null): ?>
				<li><a class="tel" href="/index.php/member/home/mobilechecking"><i></i>已绑定</a></li>
				<?php  else: ?>
				<li style="border-radius:30px;border: 1px solid #d60; "><a style="color: #f60;" class="tel1" href="/index.php/member/home/mobilechecking"><i></i>未绑定</a></li>
				<?php endif; ?>

			</ul>
		</div>
	</div>

<div style="height: 100px; border-top: 1px solid #dfdfdf;border-right: 1px solid #dfdfdf;">
	<style>
		.daohang{
			width: 133px;
			height: 48px;
			float: left;
			border-right: 1px solid #dfdfdf;
			border-bottom: 1px solid #dfdfdf;
			text-align: center;
			line-height: 48px;
			color: #888;
		}
		.daohang a{
			text-align: center;
			line-height: 48px;
			color: #888;
			font-size: 14px;
			display: block;
			width: 133px;
			height: 48px;
		}
		.daohang:hover,.daohang a:hover{
			background: #f60;
			color: #fff;
		}
	</style>
	<li class="daohang"><a href="/index.php/member/home/userbuylist">云购记录</a></li>
	<li class="daohang"><a href="/index.php/member/home/orderlist">获得的商品</a></li>
	<li class="daohang"><a href="/index.php/member/home/singlelist">晒单</a></li>
	<li class="daohang"><a href="/index.php/member/home/joingroup">加入的圈子</a></li>
	<li class="daohang"><a href="/index.php/member/home/userfufen">我的积分</a></li>
	<li class="daohang" style="border-right: none;width: 134px;"><a href="/index.php/member/home/userbalance">帐户明细</a></li>
	<li class="daohang"><a href="/index.php/member/home/invitefriends">邀请好友</a></li>
	<li class="daohang"><a href="/index.php/member/home/commissions">佣金明细</a></li>
	<!--<li class="daohang"><a href="/index.php/member/home/cashout">申请提现</a></li>
	<li class="daohang"><a href="/index.php/member/home/record">提现记录</a></li>-->
	<li class="daohang"><a href="/index.php/member/home/modify">编辑资料</a></li>
	<li class="daohang" style="border-right: none;width: 134px;"><a href="/index.php/member/user/cook_end">退出云购</a></li>
</div>
	
</div>
<!--center_center_end-->
<div class="right">				
	<div class="groups-shadow clearfix">
		<div class="R-grtit">
			<h3>圈子热门话题</h3>
		</div>
		<ul class="R-list">
			<?php $ln=1;if(is_array($quanzi)) foreach($quanzi AS $tm): ?>
			<li>
				<p class="groups-t"><a href="<?php echo WEB_PATH; ?>/group/nei/<?php echo $tm['id']; ?>" target="_blank" class="gray"><?php echo $tm['title']; ?></a></p>
				<p class="groups-c gray02"><?php echo qztitle($tm['qzid']); ?><span class="gray03"> | </span><?php echo tiezi($tm['id']); ?>条回复</p>
			</li>
			<?php  endforeach; $ln++; unset($ln); ?>
		</ul>
	</div> 
	<p class="r-line"></p>
	<!-- <div class="gg-content">
		<div class="R-grtit"><h3>公告栏</h3></div>
		<ul class="gg-list">	
			<li><span class="point"></span><span class="info"><a href="http://group.1yyg.com/Topic-621.html" target="_blank" class="gray" title="关于“幸运云购码”计算结果错误的公告">关于“幸运云购码”计算结果错误的公告</a></span></li>
		</ul>
	</div> -->
</div>
<!--center_rjght_end-->

</div>
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
<?php include templates("index","footer");?>