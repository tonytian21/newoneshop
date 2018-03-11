var js_lang = {};
js_lang['lang_curr'] = 'en-us';
js_lang["获得者"] = " winner";
js_lang["本期购买"] = " purchases of this batch";
js_lang["人次"] = " Frequency";
js_lang["幸运码"] = " Lucky Number";
js_lang["揭晓时间"] = " Announcement Date & Time";
js_lang["第*期"] = " Batch {0}";
js_lang["价值"] = " Price";
js_lang["揭晓倒计时"] = " announcement counting down";
js_lang["正在揭晓"] = " Current phrase announced";
js_lang["支付方式"] = " payment method";
js_lang["余额支付"] = " balance";
js_lang["元"] = " RM ";
js_lang["账户余额"] = " Account Bal.";
js_lang["已参与人次"] = " <em class='orange'>{0}</em> Participants";
js_lang["已参与"] = " Participants ";
js_lang["剩余"] = " left ";
js_lang["进行中"] = " In-Progress";
js_lang["您确定要删除吗"] = "Are you sure you want to delete ?";
js_lang["确定"] = "Confirm";
js_lang["取消"] = "Cancel";
js_lang["总共购买"] = "Total Purchase";
js_lang["合计金额"] = "Total";
js_lang["个奖品"] = "Items";
js_lang["总共参与"] = "Total Participants";
js_lang["人次"] = " Frequency";
js_lang["本期奖品已购买光了"] = "This batch has been sold out";
js_lang["元"] = "RM";

function getJsLang(){
	if (arguments.length == 0)
        return '';

    var str = arguments[0];

    if(js_lang[str] != undefined){
    	str = js_lang[str] ;
    	for ( var i = 1; i < arguments.length; i++) {
	        var re = new RegExp('\\{' + (i - 1) + '\\}', 'gm');
	        str = str.replace(re, arguments[i]);
	    }
    }

    return str;
}