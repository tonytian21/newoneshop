var js_lang = {};
js_lang['lang_curr'] = 'zh-cn';
js_lang["第*期"] = "第{0}期";
js_lang["已参与人次"] = "已参与<em class='orange'>{0}</em>人次";
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