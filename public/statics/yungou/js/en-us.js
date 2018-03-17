var js_lang = {};
js_lang['lang_curr'] = 'en-us';
js_lang["获得者"] = " winner";
js_lang["本期购买"] = " purchases of this batch";
js_lang["人次"] = " Frequency";
js_lang["幸运码"] = " Lucky Number";
js_lang["揭晓时间"] = " Announcement Date & Time";
js_lang["第*期"] = " Batch {0}";
js_lang["价值"] = " Price";
js_lang["价值："] = " Price:";
js_lang["￥"]="RM";
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
js_lang["本期奖品已购买光了"] = "This batch has been sold out";
js_lang["元"] = "RM";
js_lang["暂无记录"]="No records";
js_lang["正在加载"]="Being loaded";
js_lang["新手指南"]="Beginner 's Guide";
js_lang["退出"]="Quit";
js_lang["注册"]="Registration";
js_lang["价值"]="Price";
js_lang["幸运码"]="Lucky Number";
js_lang["已完成"]="Completed";
js_lang["已作废"]="Invalid";
js_lang["已发货"]="Has been shipped";
js_lang["等待发货"]="Wait for the delivery";
js_lang["已参与"]="Joined";
js_lang["总需人次"]="Total";
js_lang["剩余"]="Left ";
js_lang["揭晓时间"]="release date ";
js_lang["请输入您的邮箱"]="Please Insert Email Address";
js_lang["请输入您的登录密码"]="Please enter your login password";
js_lang["请输入正确的邮箱"]="Please enter your vaild email";
js_lang['密码长度为6-20位字符'] = 'The password length is 6-20 characters';
js_lang['登录帐号或密码不正确'] = 'Login account or password is incorrect';
js_lang['登录帐号未注册'] = 'Login account is not registered';
js_lang['账号被冻结'] = 'Account is frozen, please contact customer service';
js_lang['失败次数超限'] = 'Exceed the failure limit, freeze for 5 minutes';
js_lang['显示密码'] = 'Show password';
js_lang['必须输入帐号和密码'] = 'You must enter your user name and password';
js_lang['验证码错误'] = 'Verification code error';
js_lang['正在登录'] = 'Logging in';
js_lang['登录失败'] = 'Login failed, please try again';
js_lang['登录成功'] = 'Login successful';
js_lang['请输入验证码'] = 'Please enter verification code';
js_lang['验证码错误'] = 'Verification code error';
js_lang['登录'] = 'Login';
js_lang['正在登录'] = 'Logging in';
js_lang['正在加载'] = 'Loading';
js_lang['购买了'] = ' Buyed ';
js_lang['排序'] = 'Sort';
js_lang['截止揭晓时间*最后100条'] = 'Expired Date of Announce [{0}] Last 100 list of purchase record';
js_lang['购买时间'] = 'Purchase’s Date & Time';
js_lang['转换数据'] = 'Data Changed';
js_lang['会员账号'] = 'user id';
js_lang['取以上数值结果得'] = 'How’S The Lucky Number Being Calculated?';
js_lang['求和'] = 'Sum';
js_lang['上面100条购买记录时间取值相加之和'] = 'Sum Up The Last 100 purchase history date.';
js_lang['取余'] = 'mod';
js_lang['100条时间记录之和'] = 'the last 100 purchase history date.';
js_lang['本商品总需参与人次'] = 'the number of total participant';
js_lang['余数'] = 'the last 4 digit number.';
js_lang['计算结果'] = 'Calculated';
js_lang['禁止使用弱密码'] = 'To protect your account security, please use a strong password';
js_lang['充值时间'] = 'Top-up Time';
js_lang['充值金额'] = 'Amount';
js_lang['消费时间'] = 'Time of Purchase';
js_lang['消费金额'] = 'Purchased Products';
js_lang['花费'] = 'Expenditure';
js_lang['正在计算,请稍后'] = 'Calculating, please wait';
js_lang['添加失败'] = 'Adding failed, please try again';
js_lang['添加失败，请重试'] = 'Add failed, please try again';


js_lang['添加成功'] = 'Added Successfully';
js_lang['人气'] = 'popularity';
js_lang['恭喜'] = 'Congratulations';
js_lang['恭喜你'] = 'Congratulations';
js_lang['获得'] = 'Acqure';
js_lang['已晒单'] = 'Posted Moments';
js_lang['未晒单'] = 'Unposted Moments';
js_lang['晒单分享'] = 'Share moment';
js_lang['晒单详请'] = 'Moment details';
js_lang['晒单时间'] = 'Sharing time';
js_lang['选择平台充值'] = 'Choose a payment method';
js_lang['已满员'] = 'Full';
js_lang['已揭晓'] = 'Announced';
js_lang['揭晓中'] = 'Revealling';
js_lang['参与了'] = 'Joined';
js_lang['银币支付'] = 'Use Your Bonus';
js_lang['您的银币'] = 'Your Credit Balance';
js_lang['正在倒计时揭晓中...'] = 'The countdown is on...';
js_lang['揭晓倒计时正在进行中...'] = 'The countdown is underway...';
js_lang['确认收货'] = 'Confirm the goods';
js_lang['确认收货'] = 'Confirm the goods';
js_lang['状态：'] = 'Status:';
js_lang['您已购买数量：'] = 'You have purchased quantity:';
js_lang['已购买'] = 'Have to buy';




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