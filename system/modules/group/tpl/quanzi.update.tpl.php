<?php defined('G_IN_ADMIN')or exit('No permission resources.'); ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=lang::get_lang('后台首页')?></title>
<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/global.css" type="text/css">
<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/style.css" type="text/css">
<script src="<?php echo G_GLOBAL_STYLE; ?>/global/js/jquery-1.8.3.min.js"></script>
<script src="<?php echo G_PLUGIN_PATH; ?>/uploadify/api-uploadify.js" type="text/javascript"></script> 
<style>
body{ background-color:#fff}
.textarea{width:400px;height:100px;}
</style>
</head>
<body>
<script language="JavaScript">
$(function(){
	$("form").submit(function(){
		var title=$("#title").val();
		var img=$("#img").val();
		if(title.length<1){
			alert("<?=lang::get_lang('圈子名不能为空')?>");
			return false;
		}
		return true;
	});
})
</script>
<div class="header lr10">
	<?php echo $this->headerment();?>
</div>
<div class="bk10"></div>
<div class="table_form lr10">
<form action="" method="post" enctype="multipart/form-data" id="myform">
<table width="100%" >
    <tr>
    	<td width="100"><?=lang::get_lang('圈子名')?>：</td> 
   		<td><input type="text" name="title"  class="input-text" id="title" value="<?php echo $quanzi['title']; ?>"></input></td>
    </tr>
    <tr>
    	<td><?=lang::get_lang('圈子管理员')?>：</td>
    	<td>
			<input type="text" name="guanli" value="<?php echo $member['email']!=''?$member['email']:$member['mobile']; ?>" class="input-text">(<?=lang::get_lang('请填写邮箱/手机')?>)
		</td>
    </tr>
	<tr>
    	<td><?=lang::get_lang('申请加入圈子')?>：</td>
		<?php if($quanzi['jiaru']=='Y'){ ?>
    	<td>
		<input type="radio" name="jiaru" checked="checked" class="input-text" value="Y"><?=lang::get_lang('是')?>
		<input type="radio" name="jiaru" class="input-text" value="N"><?=lang::get_lang('否')?>
		(<?=lang::get_lang('普通会员是否可以加入圈子')?>)</td>
		<?php }else{ ?>
		<td>
		<input type="radio" name="jiaru" class="input-text" value="Y"><?=lang::get_lang('是')?>
		<input type="radio" name="jiaru" checked="checked" class="input-text" value="N"><?=lang::get_lang('否')?>
		(<?=lang::get_lang('普通会员是否可以加入圈子')?>)</td>
		<?php } ?>
	</tr>
	<tr>
    	<td><?=lang::get_lang('发帖权限')?>：</td>
		<?php if($quanzi['glfatie']=='Y'){ ?>
    	<td>
		<input type="radio" name="glfatie" checked="checked" class="input-text" value="Y"><?=lang::get_lang('是')?>
		<input type="radio" name="glfatie" class="input-text" value="N"><?=lang::get_lang('否')?>
		(<?=lang::get_lang('普通会员是否可以发帖')?>)</td>
		<?php }else{ ?>
		<td>
		<input type="radio" name="glfatie" class="input-text" value="Y"><?=lang::get_lang('是')?>
		<input type="radio" name="glfatie" checked="checked" class="input-text" value="N"><?=lang::get_lang('否')?>
		(<?=lang::get_lang('普通会员是否可以发帖')?>)</td>
		<?php } ?>
	</tr>
      <tr>
    	<td><?=lang::get_lang('圈子头像')?>：</td>
		<td>
           	<input type="text" id="imagetext" name="img" value="<?php echo $quanzi['img']; ?>" class="input-text wid300">
			<input type="button" class="button"
             onClick="GetUploadify('<?php echo WEB_PATH; ?>','uploadify','<?=lang::get_lang('圈子头像')?>','image','quanzi',1,500000,'imagetext')" 
             value="<?=lang::get_lang('上传图片')?>"/>			
        </td>
    </tr>
    <tr>
    	<td><?=lang::get_lang('圈子介绍')?>：</td>
    	<td><textarea  name="jianjie" class="textarea"><?php echo $quanzi['jianjie']; ?></textarea></td>
	</tr>
	<tr>
    	<td><?=lang::get_lang('圈子公告')?>：</td>
    	<td><textarea  name="gongao" class="textarea"><?php echo $quanzi['gongao']; ?></textarea></td>
	</tr>
</table>
   	<div class="bk15"></div>
	<input class="button" type="submit" name="submit" value="<?=lang::get_lang('提交')?>" />
</form>
</div>
</body>
</html> 
