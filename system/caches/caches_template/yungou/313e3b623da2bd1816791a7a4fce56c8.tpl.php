<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><script type="text/javascript">
    $(document).ready(function(){
        var duilian = $("div.duilian");
        var duilian_close = $("a.duilian_close");
        var screen_w = screen.width;
        if(screen_w>1024){duilian.show();}
        $(window).scroll(function(){
            var scrollTop = $(window).scrollTop();
            duilian.stop().animate({top:scrollTop+200});
        });
        duilian_close.click(function(){
            $(this).parent().hide();
            return false;
        });
    });
</script>
<style>
    /*<?php echo lang::get_lang('下面是对联广告的'); ?>css<?php echo lang::get_lang('代码'); ?>*/
    .duilian{z-index: 999;top:200px;position:absolute; width:<?php echo $ad_area['width']; ?>px; overflow:hidden; display:none;}
    .duilian_left{ left:90px;}
    .duilian_right{right:90px;}
    .duilian_con{width:<?php echo $ad_area['width']; ?>px; height:<?php echo $ad_area['height']; ?>px; overflow:hidden;}
    .duilian_close{ width:100%; height:24px; line-height:24px; text-align:center; display:block; font-size:13px; color:#555555; text-decoration:none;background: #ccc;}
</style>


<!--<div class="duilian duilian_left">
    <div class="duilian_con"><a target="_blank" href="<?php echo G_WEB_PATH; ?>/weixin/index.html"><img width="<?php echo $ad_area['width']; ?>" height="<?php echo $ad_area['height']; ?>" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $couplet_img['0']; ?>"></a></div>
    <a href="#" class="duilian_close">X&nbsp<?php echo lang::get_lang('关闭'); ?></a>
</div>
<div class="duilian duilian_right">
    <div class="duilian_con"><a target="_blank" href="<?php echo G_WEB_PATH; ?>/app/index.html"><img width="<?php echo $ad_area['width']; ?>" height="<?php echo $ad_area['height']; ?>" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $couplet_img['1']; ?>"></a></div>
    <a href="#" class="duilian_close">X<?php echo lang::get_lang('关闭'); ?></a>
</div>-->
