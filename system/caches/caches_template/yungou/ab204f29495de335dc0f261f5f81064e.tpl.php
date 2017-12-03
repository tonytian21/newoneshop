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

	<form id="toPayForm" name="toPayForm" action="<?php echo WEB_PATH; ?>/member/cart/addmoney" method="post" target="_blank">

		<div class="R-content">

			<div class="member-t">

				<h2><?php echo lang::get_lang('账户充值'); ?></h2>

			</div>

			<div class="select"> <b class="gray01"><?php echo lang::get_lang('请您选择充值金额'); ?></b>
            <input id="submit_ok" class="bluebut imm" type="button" onclick="location.href='<?php echo WEB_PATH; ?>/member/home/userrechargedk'" name="submit" value="<?php echo lang::get_lang('充值卡'); ?>" title="<?php echo lang::get_lang('充值卡'); ?>">

				<ul id="ulMoneyList">

					<li class="selected" style="margin-left:0;">

						<input  type="radio" id="rd10" name="money" value="10" checked="checked">

						<label for="rd10">

							<?php echo lang::get_lang('充值'); ?> <strong><?php echo lang::get_lang('￥'); ?></strong> 10 <i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="50" id="rd50">

						<label for="rd50">

							<?php echo lang::get_lang('充值'); ?> <strong><?php echo lang::get_lang('￥'); ?></strong>

							50 <i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="100" id="rd100">

						<label for="rd100">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							100

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="200" id="rd200">

						<label for="rd200">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							200

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="500" id="rd500">

						<label for="rd500">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							500

							<i></i>

						</label>

					</li>

					<li style="margin-left:0;">

						<input type="radio" name="money" value="1000" id="rd1000">

						<label for="rd1000">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							1000

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="3000" id="rd3000">

						<label for="rd3000">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							3000

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="5000" id="rd5000">

						<label for="rd5000">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							5000

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="10000" id="rd10000">

						<label for="rd10000">

							<?php echo lang::get_lang('充值'); ?>

							<strong><?php echo lang::get_lang('￥'); ?></strong>

							10000

							<i></i>

						</label>

					</li>

					<li class="custom">

						<input type="radio" value="0" name="money" id="rdOther">

						<label for="rdOther">

							<?php echo lang::get_lang('其它金额'); ?>

							<i></i>

						</label>

						<input value="" id="txtOtherMoney" type="text" class="enter" maxlength="7" />

					</li>

				</ul>

			</div>

			<div class="charge_money_list">
			<p class="leix"><?php echo lang::get_lang('支付平台支付：'); ?></p>
		<ul class="payment yeepay_click">		

          <?php $ln=1;if(is_array($paylist)) foreach($paylist AS $pay): ?>

			<li>

				<input checked="checked" type="radio" value="<?php echo $pay['pay_id']; ?>" name="account">               

                <img style="border:1px solid #eee; padding:1px; margin-right:20px;" height="35px" width="100px" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $pay['pay_thumb']; ?>">

                

            </li>

           <?php  endforeach; $ln++; unset($ln); ?>             

		</ul>

		<p class="much"><?php echo lang::get_lang('应付金额：'); ?><span class="yf"><strong><?php echo lang::get_lang('￥'); ?></strong><span id="Money">10</span></span></p>

		<h6>			

				<input type="hidden" id="hidPayName" name="payName" value="">

				<input type="hidden" id="hidPayBank" name="payBank" value="0">

				<input type="hidden" id="hidMoney" name="money" value="10">

				<input id="submit_ok" class="bluebut imm" type="submit" name="submit" value="<?php echo lang::get_lang('立即充值'); ?>" title="<?php echo lang::get_lang('立即充值'); ?>">

			</form>

		</h6>

		<!--<div id="payAltBox" style="position: absolute;">

			<div class="prompt_box">

			<p class="ts">

					<?php echo lang::get_lang('请您在新开的页面上完成支付！'); ?>

					</p>

				

				<p class="pic"> <em></em>

					<?php echo lang::get_lang('请您在新开的页面上完成支付！'); ?>

				</p>

				<p class="ts">

					<?php echo lang::get_lang('付款完成之前，请不要关闭本窗口！'); ?>

					<br><?php echo lang::get_lang('完成付款后跟据您的个人情况完成此操作！'); ?></p>

				<ul>

					<li>

						<a href="<?php echo WEB_PATH; ?>/member/home/userbalance" class="look" title="<?php echo lang::get_lang('查看充值记录'); ?>"><?php echo lang::get_lang('查看充值记录'); ?></a>

					</li>

					<li>

						<a href="javascript:gotoClick();" class="look" id="btnReSelect" title="<?php echo lang::get_lang('重选支付方式'); ?>"><?php echo lang::get_lang('重选支付方式'); ?></a>

					</li>

				</ul>

				

			</div>

		</div>-->

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