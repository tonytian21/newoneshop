<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><!DOCTYPE html>
<html>

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>注册 - <?php echo $webname; ?>触屏版</title>
    <meta content="app-id=518966501" name="apple-itunes-app" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no, maximum-scale=1.0" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/comm.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo G_TEMPLATES_CSS; ?>/mobile/member.css?v=130726" rel="stylesheet" type="text/css" />
    <script src="<?php echo G_TEMPLATES_JS; ?>/mobile/jquery190.js" language="javascript" type="text/javascript"></script>
    <script id="pageJS" data="<?php echo G_TEMPLATES_JS; ?>/mobile/Register.js" language="javascript" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo G_TEMPLATES_JS; ?>/mobile/worldAddress.js"></script>
</head>

<body style="background: #f4f4f4;">
    <div class="h5-1yyg-v1" id="content">
        <!-- 栏目页面顶部 -->
        <!-- 内页顶部 -->
        <header class="header" style="position: fixed;width: 100%;z-index: 99999999;">
            <h1 style="width: 100%;text-align: center;float: none;top: 0px;left: 0px;font-size: 25px;" class="fl">
    <span style="display: block;height: 49px;line-height: 49px;">
      <a style="font-size: 20px;line-height: 49px;" href="<?php echo WEB_PATH; ?>/mobile/mobile">
        帐号信息完善
      </a>
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
        <section>
            <div id="div_consignee" class="addAddress" style="position:absolute;top: 50px;;left: 0px;width: 100%;">
                <article class="mt10 m-round" style="margin:10px;padding: 10px;">
                    <form class="registerform" id="registerinfoform" method="post" action="<?php echo WEB_PATH; ?>/mobile/user/userinfo">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr class="hanggao">

                                    <td width="20%">
                                        <label>所在地区：</label>
                                        <script>var s=["county","province","city"];</script>
                                    </td>
                                    <td  width="80%">
                                        <select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的国家" class="select iRequire" id="county" runat="server" name="guojia"></select>
                                        <select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的省份" class="select iRequire" id="province" runat="server" name="sheng"></select>
                                        <select style="width: 26%;font-size: 14px;text-align: center;" datatype="*" nullmsg="请选择有效的市" class="select iRequire" id="city" runat="server" name="shi"></select> <em id="ship_address_valid_msg" class="red">*</em>
                                        <script type="text/javascript">setup()</script>
                                    </td>
                                </tr>
                                <tr class="hanggao">
                                    <td>
                                        <label>街道地址：</label>
                                    </td>
                                    <td>
                                        <input datatype="*1-100" class="input iRequire" nullmsg="请填街道地址！" name="jiedao" id="jiedao" type="text" class="street iRequire" maxlength="100" /> <em id="ship_address_valid_msg" class="red">*</em>
                                    </td>
                                </tr>
                                <tr class="hanggao">
                                    <td>
                                        <label>收&nbsp&nbsp货&nbsp&nbsp人：</label>
                                    </td>
                                    <td>
                                        <input  class="input iRequire"  datatype="*" name="shouhuoren" nullmsg="请填收货人" id="shouhuoren" type="text" maxlength="20" id="txt_ship_name" class="inputTxt" value="">
                                        <em class="red" id="ship_name_valid_msg">*</em>
                                    </td>
                                </tr>
                                <tr class="hanggao">
                                    <td>
                                        <label>手机号码：</label>
                                    </td>
                                    <td>
                                        <input  class="input iRequire"  datatype="m" nullmsg="手机号不能为空" errormsg="手机号不对" name="mobile" id="mobile" type="text"  class="inputTxt" maxlength="11">
                                        <em id="ship_mb_valid_msg" class="red">*</em>
                                    </td>
                                </tr>
                            <tr style="height: 100px; text-align: center;">
                                <td colspan="2">
                                    <input type="hidden" name="uid" value="<?php echo $member['uid']; ?>">
                                    <input type="hidden" name="dosubmit" value="1">
                                    <input style="background: #f60;border-radius: 5px;cursor: pointer;" name="submitbtn" type="button" class="orangebut" id="btn_consignee_save" value="保存" title="保存">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>

            </article>
        </div>
        </section>
        <?php include templates("mobile/index","footer");?>
        <script language="javascript" type="text/javascript">
            
        var Path = new Object();
        Path.Skin = "<?php echo G_WEB_PATH; ?>/statics//<?php echo _cfg('templates_name'); ?>";
        Path.Webpath = "<?php echo WEB_PATH; ?>";

        var Base = {
            head: document.getElementsByTagName("head")[0] || document.documentElement,
            Myload: function(B, A) {
                this.done = false;
                B.onload = B.onreadystatechange = function() {
                    if (!this.done && (!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) {
                        this.done = true;
                        A();
                        B.onload = B.onreadystatechange = null;
                        if (this.head && B.parentNode) {
                            this.head.removeChild(B)
                        }
                    }
                }
            },
            getScript: function(A, C) {
                var B = function() {};
                if (C != undefined) {
                    B = C
                }
                var D = document.createElement("script");
                D.setAttribute("language", "javascript");
                D.setAttribute("type", "text/javascript");
                D.setAttribute("src", A);
                this.head.appendChild(D);
                this.Myload(D, B)
            },
            getStyle: function(A, B) {
                var B = function() {};
                if (callBack != undefined) {
                    B = callBack
                }
                var C = document.createElement("link");
                C.setAttribute("type", "text/css");
                C.setAttribute("rel", "stylesheet");
                C.setAttribute("href", A);
                this.head.appendChild(C);
                this.Myload(C, B)
            }
        }

        function GetVerNum() {
            var D = new Date();
            return D.getFullYear().toString().substring(2, 4) + '.' + (D.getMonth() + 1) + '.' + D.getDate() + '.' + D.getHours() + '.' + (D.getMinutes() < 10 ? '0' : D.getMinutes().toString().substring(0, 1))
        }
        Base.getScript('<?php echo G_TEMPLATES_JS; ?>/mobile/Bottom.js');
        $(document).ready(function(){
            $("#btn_consignee_save").click(function(){
                var msg = '';
                $('.iRequire').each(function(){
                    if($(this).val() == ''){
                        msg = $(this).attr('nullmsg');
                        return false;
                    }
                });

                if(msg != ''){
                    $.PageDialog.fail(msg);
                }else{
                    $.post($('#registerinfoform').attr('action'),
                        $("#registerinfoform").serialize(),function(data){
                            data = eval('(' + data + ')');
                            if(data.success == 1){
                                window.location.href= Gobal.Webpath+"/mobile/mobile";
                            }else{
                                $.PageDialog.fail(data.message);
                            }
                        }
                    );
                }
            });
        });
        </script>
    </div>
</body>

</html>