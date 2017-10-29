<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<title>收货地址管理 -</title>
	<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/comm.css?v=130715" rel="stylesheet" type="text/css" />
	<link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/member.css?v=130726" rel="stylesheet" type="text/css" />
	<script src="<?php echo G_TEMPLATES_JS; ?>/mobile/jquery190.js" language="javascript" type="text/javascript"></script>
	<script src="<?php echo G_TEMPLATES_JS; ?>/jquery.Validform.min.js" language="javascript" type="text/javascript"></script>
	<script id="pageJS" data="<?php echo G_TEMPLATES_JS; ?>/mobile/OrderList.js" language="javascript" type="text/javascript"></script>
</head>
<body style="background: #fff;">
	<div class="h5-1yyg-v1" id="loadingPicBlock">
		<header class="header" style="position: fixed;width: 100%;z-index: 99999999;">

			<h1 style="width: 100%;text-align: center;float: none;top: 0px;left: 0px;font-size: 25px;" class="fl">
				<span style="display: block;height: 49px;line-height: 49px;">
					<a style="font-size: 20px;line-height: 49px;" href="<?php echo WEB_PATH; ?>/mobile/mobile">收货地址</a>
				</span>

				<!--<img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo Getlogo(); ?>"/>
				-->
				<!--<img src="<?php echo G_TEMPLATES_IMAGE; ?>/sjlogo.png"/>
				-->
			</h1>

			<a id="fanhui" class="cefenlei" onclick="history.go(-1)" href="javascript:;">

				<img width="30" height="30" src="<?php echo G_TEMPLATES_IMAGE; ?>/mobile/fanhui.png"></a>

			<div class="fr head-r" style="position: absolute;right: 6px;top: 10px;">

        <!--<a href="<?php echo WEB_PATH; ?>/mobile/user/login" class="z-Member"></a>
    -->
    <a href="<?php echo WEB_PATH; ?>/mobile/mobile" class="z-shop" style="background-position: 2px -73px;"></a>

		</div>

	</header>

	<input name="hidTotalCount" type="hidden" id="hidTotalCount" />
	<input name="hidPageMax" type="hidden" id="hidPageMax" />
	<section class="clearfix g-member g-goods" style="padding-top: 50px;background: #fff;">
		<article class="mt10 m-round" style="margin:10px;border: none;box-shadow: 0px;">
			<script type="text/javascript" src="<?php echo G_TEMPLATES_JS; ?>/mobile/area.js"></script>
			<script type="text/javascript">
            $(function(){       
                var demo=$(".registerform").Validform({
                    tiptype:2,
                    datatype:{
                        "tel":/^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/,
                    },
                }); 
                demo.tipmsg.w["tel"]="请正确输入电话号码(区号、号码必填，用“-”隔开)";
                demo.addRule([
                {
                    ele:"#txt_ship_tel",
                    datatype:"tel",
                }]);
            });
            $(function(){
                $("#btnAddnewAddr").click(function(){
                    $("#div_consignee").show();
                    $("#btnAddnewAddr").hide();
                });
                $("#btn_consignee_cancle").click(function(){
                    $("#div_consignee").hide();
                    $("#btnAddnewAddr").show();
                });
            });
            $(function(){
                $(".xiugai").click(function(){
                    $("#btnAddnewAddr").hide();
                    $("#div_consignee").hide();
                });
                $("#btn_consignee_cancle2").click(function(){
                    $("#div_consignee2").hide();
                    $("#btnAddnewAddr").show();
                });
            });
            function update(id){    
                $("#div_consignee2").show();
                setup3();
                $("#registerform3").attr("action","<?php echo WEB_PATH; ?>/mobile/home/updateddress/"+id);
                var str=$("#dizh_"+id).html();
                var spl=str.split(",");
                $("#province3").append('<option selected value="'+spl[0]+'">'+spl[0]+'</option>');
                $("#city3").append('<option selected value="'+spl[1]+'">'+spl[1]+'</option>');
                $("#county3").append('<option selected value="'+spl[1]+'">'+spl[1]+'</option>');
                $("#dizh2").val(spl[3]);
                $("#qqnb2").val($("#item_"+id).attr("qqnb"));
                if($("#sffh_"+id).html()==1){
                    $("#sffh21").attr("checked",'checked');
                }else if($("#sffh_"+id).html()==0){
                    $("#sffh22").attr("checked",'checked');
                }
                $("#mob2").val($("#item_"+id).attr("mob"));
                $("#yb2").val($("#item_"+id).attr("yb"));
                $("#shr2").val($("#item_"+id).attr("shr"));
                $("#div_consignee2").show(); 
            };
            function dell(id){
                if (confirm("您确认要删除该条信息吗？")){
                    window.location.href="<?php echo WEB_PATH; ?>/mobile/home/deladdress/"+id;
                }
            }

            function setdf(id){
                if (confirm("您确认设置为默认地址？")){
                    window.location.href="<?php echo WEB_PATH; ?>/mobile/home/setaddress/"+id;
                }
            }

            </script>
			<style>
				#addressListDiv .m-useraddresslst li{
					position: relative;
					line-height: 20px;
					line-height: 20px!important;
					overflow: hidden;
				}
				
				.m-useraddresslst .q1{
					line-height: 45px!important;
					border-bottom: 1px dashed  #ccc;
					font-size: 16px;
					color: #f60;
					font-weight: 600;
				}
				.m-useraddresslst .q1 .moren{
					font-size: 12px;
					background: #f60;
					color: #fff;
					font-weight: 400;
					padding: 2px;
					border-radius: 5px;
					line-height: 20px;
					display: inline!important;
				}
				.m-useraddresslst .q1 .xiugai{
					background: #2af;
					color: #fff;
					font-size: 12px;
					padding: 2px;
					line-height: 20px;
					border-radius: 5px;
					font-weight: 400;
					width: 60px!important;

				}
				.m-useraddresslst .s1{
					height: 80px;
					width: 60px;
					float: left;
					margin-top: 10px;
				}
				.m-useraddresslst .s2{
					float: left;
					width: 80%!important;
					margin-top: 10px;
				}
				.m-useraddresslst .s1 ul li{
					height: 20px!important;
					line-height: 20px!important;
					border: none!important;
					width: 100%!important;
					text-align: right;
					min-height: 20px!important;
				}
				.m-useraddresslst .s2 ul li{
					height: 20px!important;
					line-height: 20px!important;
					border: none!important;
					min-height: 20px!important;
				}
				.m-useraddresslst .s2 ul .dizhis{
					height: 40px!important;
				}
				.m-useraddresslst .xgs{
					float:right;
					width: 80px!important;
					text-align: right;
				}
				.m-useraddresslst .xgs .xiugai{
					font-size: 12px;
					font-weight: 400;
					color: #ccc!important;
					background: none;
				}
				#div_consignee2 .input{
					font-size: 14px;
					line-height: 14px;
				}
            </style>
			<div class="R-content">
				<div id="addressListDiv" class="list-tab detailAddress gray01" style="">
					<ul class="m-useraddresslst ">
						<?php $ln=1;if(is_array($dizhi)) foreach($dizhi AS $dz): ?>
						<li style="margin-top: 10px;border: 1px solid #dcdcdc;border-radius: 5px;box-shadow: 1px #e7e7e7;" class="pad" id="item_<?php echo $dz['id']; ?>" qqnb="<?php echo $dz['qq']; ?>" shr="<?php echo $dz['shouhuoren']; ?>" yb="<?php echo $dz['youbian']; ?>" mob="<?php echo $dz['mobile']; ?>">
							<div class="q1">
								实物收货地址
								
									<?php if($dz['default'] == 'Y'): ?>
								<span class="moren">默认地址</span>
								<?php  else: ?>
								<a class="xiugai" href="javascript:;"   onclick="setdf(<?php echo $dz['id']; ?>)" title="设为默认">设为默认</a>
								<?php endif; ?>
								<span class="xgs">
									<a class="xiugai" href="javascript:;"   onclick="update(<?php echo $dz['id']; ?>)" title="修改">修改</a>
									<a class="xiugai" href="javascript:;"   onclick="dell(<?php echo $dz['id']; ?>)" title="删除">删除</a>
								</span>
							</div>
							<div class="s1">
								<ul>
									<li>收&nbsp&nbsp货&nbsp&nbsp人：</li>
									<li>收&nbsp&nbsp货QQ：</li>
									<li>手机号码：</li>
									<li>收货地址：</li>
								</ul>
							</div>
							<div class="s2">
								<ul>
									<li><?php echo $dz['shouhuoren']; ?></li>
									<li><?php echo $dz['qq']; ?></li>
									<li><?php echo $dz['mobile']; ?></li>
									<li class="dizhis" id="dizh_<?php echo $dz['id']; ?>">
										<?php echo $dz['sheng']; ?>,<?php echo $dz['shi']; ?>,<?php echo $dz['xian']; ?>,<?php echo $dz['jiedao']; ?>
									</li>
								</ul>
							</div>
						</li>
						<?php  endforeach; $ln++; unset($ln); ?>
					</ul>
				</div>

			</div>
		</article>
	</section>
	<section class="clearfix g-member g-goods" style="background: #fff;margin: 10px;">
		<div class="add mt10 ">
			<a  id="btnAddnewAddr" href="javascript:;" type="button" class="orangebut orgBtn"  style="display: block;">新增收货地址</a>
		</div>
		<div id="div_consignee" class="addAddress" style="display:none;position:absolute;top: 50px;;left: 0px;width: 100%;">
			<article class="mt10 m-round" style="margin:10px;padding: 10px;">

				<dl style="font-size: 14px;color: #f60;">添加收货地址</dl>
				<form class="registerform" method="post" action="<?php echo WEB_PATH; ?>/mobile/home/useraddress">
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr class="hanggao">

								<td width="20%">
									<label>所在地区：</label>
									<script>var s2=["province2","city2","county2"];</script>
								</td>
								<td  width="80%">
									<select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省市区" class="select" id="province2" runat="server" name="sheng"></select>
									<select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省市区" class="select" id="city2" runat="server" name="shi"></select>
									<select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省市区" class="select" id="county2" runat="server" name="xian"></select> <em id="ship_address_valid_msg" class="red">*</em>
									<script type="text/javascript">setup2()</script>
								</td>
							</tr>
							<tr class="hanggao">
								<td>
									<label>街道地址：</label>
								</td>
								<td>
									<input datatype="*1-100" class="input" nullmsg="请填街道地址！" errormsg="范围在100之间！" name="jiedao" type="text" class="street" maxlength="100" /> <em id="ship_address_valid_msg" class="red">*</em>
								</td>
							</tr>
							<tr class="hanggao">
								<td>
									<label>收&nbsp&nbsp货QQ：</label>
								</td>
								<td>
									<input  class="input"  errormsg="QQ号不符合常理" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" name="qq" type="text" id="txt_ship_qq" value="" class="inputTxt" maxlength="13"></td>
							</tr>
							<tr class="hanggao">
								<td>
									<label>邮政编码：</label>
								</td>
								<td>
									<input  class="input"  datatype="p" ignore="ignore" errormsg="邮政编码错误！" name="youbian" type="text" maxlength="6" id="txt_ship_zip" class="inputTxt" value=""></td>
							</tr>
							<tr class="hanggao">
								<td>
									<label>收&nbsp&nbsp货&nbsp&nbsp人：</label>
								</td>
								<td>
									<input  class="input"  datatype="*" nullmsg="收货人不能为空" name="shouhuoren" type="text" maxlength="20" id="txt_ship_name" class="inputTxt" value="">
									<em class="red" id="ship_name_valid_msg">*</em>
								</td>
							</tr>
							<tr class="hanggao">
								<td>
									<label>手机号码：</label>
								</td>
								<td>
									<input  class="input"  datatype="m" nullmsg="手机号不能为空" errormsg="手机号不对" name="mobile" type="text"  class="inputTxt" maxlength="11">
									<em id="ship_mb_valid_msg" class="red">*</em>
								</td>
							</tr>
							<tr class="hanggao">
							<td>
								<label>是否发货：</label>
							</td>
							<td>
								<input type="radio" name="shifoufahuo" value="1" />
								是，马上收货&nbsp;&nbsp;&nbsp;
								<input type="radio" name="shifoufahuo" value="0" checked="checked" />
								否，暂时别发货
							</td>
						</tr>
						<tr style="height: 100px;">
							<td colspan="2">
								<input style="margin-right:1%;background: #f60;border-radius: 5px;cursor: pointer;" name="submit" type="submit" class="orangebut" id="btn_consignee_save" value="保存" title="保存">
								<input style="border-radius: 5px;cursor: pointer;" type="button" class="cancelBtn" value="取消" id="btn_consignee_cancle" title="取消"></td>
						</tr>
					</tbody>
				</table>
			</form>

		</article>
	</div>
</section>
<section class="clearfix g-member g-goods" style="margin: 10px;background: #fff;">
	<article class="mt10 m-round" style="border: none;">
		<div id="div_consignee2" class="addAddress" style="display:none;position:absolute;width: 100%;left: 0;top: 50px;background: #fff;padding: 0;">

			<script>var s3=["province3","city3","county3"];</script>

			<form id="registerform3" class="registerform" method="post" style="margin: 10px;padding: 10px;border: 1px solid #dcdcdc;box-shadow: 1px 1px 1px #e7e7e7;border-radius: 5px;">
				<dl style="font-size: 14px;color: #f60;">修改收货地址</dl>
				<table border="0" cellpadding="0" cellspacing="0" width="99%">
					<tbody>
						<tr class="hanggao">
							<td>
								<label>所在地区：</label>
							</td>
							<td>
								<select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省市区" class="select" id="province3" runat="server" name="sheng"></select>
								<select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省市区" class="select" id="city3" runat="server" name="shi"></select>
								<select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省市区" class="select" id="county3" runat="server" name="xian"></select>
								<em id="ship_address_valid_msg" class="red">*</em>
							</td>
						</tr>
						<tr class="hanggao">
							<td>
								<label>街道地址：</label>
							</td>
							<td>
								<input  class="input" id="dizh2" datatype="*1-100" nullmsg="请填街道地址！" errormsg="范围在100之间！" name="jiedao" type="text" class="street" maxlength="100" />
								<em id="ship_address_valid_msg" class="red">*</em>
							</td>
						</tr>
						<tr class="hanggao">
							<td>
								<label>收&nbsp&nbsp货QQ：</label>
							</td>
							<td>
								<input id="qqnb2" class="input" errormsg="QQ号不符合常理" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" name="qq" type="text" value="" class="inputTxt" maxlength="13"></td>
						</tr>
						<tr class="hanggao">
							<td>
								<label>邮政编码：</label>
							</td>
							<td>
								<input id="yb2" class="input" datatype="p" ignore="ignore" errormsg="邮政编码错误！" name="youbian" type="text" maxlength="6" class="inputTxt" value=""></td>
						</tr>
						<tr class="hanggao">
							<td>
								<label>收&nbsp&nbsp货&nbsp&nbsp人：</label>
							</td>
							<td>
								<input id="shr2" class="input" datatype="*" nullmsg="收货人不能为空" name="shouhuoren" type="text" maxlength="20" class="inputTxt" value="">
								<em class="red" id="ship_name_valid_msg">*</em>
							</td>
						</tr>
						<tr class="hanggao">
							<td>
								<label>手机号码：</label>
							</td>
							<td>
								<input  id="mob2" class="input" datatype="m" nullmsg="手机号不能为空" errormsg="手机号不对" name="mobile" type="text" value="" class="inputTxt" maxlength="11">
								<em id="ship_mb_valid_msg" class="red">*</em>
							</td>
						</tr>
							<tr class="hanggao">
						<td>
							<label>是否发货：</label>
						</td>
						<td colspan="2">
							<input type="radio" id="sffh21" name="shifoufahuo" value="1" />
							是，马上收货&nbsp;
                        &nbsp;&nbsp;
							<input type="radio" id="sffh22" name="shifoufahuo" value="0" />
							否，暂时别发货
						</td>
					</tr>
					<tr style="height: 100px;">
						<td colspan="2">
							<input style="margin-right:1%;background: #f60;border-radius: 5px;cursor: pointer;" name="submit" type="submit" class="orangebut" id="btn_consignee_save" value="保存" title="保存">
							<input style="border-radius: 5px;cursor: pointer;" type="button" class="cancelBtn" value="取消" id="btn_consignee_cancle2" title="取消"></td>
					</tr>
				</tbody>
			</table>
		</form>

	</div>
</article>
</section>
<div style="height:70px;"></div>
<?php include templates("mobile/index","footer");?>
<script language="javascript" type="text/javascript">
  var Path = new Object();
  Path.Skin="<?php echo G_TEMPLATES_STYLE; ?>";
  Path.Webpath = "<?php echo WEB_PATH; ?>";
  
var Base={head:document.getElementsByTagName("head")[0]||document.documentElement,Myload:function(B,A){this.done=false;B.onload=B.onreadystatechange=function(){if(!this.done&&(!this.readyState||this.readyState==="loaded"||this.readyState==="complete")){this.done=true;A();B.onload=B.onreadystatechange=null;if(this.head&&B.parentNode){this.head.removeChild(B)}}}},getScript:function(A,C){var B=function(){};if(C!=undefined){B=C}var D=document.createElement("script");D.setAttribute("language","javascript");D.setAttribute("type","text/javascript");D.setAttribute("src",A);this.head.appendChild(D);this.Myload(D,B)},getStyle:function(A,B){var B=function(){};if(callBack!=undefined){B=callBack}var C=document.createElement("link");C.setAttribute("type","text/css");C.setAttribute("rel","stylesheet");C.setAttribute("href",A);this.head.appendChild(C);this.Myload(C,B)}}
function GetVerNum(){var D=new Date();return D.getFullYear().toString().substring(2,4)+'.'+(D.getMonth()+1)+'.'+D.getDate()+'.'+D.getHours()+'.'+(D.getMinutes()<10?'0':D.getMinutes().toString().substring(0,1))}
Base.getScript('<?php echo G_TEMPLATES_JS; ?>/js/mobile/Bottom.js?v='+GetVerNum());
</script></div>
</body>
</html>