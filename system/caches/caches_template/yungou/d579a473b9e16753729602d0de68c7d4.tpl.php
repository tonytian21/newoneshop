<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo $string; ?></title>
    <meta name="robots" content="noindex, nofollow" />
<style type="text/css">
	*{margin:0;padding:0;}
	html,body{ overflow:hidden}
	body{color:#333;font:12px/1.5 Tahoma,Arial,"<?php echo lang::get_lang('宋体'); ?>",Helvetica,sans-serif;height:auto;width:100%; background-color:#f9f9f9}
	div{margin:0 auto;}
	ul{list-style-type:none;}
	.box{ border:5px solid #f60; width:400px;height: 300px; background-color:#fff;
		  margin-top:15%;overflow:hidden;		
	}
	.box-b{width:400px;overflow:hidden;height: 300px;}
	/*.box-title{ background:<?php if(isset($config['titlebg'])): ?><?php echo $config['titlebg']; ?><?php  else: ?>#f60<?php endif; ?>;height:30px;line-height:25px;_line-height:25px;font-size: 14px;color:<?php if(isset($config['title'])): ?><?php echo $config['title']; ?><?php  else: ?>#fff<?php endif; ?>; padding:0 10px;font-weight:600;}*/
	.box-title{ background:#f60;height:30px;line-height:25px;_line-height:25px;font-size: 14px;color:<?php if(isset($config['title'])): ?><?php echo $config['title']; ?><?php  else: ?>#fff<?php endif; ?>; padding:0 10px;font-weight:600;}
	.box-text{font:12px/1.5 "<?php echo lang::get_lang('微软雅黑'); ?>",Arial,"<?php echo lang::get_lang('宋体'); ?>",Helvetica,sans-serif; font-size:18px;color:#f60;width:400px;		
			  text-align:center; padding:50px 0px; height:auto;word-wrap:break-word;font-weight:600;
			  }
	.box-button{overflow:hidden; text-align:center;margin-top: 50px;}
	.box-button a{  display: inline-block;					
					height:40px;line-height:40px;_line-height:40px;
					text-align: center;
					font-family:"<?php echo lang::get_lang('微软雅黑'); ?>";
					font-size: 16px;
					text-decoration: none;
					padding:0px 10px;
					margin:0px 10px;
					color: #fff;
					background-color: #f60;
					border-radius:10px;
					
    }
	.a-1{ background-color:#eee; color:#666; border:1px solid #dfdbdb;}
	.a-2{ background-color:#eee; color:#666;border:1px solid #dfdbdb;}	
</style>

<script type="text/javascript">

	function closeWindow(){window.open('', '_self', '');window.close();}

var i = <?php echo $time; ?>;	if(i!=0){window.close_id = setInterval(function() {if (i > 0) {document.getElementById('time').innerHTML = i;i = i - 1;} else {
						 location.href="<?php echo $defurl; ?>";	  clearInterval(window.close_id);}}, 1000);}
</script>


</head>



<body>


<div class="box">
	<div class="box-b">
		<div class="box-title"><?php echo lang::get_lang('消息提示'); ?></div>
        <div class="box-text">
        	<?php echo $string; ?>
        </div>
        <div class="box-button"><a class="a-2" href="<?php echo $defurl; ?>"><font id="time" style="color:fff;"><?php echo $time; ?></font><?php echo lang::get_lang('秒后返回上一页面'); ?></a><a class="a-1" href="<?php echo $str_url_two['url']; ?>"><?php echo $str_url_two['text']; ?></a></div> 
        
    </div>
</div>
 
</body>
</html>
