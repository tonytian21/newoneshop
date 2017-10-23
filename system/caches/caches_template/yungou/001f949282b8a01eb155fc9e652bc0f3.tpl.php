<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><?php include templates("index","header");?>
<div class="main-content clearfix">
<?php include templates("member","left");?>
<link rel="stylesheet" type="text/css" href="<?php echo G_TEMPLATES_STYLE; ?>/css/user.message.css"/>
<div class="R-content">
	<div class="member-t">
		<h2>加入的圈子</h2> <span id="spanCount">(<?php echo count($group); ?>)</span>
	</div>
	<div class="groups-list clearfix">
		<?php if($group==null): ?>
		<div class="tips-con"><i></i>您还未有发表话题哦</div>
		<?php  else: ?>
			<ul id="ulGroupList">
			<?php $ln=1;if(is_array($group)) foreach($group AS $v): ?>
			<li class="">
				<div class="groups-img"><a target="_blank" href="<?php echo WEB_PATH; ?>/group/show/<?php echo $v['id']; ?>" class="fl-img"><img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $v['img']; ?>" border="0"></a></div>
				<div class="groups-info">
					<p class="groups-name"><a target="_blank" href="<?php echo WEB_PATH; ?>/group/show/<?php echo $v['id']; ?>" rel="nofollow" class="blue"><b><?php echo $v['title']; ?></b></a></p>
					<p class="groups-class gray02">成员：<?php echo $v['chengyuan']; ?>&nbsp;&nbsp;&nbsp;&nbsp;话题：<?php echo $v['tiezi']; ?></p>
					<p class="groups-intro gray02"><?php echo $v['jianjie']; ?></p>
				</div>
			</li>
			<?php  endforeach; $ln++; unset($ln); ?>
			</ul>
		<?php endif; ?>
	</div>
	<div id="divPageNav" class="page_nav"></div>
</div>

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