<?php defined('G_IN_ADMIN')or exit('No permission resources.'); ?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title></title>

<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/global.css" type="text/css">

<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/style.css" type="text/css">

<style type="text/css">

tr{height:40px;line-height:40px}

.dingdan_content{width:650px;border:1px solid #d5dfe8;background:#eef3f7;float:left; padding:20px;}

.dingdan_content li{ float:left;width:310px;}

.dingdan_content_user{width:650px;border:1px solid #d5dfe8;background:#eef3f7;float:left; padding:20px;}

.dingdan_content_user li{ line-height:25px;}

.api_b{width:80px; display:inline-block;font-weight:normal}

.yun_ma{ word-break:break-all; width:200px; background:#fff; overflow:auto; height:100px; border:5px solid #09F; padding:5px;}

select{height: 30px; padding-left: 15px; padding-right: 15px; border-radius: 5px;margin-top: 10px; margin-bottom: 10px;}
.input-text{border-radius: 3px; margin-top: 10px; margin-bottom: 10px;}

</style>

</head>

<body>

<div class="header-title lr10">

	<b>订单详情</b>

</div>

<div class="bk10"></div>

<div class="table-list lr10">

<!--start-->

		<?php

	

		

			$shopid= $record['shopid'];		

			$shop = $this->db->GetOne("SELECT * FROM `@#_shoplist` A inner join `@#_shoplist_term` B on A.gid=B.sid  left join `@#_shoplist_en` sen on sen.egid=A.gid  where `id`='$shopid'");

			

			$qishu=array();

			

			if(!$shop['q_uid']){				

				$qishu['ren']='还未开奖';

				$qishu['ma']='还未开奖';

			}else{

				$qishu['ren']=get_user_name($user);

				$qishu['ma']=$shop['q_user_code'];

			}

		

		?>

		<div class="dingdan_content">

			<h3 style="clear:both;display:block; line-height:30px;"><?php echo $shop['title']; ?></h3>			

			<li><b class="api_b">剩余次数：</b><?php echo $shop['shenyurenshu']; ?> 人次	</li>		

			<li><b class="api_b">总需次数：</b><?php echo $shop['zongrenshu']; ?>人次 	</li>		

			<li><b class="api_b">商品期数：</b>第 <?php echo $shop['qishu']; ?> 期	</li>

			<li><b class="api_b">商品价格：</b><?php echo $shop['money']; ?></li>

			<li><b class="api_b"><font color="#ff0000">中奖人</font></b><?php echo $qishu['ren']; ?></li>

			<li><b class="api_b"><font color="#ff0000">中奖云购码</font></b><?php echo $qishu['ma']; ?></li>	

			<div class="bk10"></div>

			<li><b class="api_b">购买次数：</b><?php echo $record['gonumber']; ?>人次</li>

			<li class="yun_ma"><b class="api_b">获得云购码：</b><br/>			

			<?php  

				$record['goucode'] = str_ireplace($qishu['ma'],"<font color='red'>$qishu[ma]</font>",$record['goucode']);

				echo str_ireplace(',',"&nbsp;&nbsp;&nbsp;&nbsp;",$record['goucode']);

			?>

            </li>	

			</li>

		</div>


			

		<div class="dingdan_content_user" style="margin-left: 20px;">

			<li><b class="api_b">购买人ID：</b> <?php echo $user['uid'];?></li>

			<li><b class="api_b">购买人昵称：</b> <?php echo $user['username'];?></li>

			<li><b class="api_b">购买人邮箱：</b><?php echo $user['email'];?></li>		

			<li><b class="api_b">购买人手机：</b><?php echo $user['mobile'];?></li>

			<li><b class="api_b">购买人Q Q：</b><?php echo $user_dizhi['qq'];?></li>					

			<li><b class="api_b">购买时间：</b><?php echo date("Y-m-d H:i:s",$go_time);?></li>	

            <li><b class="api_b">收货信息：</b><?php 

			if($user_dizhi){

				echo $user_dizhi['sheng'].' - '.$user_dizhi['shi'].' - '.$user_dizhi['xian'].' - '.$user_dizhi['jiedao'];

				echo "&nbsp;&nbsp;&nbsp;邮编:".$user_dizhi['youbian'];				

				echo "&nbsp;&nbsp;&nbsp;收货人:".$user_dizhi['shouhuoren'];
				
				echo "&nbsp;&nbsp;&nbsp;电话:".$user_dizhi['mobile'];

				echo "&nbsp;&nbsp;&nbsp;QQ:".$user_dizhi['qq'];
				

			}else{

				echo "该用户未填写收货信息,请自行联系买家！";

			}

			?></li>			

		</div>			

		<div class="bk10"></div>

        <?php 

			if($record['huode']){			

		?>

        

		<div class="dingdan_content_user">

			<?php $status=explode(",",$record['status']); ?>

			<form action="" method="post">

			<input type="hidden" name="code" value="<?php echo $record['id']; ?>"/>

			<li><b class="api_b">购买方式:</b> <font color="#0c0"><?php echo $record['pay_type']; ?>付款</font></li>

			<li><b class="api_b">当前状态:</b> <font color="#0c0"><?php echo $record['status']; ?></font></li>		

			<li><b class="api_b">订单状态:</b>

				<select name="status">
					<option value="<?php echo $status[1]; ?>"><?php echo $status[1]; ?></option>

					<option value="未发货">未发货</option>

					<option value="已发货">已发货</option>

					<option value="已完成">已完成</option>

					<option value="已作废">已作废</option>										

				 </select>

			</li>

			<li><b class="api_b">物流公司:</b>

			<select name="company">


				<option value="中国邮政" <?php if($record['company'] == '中国邮政'){ echo 'selected';}; ?>>中国邮政</option>

				<option value="申通快递" <?php if($record['company'] == '申通快递'){ echo 'selected';}; ?>>申通快递</option>

				<option value="圆通速递" <?php if($record['company'] == '圆通速递'){ echo 'selected';}; ?>>圆通速递</option>

				<option value="顺丰速运" <?php if($record['company'] == '顺丰速运'){ echo 'selected';}; ?>>顺丰速运</option>

				<option value="韵达快递" <?php if($record['company'] == '韵达快递'){ echo 'selected';}; ?>>韵达快递</option>

				<option value="天天快递" <?php if($record['company'] == '天天快递'){ echo 'selected';}; ?>>天天快递</option>

				<option value="中通速递" <?php if($record['company'] == '中通速递'){ echo 'selected';}; ?>>中通速递</option>

				<option value="增益速递" <?php if($record['company'] == '增益速递'){ echo 'selected';}; ?>>增益速递</option>										

			 </select>

			</li>

			<li><b class="api_b">快递单号:</b><input type="text" name="company_code" value="<?php echo $record['company_code']; ?>" class="input-text wid150"> 填写物流公司快递单号</li>

			<li><b class="api_b">快递运费:</b><input type="text" name="company_money" value="<?php echo $record['company_money']; ?>"  class="input-text wid150"> 元 </li>

			

			<li><input type="submit" class="button" value="  更新  " name="submit" /></li>		

			</form>

		</div>

        <?php } ?>

</div><!--table-list end-->



<script>

	

</script>

</body>

</html> 