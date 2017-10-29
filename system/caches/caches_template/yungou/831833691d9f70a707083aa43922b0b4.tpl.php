<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><style type="text/css">
	.m_all_sort{
		display: none!important;
	}

	.addAddress{
		margin-left:50px;
	}
</style>
<link rel="stylesheet" type="text/css" href="<?php echo G_TEMPLATES_STYLE; ?>/css/user.message.css"/>
<script type="text/javascript" src="<?php echo G_TEMPLATES_JS; ?>/worldAddress.js"></script>
<?php include templates("index","header");?>
<div class="login_layout">    
	<div class="login_title">
		<h2>新用户注册</h2>
		<ul class="login_process">
			<li><b>1</b>填写注册信息</li>
			<li class="login_arrow"></li>
			<li><b>2</b>验证邮箱</li>
			<li class="login_arrow"></li>
			<li class="login_processCur"><b>3</b><?php echo $tiebu; ?></li>
		</ul>
	</div>
	<div class="login_Content">		
		<div class="login_CMobile_Complete" style="padding:70px 0 10px 350px;">
		<?php if(empty($error)): ?>
			<?php if(empty($guoqi)): ?>
			<p>恭喜你<span class="orange"><?php echo $success; ?></span>,请完善个人信息</p>
			<?php  else: ?>
			<p style="height:36px;font-weight:bold;"><span class="orange"><?php echo $guoqi; ?></span></p>
			<p><a style=" font-size:12px;" id="hylinkLoginPage" class="blue Fb" href="<?php echo WEB_PATH; ?>/member/user/emailcheck/<?php echo $name; ?>">重新发送验证邮件</a></p>
			<?php endif; ?>
		<?php  else: ?>
			<p style="height:36px;font-weight:bold;"><span class="orange"><?php echo $error; ?></span></p>
		<?php endif; ?>
		</div>	
		<?php if(empty($guoqi) && empty($error)): ?>
		<div  class="addAddress" style="border:0;">
		<form class="registerform" method="post" action="<?php echo WEB_PATH; ?>/member/user/emailok"  style="float: none;padding-top: 0px;width: 700px;">
		<table border="0" cellpadding="0" cellspacing="0">
		<tbody>
		<tr>
			<script>var s=["county","province","city"];</script>
			<td><label>所在地区：</label></td>
			<td>
				<select datatype="*" style="width: 116px;font-size: 14px;text-align: center;" nullmsg="请选择有效的国家" class="select iRequire" id="county" runat="server" name="guojia"></select>
                <select datatype="*" style="width: 116px;font-size: 14px;text-align: center;" nullmsg="请选择有效的省份" class="select iRequire" id="province" runat="server" name="sheng"></select>
                <select datatype="*" style="width: 116px;font-size: 14px;text-align: center;" nullmsg="请选择有效的市" class="select iRequire" id="city" runat="server" name="shi"></select> <em id="ship_address_valid_msg" class="red">*</em>
                <script type="text/javascript">setup()</script>
			</td>
			<td><div style="margin-top: 0px!important;" class="Validform_checktip"></div></td>
		</tr>
		<tr>
			<td><label>街道地址：</label></td>
			<td>
				<input datatype="*1-100" nullmsg="请填街道地址！" errormsg="范围在100之间！" name="jiedao" type="text" class="street" maxlength="100" />
				<em id="ship_address_valid_msg" class="red">*</em> 			
			</td>
			<td><div style="margin-top: 0px!important;" class="Validform_checktip">(不需要重复填写省/市/区)</div></td>
		</tr>
		<tr>
			<td><label>收货人：</label></td>
			<td>
				<input datatype="*" nullmsg="收货人不能为空" name="shouhuoren" type="text" maxlength="20" id="txt_ship_name" class="inputTxt" value="">
				<em class="red" id="ship_name_valid_msg">*</em>
			</td>
			<td><div style="margin-top: 0px!important;" class="Validform_checktip"></div></td>
		</tr>
		<tr>
			<td><label>手机号码：</label></td>
			<td>
				<input datatype="m" nullmsg="手机号不能为空" errormsg="手机号不对" name="mobile" type="text" id="txt_ship_mb" value="" class="inputTxt" maxlength="11">
				<em id="ship_mb_valid_msg" class="red">*</em>
				<td><div style="margin-top: 0px!important;" class="Validform_checktip"></div></td>
			</td>
		</tr>
		<tr>
			<td><label>&nbsp;</label></td>
			<td>
				<input type="hidden" name="uid" value="<?php echo $member['uid']; ?>">
                <input type="hidden" name="dosubmit" value="1">
				<input style="margin-left:250px;" name="submit" type="submit" class="orangebut" id="btn_consignee_save" value="保存" title="保存"> 
			</td>
		</tr>
		</tbody>
		</table>
		</form>
	</div>	<?php endif; ?>
	</div>

</div>
<?php include templates("index","footer");?>