<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><?php include templates("index","header");?>
<div class="main-content clearfix">
<?php include templates("member","left");?>
<link rel="stylesheet" type="text/css" href="<?php echo G_TEMPLATES_STYLE; ?>/css/user.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo G_TEMPLATES_STYLE; ?>/css/user.message.css"/>
<script>
$(function(){
	var je=$("#ulMoneyList li");
	var dx=/\D/;
	je.click(function(){
		je.removeClass("selected");
		je.find("input").removeAttr("checked");
		var radio=je.index(this);
			je.eq(radio).find("input").attr('checked','checked');
			je.eq(radio).addClass("selected");
		var valx=je.eq(radio).find("input").val();
		$("#Money").text(valx);
		$("#hidMoney").val(valx);
	});
	var tel=$("#txtOtherMoney").val();
	$("#txtOtherMoney").keyup(function(){	
		if(dx.test($("#txtOtherMoney").val())){
			$("#txtOtherMoney").val(tel);			
		}else{
			tel=$("#txtOtherMoney").val();
		}
		$("#Money").text(tel);
		$("#hidMoney").val(tel);
	}); 
})
</script>
<form id="toPayForm" name="toPayForm" action="<?php echo WEB_PATH; ?>/cardrecharge/cardrcg/" method="post">
<div class="R-content">
	<div class="member-t"><h2>账户充值</h2></div>
	<div class="select">
		<input id="submit_ok" class="bluebut imm" type="button" onclick="location.href='<?php echo WEB_PATH; ?>/member/home/userrecharge'" name="submit" value="在线充值" title="在线充值">
		<ul id="ulMoneyList">
		<input name="type" type="hidden" placeholder="" value="pc" style="padding-left: 50px;">
			<li class="custom"><label for="rdOther">充值卡号：</label><input style="" name="code" type="text" class="enter"/></li>
			<li class="custom"><label for="rdOther">充值密码：</label><input value="" name="codepwd" type="text" class="enter"/></li>
		</ul>
	</div>			
				<input type="hidden" id="hidPayName" name="payName" value="">
				<input type="hidden" id="hidPayBank" name="payBank" value="0">
				<input type="hidden" id="hidMoney" name="money" value="10">
				<input id="submit_ok" class="bluebut imm" type="submit" name="recharge" value="立即充值" title="立即充值">
			</form>
		</div>
	</div>  
</div>
</div>
<script>
$(function(){
		
	$("#submit_ok").click(function(){	
		if(!this.cc){
			this.cc = 1;		
			return true;
		}else{		
			return false;
		}		
		return false;
	});
	
	$(".yeepay_click li>img").click(function(){			
			$(this).prev().attr("checked",'checked');
	});

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
<?php include templates("index","footer");?>