var js_lang = {};
js_lang['lang_curr'] = 'zh-cn';
js_lang["第*期"] = "第{0}期";
js_lang["已参与人次"] = "已参与<em class='orange'>{0}</em>人次";
js_lang['账号被冻结'] = '账号被冻结，请与客服联系';
js_lang['失败次数超限'] = "失败次数超限，被冻结5分钟";
js_lang['登录失败'] = '登录失败，请重试';
js_lang['截止揭晓时间*最后100条'] = '截止揭晓时间【{0}】最<em>后100条全站购买时间记录</em>';
js_lang['禁止使用弱密码'] = '为保障您的账户安全，禁止使用弱密码';
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