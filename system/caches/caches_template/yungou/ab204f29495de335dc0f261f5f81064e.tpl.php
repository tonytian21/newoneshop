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

				<h2>账户充值</h2>

			</div>

			<div class="select"> <b class="gray01">请您选择充值金额</b>
            <input id="submit_ok" class="bluebut imm" type="button" onclick="location.href='<?php echo WEB_PATH; ?>/member/home/userrechargedk'" name="submit" value="充值卡" title="充值卡">

				<ul id="ulMoneyList">

					<li class="selected" style="margin-left:0;">

						<input  type="radio" id="rd10" name="money" value="10" checked="checked">

						<label for="rd10">

							充值 <strong>￥</strong> 10 <i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="50" id="rd50">

						<label for="rd50">

							充值 <strong>￥</strong>

							50 <i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="100" id="rd100">

						<label for="rd100">

							充值

							<strong>￥</strong>

							100

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="200" id="rd200">

						<label for="rd200">

							充值

							<strong>￥</strong>

							200

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="500" id="rd500">

						<label for="rd500">

							充值

							<strong>￥</strong>

							500

							<i></i>

						</label>

					</li>

					<li style="margin-left:0;">

						<input type="radio" name="money" value="1000" id="rd1000">

						<label for="rd1000">

							充值

							<strong>￥</strong>

							1000

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="3000" id="rd3000">

						<label for="rd3000">

							充值

							<strong>￥</strong>

							3000

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="5000" id="rd5000">

						<label for="rd5000">

							充值

							<strong>￥</strong>

							5000

							<i></i>

						</label>

					</li>

					<li>

						<input type="radio" name="money" value="10000" id="rd10000">

						<label for="rd10000">

							充值

							<strong>￥</strong>

							10000

							<i></i>

						</label>

					</li>

					<li class="custom">

						<input type="radio" value="0" name="money" id="rdOther">

						<label for="rdOther">

							其它金额

							<i></i>

						</label>

						<input value="" id="txtOtherMoney" type="text" class="enter" maxlength="7" />

					</li>

				</ul>

			</div>

			<div class="charge_money_list">

				<!--<p class="title gray01">请选择支付方式</p>

			<p class="leix">银行支付：</p>

			-->

	<?php 

        	$bank1 = $this->db->GetOne("select * from `@#_caches` where `key` = 'pay_bank_type'");

            $bank2 = $this->db->GetOne("select * from `@#_pay` where `pay_class` = '$bank1[value]'");

            if($bank1 && $bank2['pay_start'] ==1){

	 ?>		

	<?php if($bank1['value'] == 'tenpay'): ?>

			<ul class="payment" style="border-bottom:1px dashed #e6e7e8;">

				<input type="hidden" name="pay_bank" value="tenpay"  />

				<li class="top">

					<input type="radio" value="CMB" name="account" id="bankType1001" checked="checked"/>

					<label for="bankType1001">

						<span class="zh_bank"></span>

					</label>

					<input type="radio" value="ICBC" name="account" id="bankType1002"/>

					<label for="bankType1002">

						<span class="gh_bank"></span>

					</label>

					<input type="radio" value="CCB" name="account" id="bankType1003"/>

					<label for="bankType1003">

						<span class="jh_bank"></span>

					</label>

					<input type="radio" value="ABC" name="account" id="bankType1005"/>

					<label for="bankType1005">

						<span class="nh_bank"></span>

					</label>

				</li>



				<li class="top">

					<input type="radio" value="SPDB" name="account" id="bankType1004"/>

					<label for="bankType1004">

						<span class="pf_bank"></span>

					</label>

					<input type="radio" value="SDB" name="account" id="bankType1008"/>

					<label for="bankType1008">

						<span class="sf_bank"></span>

					</label>

					<input type="radio" value="CIB" name="account" id="bankType1009"/>

					<label for="bankType1009">

						<span class="xy_bank"></span>

					</label>

					<input type="radio" value="BOB" name="account" id="bankType1032"/>

					<label for="bankType1032">

						<span class="bj_bank"></span>

					</label>

				</li>



				<li class="top">

					<input type="radio" value="CEB" name="account" id="bankType1022"/>

					<label for="bankType1022">

						<span class="gd_bank"></span>

					</label>

					<input type="radio" value="CMBC" name="account" id="bankType1006"/>

					<label for="bankType1006">

						<span class="ms_bank"></span>

					</label>

					<input type="radio" value="CITIC" name="account" id="bankType1021"/>

					<label for="bankType1021">

						<span class="zx_bank"></span>

					</label>

					<input type="radio" value="GDB" name="account" id="bankType1027"/>

					<label for="bankType1027">

						<span class="gf_bank"></span>

					</label>

				</li>



				<li class="top">

					<input type="radio" value="PAB" name="account" id="bankType1010"/>

					<label for="bankType1010">

						<span class="pa_bank"></span>

					</label>

					<input type="radio" value="BOC" name="account" id="bankType1052"/>

					<label for="bankType1052">

						<span class="zg_bank"></span>

					</label>

					<input type="radio" value="COMM" name="account" id="bankType1020"/>

					<label for="bankType1020">

						<span class="jt_bank"></span>

					</label>

				</li>

			</ul>

			<?php endif; ?>

            <?php if($bank1['value'] == 'yeepay'): ?>

			<style>

				.yeepay_bank img{ border:1px solid #eee; padding:2px; width:130px; height:35px; float:left; margin-right:20px;}

				.yeepay_bank input{ float:left;}

			</style>

			<ul class="payment yeepay_click" style="border-bottom:1px dashed #e6e7e8;">

				<input type="hidden" name="pay_bank" value="yeepay"  />

				<li class="top yeepay_bank">

					<input type="radio" value="ICBC-NET-B2C" name="account" checked="checked" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/ICBC.png">

					<input type="radio" value="CCB-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/CCB.png">

					<input type="radio" value="ABC-NET-B2C" name="account"  />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/ABC.png">

					<input type="radio" value="CMBCHINA-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/CMBCHINA.png"></li>

				<li class="top yeepay_bank">

					<input type="radio" value="BOC-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/BOC.png">

					<input type="radio" value="BOCO-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/JIAOTONG.png">

					<input type="radio" value="CEB-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/CEB.png">

					<input type="radio" value="GDB-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/GDB.png"></li>

				<li class="top yeepay_bank">

					<input type="radio" value="POST-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/PSBC.png">

					<input type="radio" value="CMBC-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/CMBC.png">

					<input type="radio" value="PINGANBANK-NET" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/SZPA.png">

					<input type="radio" value="BCCB-NET-B2C" name="account" />

					<img src="<?php echo G_TEMPLATES_STYLE; ?>/images/bank/BCCB.png"></li>

			</ul>

			<?php endif; ?>

			<?php 

				}

			 ?>

		<p class="leix">支付平台支付：</p>

		<ul class="payment yeepay_click">		

          <?php $ln=1;if(is_array($paylist)) foreach($paylist AS $pay): ?>

			<li>

				<input checked="checked" type="radio" value="<?php echo $pay['pay_id']; ?>" name="account">               

                <img style="border:1px solid #eee; padding:1px; margin-right:20px;" height="35px" width="100px" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $pay['pay_thumb']; ?>">

                

            </li>

           <?php  endforeach; $ln++; unset($ln); ?>             

		</ul>

		<p class="much">应付金额：<span class="yf"><strong>￥</strong><span id="Money">10</span></span></p>

		<h6>			

				<input type="hidden" id="hidPayName" name="payName" value="">

				<input type="hidden" id="hidPayBank" name="payBank" value="0">

				<input type="hidden" id="hidMoney" name="money" value="10">

				<input id="submit_ok" class="bluebut imm" type="submit" name="submit" value="立即充值" title="立即充值">

			</form>

		</h6>

		<!--<div id="payAltBox" style="position: absolute;">

			<div class="prompt_box">

			<p class="ts">

					请您在新开的页面上完成支付！

					</p>

				

				<p class="pic"> <em></em>

					请您在新开的页面上完成支付！

				</p>

				<p class="ts">

					付款完成之前，请不要关闭本窗口！

					<br>完成付款后跟据您的个人情况完成此操作！</p>

				<ul>

					<li>

						<a href="<?php echo WEB_PATH; ?>/member/home/userbalance" class="look" title="查看充值记录">查看充值记录</a>

					</li>

					<li>

						<a href="javascript:gotoClick();" class="look" id="btnReSelect" title="重选支付方式">重选支付方式</a>

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