<?php defined('G_IN_ADMIN')or exit('No permission resources.'); ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=lang::get_lang('后台首页')?></title>
<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/global.css" type="text/css">
<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/style.css" type="text/css">
<style>
body{ background-color:#fff}
</style>
</head>
<body>
<script>
function tiezi(id){
	if(confirm("<?=lang::get_lang('您确认要删除帖子')?>")){
		window.location.href="<?php echo WEB_PATH;?>/group/quanzi/del_tiezi/"+id;
	}
}
</script>
<div class="header lr10">
	<?php echo $this->headerment();?>
</div>
<div class="bk10"></div>
<div class="table-list lr10">

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mgr_table">
	<tr class="thead" align="center">
		<td width="5%" height="30">ID</td>
		<td width="10%"><?=lang::get_lang('加入的圈子')?></td>
		<td width="20%"><?=lang::get_lang('标题')?></td>
		<td width="20%"><?=lang::get_lang('内容')?></td>
		<td width="5%"><?=lang::get_lang('回复')?></td>
		<td width="5%"><?=lang::get_lang('点击量')?></td>
		<td width="10%"><?=lang::get_lang('置顶')?></td>
		<td width="15%"><?=lang::get_lang('管理')?></td>
	</tr>
	<?php foreach($tiezi AS $v) { ?>
	<tr align="center" class="mgr_tr">
		<td height="30"><?php echo $v['id'];?></td>
		<td><?php 
		foreach($quanzi AS $qz) {
			if($v['qzid']==$qz['id']){	
				echo $qz['title'];
			}
		}
		?></td>
		<td><?php echo _strcut($v['title'],25);?></td>
		<td class="number"><?php echo _strcut($v['neirong'],25);?></td>
		<td><?php echo $v['hueifu'];?></td>
		<td><?php echo $v['dianji'];?></td>		
		<td><?php if($v['zhiding']=='N'){
			echo lang::get_lang('未置顶');
		}else{
			echo lang::get_lang('置顶');
		}		
		?></td>
		<td class="action">
		<span>[<a href="<?php echo WEB_PATH;?>/group/quanzi/tiezi_update/<?php echo $v['id'];?>"><?=lang::get_lang('修改')?></a>]</span>
		<span>[<a onclick="tiezi(<?php echo $v['id'];?>)" href="javascript:;"><?=lang::get_lang('删除')?></a>]</span>
		</td>		
	</tr>
	<?php } ?> 
</table>

<?php if($total>$num) {?> 
<div id="pages"><ul><li><?=lang::get_lang('共')?> <?php echo $total; ?> <?=lang::get_lang('条')?></li><?php echo $page->show('one','li'); ?></ul></div>

<?php } ?> 	
</body>
</html> 
