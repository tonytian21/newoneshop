<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><div style="position: absolute;background-color: #fff;top: 0px;width: 550px;padding-bottom: 20px;">
<p style="font-size:18px;margin-top: 15px;color:#333;height:25px; overflow: hidden;text-align: center;">
		<span class="f24">(第<?php echo $item['qishu']; ?>期)</span>
		<span  class="f24"><?php echo $item['title']; ?></span>
		</p>
			<p class="Det_money" style="text-align: center;padding: 15px 0;">价值：<span class="rmbgray"><?php echo $item['money']; ?></span></p>
</div>
<div id="divLotteryTimer" class="Announced_Frame">
	<div class="Announced_FrameTin">已满员，揭晓结果即将公布</div>
	<div class="Announced_FrameCode">
		<!--
			<div class="Announced_FrameClock">
		<img src="<?php echo G_TEMPLATES_IMAGE; ?>/Announced_Clock.gif" border="0" alt=""></div>
	-->
	<ul class="Announced_FrameClockMar">
		<li id="liMinute1" class="Code_9">
			 <b></b>
		</li>
		<li id="liMinute2" class="Code_9">
			<b></b>
		</li>
		<li class="Code_Point">
			
			<b></b>
		</li>
		<li id="liSecond1" class="Code_9">
			
			<b></b>
		</li>
		<li id="liSecond2" class="Code_9">
			
			<b></b>
		</li>
		<li class="Code_Point">
			
			<b></b>
		</li>
		<li id="liMilliSecond1" class="Code_9">
			
			<b></b>
		</li>
		<li id="last" class="Code_9">
				
			<b></b>
		</li>
	</ul>
</div>
<div class="Announced_FrameGet">
	<p style="width: 235px;margin: 0;border-radius: 20px;height: 110px;" class="Announced_FrameLanguage">
		<img id="imgFunny" src="<?php echo G_TEMPLATES_IMAGE; ?>/10.gif" border="0" alt=""></p>
</div>
<div class="Announced_FrameBm"></div>
</div>


<div id="divLotteryTiming" class="Announced_Frame" style="display:none;background: #fff2b7 none repeat scroll 0 0;
    border-radius: 20px;
    height: 110px;
    margin: 10px 0 auto;
    padding: 22px 15px 15px;
    width: 515px;">
<div class="Announced_FrameTin">正在计算...</div>
<div class="Announced_FrameCal" style="background-color: #fff;
    background-position: 0 0;
    border: 1px solid #ffbc70;
    border-radius: 20px;
    float: left;
    height: 110px;
    margin: 0 5px 0 auto;
    position: relative;
    width: 250px;">
	<span>
		<img style="width: 200px;margin-top: 45px;height: 28px;" src="<?php echo G_TEMPLATES_IMAGE; ?>/Announced_4.gif" border="0" alt=""></span>
</div>
<div class="Announced_FrameGet">
	<p style="width: 235px;margin: 0;border-radius: 20px;height: 110px;" class="Announced_FrameLanguage">
		<img id="imgFunny" src="<?php echo G_TEMPLATES_IMAGE; ?>/10.gif" border="0" alt=""></p>
</div>
<div class="Announced_FrameBm"></div>
</div>
<div id="span_a"></div>
<div id="span_b"></div>

<script type="text/javascript">	 
function show_date_time_location(){
	window.setTimeout(function(){
		$("#divLotteryTimer").hide();
		$("#divLotteryTiming").show();	
		$.post("<?php echo WEB_PATH; ?>/api/getshop/lottery_shop_set/",{"lottery_sub":"true","gid":<?php echo $item['id']; ?>},null);
		window.setTimeout(function(){window.location.href="<?php echo WEB_PATH; ?>/dataserver/<?php echo $item['id']; ?>";},5000);},1000);}
function show_date_time(endTime,obj){	
	if(!this.endTime){this.endTime=endTime;this.obj=obj;}	
	rTimeout = window.setTimeout("show_date_time()",30);	
	timeold = this.endTime-(new Date().getTime());
	if(timeold <= 0){		
		$("#liMinute1").attr("class","Code_0");
		$("#liMinute2").attr("class","Code_0");
		$("#liSecond1").attr("class","Code_0");
		$("#liSecond2").attr("class","Code_0");
		$("#liMilliSecond1").attr("class","Code_0");
		$("#last").attr("class","Code_0");	
		rTimeout && clearTimeout(rTimeout);	
		show_date_time_location();	
		return;
	}	
	sectimeold=timeold/1000
	secondsold=Math.floor(sectimeold); 
	msPerDay=24*60*60*1000
	e_daysold=timeold/msPerDay 	
	daysold=Math.floor(e_daysold); 				//天	
	e_hrsold=(e_daysold-daysold)*24; 
	hrsold=Math.floor(e_hrsold); 				//时
	e_minsold=(e_hrsold-hrsold)*60;	
	//分
	minsold=Math.floor((e_hrsold-hrsold)*60);
	minsold = (minsold<10?'0'+minsold:minsold)
	minsold = new String(minsold);
	minsold_1 = minsold.substr(0,1);
	minsold_2 = minsold.substr(1,1);	

	//秒
	e_seconds = (e_minsold-minsold)*60;	
	seconds=Math.floor((e_minsold-minsold)*60);
	seconds = (seconds<10?'0'+seconds:seconds)
	seconds = new String(seconds);
	seconds_1 = seconds.substr(0,1);
	seconds_2 = seconds.substr(1,1);	
	//毫秒	
	ms = e_seconds-seconds;
	ms = new String(ms)
	ms_1 = ms.substr(2,1);
	ms_2 = ms.substr(3,1);
	
	$("#liMinute1").attr("class","Code_"+minsold_1);
	$("#liMinute2").attr("class","Code_"+minsold_2);
	$("#liSecond1").attr("class","Code_"+seconds_1);
	$("#liSecond2").attr("class","Code_"+seconds_2);
	$("#liMilliSecond1").attr("class","Code_"+ms_1);
	$("#last").attr("class","Code_"+ms_2);
	//this.obj.innerHTML=daysold+"天"+(hrsold<10?'0'+hrsold:hrsold)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒."+ms;
}

$(function(){
	new MyajaxSetup({async:false});
	$.post("<?php echo WEB_PATH; ?>/api/getshop/lottery_shop_get",{"lottery_shop_get":true,"gid":<?php echo $item['id']; ?>,"times":Math.random()},function(sdata){	
	if(sdata!='no'){show_date_time((new Date().getTime())+(parseInt(sdata))*1000,null);}});});
</script>