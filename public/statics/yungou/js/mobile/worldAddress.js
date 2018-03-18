function Dsy()
{
this.Items = {};
}
Dsy.prototype.add = function(id,iArray)
{
this.Items[id] = iArray;
}
Dsy.prototype.Exists = function(id)
{
if(typeof(this.Items[id]) == "undefined") return false;
return true;  
}

function change(v){
var str="0";
for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s[i]).selectedIndex-1));};
var ss=document.getElementById(s[v]);
with(ss){
length = 0;
options[0]=new Option(opt0[v],opt0[v]);
if(v && document.getElementById(s[v-1]).selectedIndex>0 || !v)
{
if(dsy.Exists(str)){
ar = dsy.Items[str];
for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
if(v)options[1].selected = true;
}
}
if(++v<s.length){change(v);}
}
}

function change2(v){
var str="0";
for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s2[i]).selectedIndex-1));};
var ss=document.getElementById(s2[v]);
with(ss){
length = 0;
options[0]=new Option(opt0[v],opt0[v]);
if(v && document.getElementById(s2[v-1]).selectedIndex>0 || !v)
{
if(dsy.Exists(str)){
ar = dsy.Items[str];
for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
if(v)options[1].selected = true;
}
}
if(++v<s2.length){change(v);}
}
}

function change3(v){
var str="0";
for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s3[i]).selectedIndex-1));};
var ss=document.getElementById(s3[v]);
with(ss){
length = 0;
options[0]=new Option(opt0[v],opt0[v]);
if(v && document.getElementById(s3[v-1]).selectedIndex>0 || !v)
{
if(dsy.Exists(str)){
ar = dsy.Items[str];
for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
if(v)options[1].selected = true;
}
}
if(++v<s3.length){change(v);}
}
}

var dsy = new Dsy();

dsy.add("0",[getJsLang("中国"),getJsLang("韩国"),getJsLang("日本"),getJsLang("新加坡"),getJsLang("马来西亚"),getJsLang("菲律宾"),getJsLang("沙特阿拉伯"),getJsLang("朝鲜"),getJsLang("越南"),getJsLang("缅甸"),getJsLang("德国"),getJsLang("英国"),getJsLang("法国"),getJsLang("爱尔兰"),getJsLang("波兰"),getJsLang("西班牙"),getJsLang("意大利"),getJsLang("俄罗斯"),getJsLang("荷兰"),getJsLang("美国"),getJsLang("加拿大"),getJsLang("巴西"),getJsLang("阿根廷"),getJsLang("新西兰"),getJsLang("澳大利亚"),getJsLang("印度"),getJsLang("埃及")]);

dsy.add("0_0",[getJsLang("安徽省"),getJsLang("北京市"),getJsLang("福建"),getJsLang("甘肃"),getJsLang("广东"),getJsLang("广西"),getJsLang("贵州"),getJsLang("海南"),getJsLang("河北"),getJsLang("河南"),getJsLang("黑龙江"),getJsLang(" 湖北"),getJsLang("湖南"),getJsLang("吉林"),getJsLang("江苏"),getJsLang("江西"),getJsLang("辽宁"),getJsLang("内蒙古"),getJsLang("宁夏"),getJsLang("青海"),getJsLang("山东"),getJsLang("山西"),getJsLang("陕西"),getJsLang("上海"),getJsLang("四川"),getJsLang("天津"),getJsLang("西藏"),getJsLang("新疆"),getJsLang("云南"),getJsLang("浙江"),getJsLang("重庆")]);

dsy.add("0_0_0",[getJsLang("安庆"),getJsLang("蚌埠"),getJsLang("巢湖"),getJsLang("池州"),getJsLang("滁州"),getJsLang("阜阳"),getJsLang("合肥"),getJsLang("淮北"),getJsLang("淮南"),getJsLang("黄山"),getJsLang("六安"),getJsLang("马鞍山"),getJsLang("宿州"),getJsLang("铜陵"),getJsLang("芜湖"),getJsLang("宣城"),getJsLang("亳州")]);
dsy.add("0_0_1",[getJsLang("北京")]);
dsy.add("0_0_2",[getJsLang("福州"),getJsLang("龙岩"),getJsLang("南平"),getJsLang("宁德"),getJsLang("莆田"),getJsLang("泉州"),getJsLang("三明"),getJsLang("厦门"),getJsLang("漳州")]);
dsy.add("0_0_3",[getJsLang("白银"),getJsLang("定西"),getJsLang("甘南藏族自治州"),getJsLang("嘉峪关"),getJsLang("金昌"),getJsLang("酒泉"),getJsLang("兰州"),getJsLang("临夏回族自治州"),getJsLang("陇南"),getJsLang("平凉"),getJsLang("庆阳"),getJsLang("天水"),getJsLang("武威"),getJsLang("张掖")]);
dsy.add("0_0_4",[getJsLang("潮州"),getJsLang("东莞"),getJsLang("佛山"),getJsLang("广州"),getJsLang("河源"),getJsLang("惠州"),getJsLang("江门"),getJsLang("揭阳"),getJsLang("茂名"),getJsLang("梅州"),getJsLang("清远"),getJsLang("汕头"),getJsLang("汕尾"),getJsLang("韶关"),getJsLang("深圳"),getJsLang("阳江"),getJsLang("云浮"),getJsLang("湛江"),getJsLang("肇庆"),getJsLang("中山"),getJsLang("珠海")]);
dsy.add("0_0_5",[getJsLang("百色"),getJsLang("北海"),getJsLang("崇左"),getJsLang("防城港"),getJsLang("桂林"),getJsLang("贵港"),getJsLang("河池"),getJsLang("贺州"),getJsLang("来宾"),getJsLang("柳州"),getJsLang("南宁"),getJsLang("钦州"),getJsLang("梧州"),getJsLang("玉林")]);
dsy.add("0_0_6",[getJsLang("安顺"),getJsLang("毕节"),getJsLang("贵阳"),getJsLang("六盘水"),getJsLang("黔东南苗族侗族自治州"),getJsLang("黔南布依族苗族自治州"),getJsLang("黔西南布依族苗族自治州"),getJsLang("铜仁"),getJsLang("遵义")]);
dsy.add("0_0_7",[getJsLang("白沙黎族自治县"),getJsLang("保亭黎族苗族自治县"),getJsLang("昌江黎族自治县"),getJsLang("澄迈县"),getJsLang("定安县"),getJsLang("东方"),getJsLang("海口"),getJsLang(" 乐东黎族自治县"),getJsLang("临高县"),getJsLang("陵水黎族自治县"),getJsLang("琼海"),getJsLang("琼中黎族苗族自治县"),getJsLang("三亚"),getJsLang("屯昌县"),getJsLang("万宁"),getJsLang("文昌"),getJsLang("五指山"),getJsLang("儋州")]);
dsy.add("0_0_8",[getJsLang("保定"),getJsLang("沧州"),getJsLang("承德"),getJsLang("邯郸"),getJsLang("衡水"),getJsLang("廊坊"),getJsLang("秦皇岛"),getJsLang("石家庄"),getJsLang("唐山"),getJsLang("邢台"),getJsLang("张家口")]);
dsy.add("0_0_9",[getJsLang("安阳"),getJsLang("鹤壁"),getJsLang("济源"),getJsLang("焦作"),getJsLang("开封"),getJsLang("洛阳"),getJsLang("南阳"),getJsLang("平顶山"),getJsLang("三门峡"),getJsLang("商丘"),getJsLang("新乡"),getJsLang("信阳"),getJsLang("许昌"),getJsLang("郑州"),getJsLang("周口"),getJsLang("驻马店"),getJsLang("漯河"),getJsLang("濮阳")]);
dsy.add("0_0_10",[getJsLang("大庆"),getJsLang("大兴安岭"),getJsLang("哈尔滨"),getJsLang("鹤岗"),getJsLang("黑河"),getJsLang("鸡西"),getJsLang("佳木斯"),getJsLang("牡丹江"),getJsLang("七台河"),getJsLang("齐齐哈尔"),getJsLang("双鸭山"),getJsLang("绥化"),getJsLang("伊春")]);
dsy.add("0_0_11",[getJsLang("鄂州"),getJsLang("恩施土家族苗族自治州"),getJsLang("黄冈"),getJsLang("黄石"),getJsLang("荆门"),getJsLang("荆州"),getJsLang("潜江"),getJsLang("神农架林区"),getJsLang("十堰"),getJsLang("随州"),getJsLang("天门"),getJsLang("武汉"),getJsLang("仙桃"),getJsLang("咸宁"),getJsLang("襄樊"),getJsLang("孝感"),getJsLang("宜昌")]);
dsy.add("0_0_12",[getJsLang("常德"),getJsLang("长沙"),getJsLang("郴州"),getJsLang("衡阳"),getJsLang("怀化"),getJsLang("娄底"),getJsLang("邵阳"),getJsLang("湘潭"),getJsLang("湘西土家族苗族自治州"),getJsLang("益阳"),getJsLang("永州"),getJsLang("岳阳"),getJsLang("张家界"),getJsLang("株洲")]);
dsy.add("0_0_13",[getJsLang("白城"),getJsLang("白山"),getJsLang("长春"),getJsLang("吉林"),getJsLang("辽源"),getJsLang("四平"),getJsLang("松原"),getJsLang("通化"),getJsLang("延边朝鲜族自治州")]);
dsy.add("0_0_14",[getJsLang("常州"),getJsLang("淮安"),getJsLang("连云港"),getJsLang("南京"),getJsLang("南通"),getJsLang("苏州"),getJsLang("宿迁"),getJsLang("泰州"),getJsLang("无锡"),getJsLang("徐州"),getJsLang("盐城"),getJsLang("扬州"),getJsLang("镇江")]);
dsy.add("0_0_15",[getJsLang("抚州"),getJsLang("赣州"),getJsLang("吉安"),getJsLang("景德镇"),getJsLang("九江"),getJsLang("南昌"),getJsLang("萍乡"),getJsLang("上饶"),getJsLang("新余"),getJsLang("宜春"),getJsLang("鹰潭")]);
dsy.add("0_0_16",[getJsLang("鞍山"),getJsLang("本溪"),getJsLang("朝阳"),getJsLang("大连"),getJsLang("丹东"),getJsLang("抚顺"),getJsLang("阜新"),getJsLang("葫芦岛"),getJsLang("锦州"),getJsLang("辽阳"),getJsLang("盘锦"),getJsLang("沈阳"),getJsLang("铁岭"),getJsLang("营口")]);
dsy.add("0_0_17",[getJsLang("阿拉善盟"),getJsLang("巴彦淖尔盟"),getJsLang("包头"),getJsLang("赤峰"),getJsLang("鄂尔多斯"),getJsLang("呼和浩特"),getJsLang("呼伦贝尔"),getJsLang("通辽"),getJsLang("乌海"),getJsLang("乌兰察布盟"),getJsLang("锡林郭勒盟"),getJsLang("兴安盟")]);
dsy.add("0_0_18",[getJsLang("固原"),getJsLang("石嘴山"),getJsLang("吴忠"),getJsLang("银川")]);
dsy.add("0_0_19",[getJsLang("果洛藏族自治州"),getJsLang("海北藏族自治州"),getJsLang("海东"),getJsLang("海南藏族自治州"),getJsLang("海西蒙古族藏族自治州"),getJsLang("黄南藏族自治州"),getJsLang("西宁"),getJsLang("玉树藏族自治州")]);
dsy.add("0_0_20",[getJsLang("滨州"),getJsLang("德州"),getJsLang("东营"),getJsLang("菏泽"),getJsLang("济南"),getJsLang("济宁"),getJsLang("莱芜"),getJsLang("聊城"),getJsLang("临沂"),getJsLang("青岛"),getJsLang("日照"),getJsLang("泰安"),getJsLang("威海"),getJsLang("潍坊"),getJsLang("烟台"),getJsLang("枣庄"),getJsLang("淄博")]);
dsy.add("0_0_21",[getJsLang("长治"),getJsLang("大同"),getJsLang("晋城"),getJsLang("晋中"),getJsLang("临汾"),getJsLang("吕梁"),getJsLang("朔州"),getJsLang("太原"),getJsLang("忻州"),getJsLang("阳泉"),getJsLang("运城")]);
dsy.add("0_0_22",[getJsLang("安康"),getJsLang("宝鸡"),getJsLang("汉中"),getJsLang("商洛"),getJsLang("铜川"),getJsLang("渭南"),getJsLang("西安"),getJsLang("咸阳"),getJsLang("延安"),getJsLang("榆林")]);
dsy.add("0_0_23",[getJsLang("上海")]);
dsy.add("0_0_24",[getJsLang("阿坝藏族羌族自治州"),getJsLang("巴中"),getJsLang("成都"),getJsLang("达州"),getJsLang("德阳"),getJsLang("甘孜藏族自治州"),getJsLang("广安"),getJsLang("广元"),getJsLang("乐山"),getJsLang("凉山彝族自治州"),getJsLang("眉山"),getJsLang("绵阳"),getJsLang("南充"),getJsLang("内江"),getJsLang("攀枝花"),getJsLang("遂宁"),getJsLang("雅安"),getJsLang("宜宾"),getJsLang("资阳"),getJsLang("自贡"),getJsLang("泸州")]);
dsy.add("0_0_25",[getJsLang("天津")]);
dsy.add("0_0_26",[getJsLang("阿里"),getJsLang("昌都"),getJsLang("拉萨"),getJsLang("林芝"),getJsLang("那曲"),getJsLang("日喀则"),getJsLang("山南")]);
dsy.add("0_0_27",[getJsLang("阿克苏"),getJsLang("阿拉尔"),getJsLang("巴音郭楞蒙古自治州"),getJsLang("博尔塔拉蒙古自治州"),getJsLang("昌吉回族自治州"),getJsLang("哈密"),getJsLang("和田"),getJsLang("喀什"),getJsLang("克拉玛依"),getJsLang("克孜勒苏柯尔克孜自治州"),getJsLang("石河子"),getJsLang("图木舒克"),getJsLang("吐鲁番"),getJsLang("乌鲁木齐"),getJsLang("五家渠"),getJsLang("伊犁哈萨克自治州")]);
dsy.add("0_0_28",[getJsLang("保山"),getJsLang("楚雄彝族自治州"),getJsLang("大理白族自治州"),getJsLang("德宏傣族景颇族自治州"),getJsLang("迪庆藏族自治州"),getJsLang("红河哈尼族彝族自治州"),getJsLang("昆明"),getJsLang("丽江"),getJsLang("临沧"),getJsLang("怒江傈傈族自治州"),getJsLang("曲靖"),getJsLang("思茅"),getJsLang("文山壮族苗族自治州"),getJsLang("西双版纳傣族自治州"),getJsLang("玉溪"),getJsLang("昭通")]);
dsy.add("0_0_29",[getJsLang("杭州"),getJsLang("湖州"),getJsLang("嘉兴"),getJsLang("金华"),getJsLang("丽水"),getJsLang("宁波"),getJsLang("绍兴"),getJsLang("台州"),getJsLang("温州"),getJsLang("舟山"),getJsLang("衢州")]);
dsy.add("0_0_30",[getJsLang("重庆")]);


dsy.add("0_1",[getJsLang("汉城特別市"),getJsLang("釜山广域市"),getJsLang("大邱广域市"),getJsLang("仁川广域市"),getJsLang("光州广域市"),getJsLang("大田广域市"),getJsLang("蔚山广域市"),getJsLang(" 京畿道"),getJsLang("江原道"),getJsLang("忠清北道"),getJsLang("忠清南道"),getJsLang("全罗北道"),getJsLang("全罗南道"),getJsLang("庆尚北道"),getJsLang("庆尚南道"),getJsLang("济州道")]);
dsy.add("0_1_0",[getJsLang("汉城")]);
dsy.add("0_1_1",[getJsLang("釜山"),getJsLang("机张郡")]);
dsy.add("0_1_2",[getJsLang("大邱"),getJsLang("达城郡")]);
dsy.add("0_1_3",[getJsLang("仁川"),getJsLang("江华郡"),getJsLang("瓮津郡")]);
dsy.add("0_1_4",[getJsLang("光州")]);
dsy.add("0_1_5",[getJsLang("大田")]);
dsy.add("0_1_6",[getJsLang("蔚山"),getJsLang("蔚州郡")]);
dsy.add("0_1_7",[getJsLang("水原市"),getJsLang("城南市"),getJsLang("安山市"),getJsLang("高阳市"),getJsLang("安养市"),getJsLang("富川市")]);
dsy.add("0_1_8",[getJsLang("春川市"),getJsLang("原州市"),getJsLang("江陵市")]);
dsy.add("0_1_9",[getJsLang("清州市")]);
dsy.add("0_1_10",[getJsLang("天安市")]);
dsy.add("0_1_11",[getJsLang("全州市"),getJsLang("群山市"),getJsLang("益山市")]);
dsy.add("0_1_12",[getJsLang("木浦市"),getJsLang("丽水市"),getJsLang("顺天市")]);
dsy.add("0_1_13",[getJsLang("浦项市"),getJsLang("龟尾市"),getJsLang("庆州市")]);
dsy.add("0_1_14",[getJsLang("昌原市"),getJsLang("马山市"),getJsLang("晋州市")]);
dsy.add("0_1_15",[getJsLang("济州市"),getJsLang("西归浦市"),getJsLang("北济州郡"),getJsLang("南济州郡")]);


dsy.add("0_2",[getJsLang("东京都"),getJsLang("神奈川县"),getJsLang("大阪府"),getJsLang("爱知县"),getJsLang("北海道"),getJsLang("兵库县"),getJsLang("京都府"),getJsLang("福冈县"),getJsLang("神奈川县"),getJsLang("埼玉县"),getJsLang("广岛县"),getJsLang("宫城县"),getJsLang("福冈县"),getJsLang("千叶县")]);
dsy.add("0_2_0",[getJsLang("东京")]);
dsy.add("0_2_1",[getJsLang("横滨市")]);
dsy.add("0_2_2",[getJsLang("大阪市")]);
dsy.add("0_2_3",[getJsLang("名古屋市 ")]);
dsy.add("0_2_4",[getJsLang("札幌市")]);
dsy.add("0_2_5",[getJsLang("神戸市")]);
dsy.add("0_2_6",[getJsLang("京都市")]);
dsy.add("0_2_7",[getJsLang("福冈市")]);
dsy.add("0_2_8",[getJsLang("川崎市")]);
dsy.add("0_2_9",[getJsLang("埼玉市")]);
dsy.add("0_2_10",[getJsLang("广岛市")]);
dsy.add("0_2_11",[getJsLang("仙台市")]);
dsy.add("0_2_12",[getJsLang("北九州市 ")]);
dsy.add("0_2_13",[getJsLang("千叶市")]);


dsy.add("0_3",[getJsLang("新加坡")]);
dsy.add("0_3_0",[getJsLang("新加坡")]);


dsy.add("0_4",[getJsLang("吉打 Kedah"),getJsLang("槟榔屿 Pulau Pinang"),getJsLang("霹雳 Perak"),getJsLang("吉兰丹 Kelantan"),getJsLang("丁加奴 Terengganu"),getJsLang("彭亨 Pahang"),getJsLang("雪兰莪 Selangor"),getJsLang("吉隆坡联邦直辖区 Kuala Lumpur"),getJsLang("布特拉再也联邦直辖区 Putrajaya"),getJsLang("森美兰 Sembilan"),getJsLang("马六甲 Melaka"),getJsLang("柔佛 Johor"),getJsLang("斗湖省 Tawau"),getJsLang("山打根省 Sandakan"),getJsLang("西海岸省 Pantai Barat")]);
dsy.add("0_4_0",[getJsLang("亚罗士打 Alor Setar"),getJsLang("浮罗交怡 Langkawi"),getJsLang("古邦巴素 Kubang Pasu"),getJsLang("巴东得腊 Padang Terap"),getJsLang("哥打士打 Kota Setar")]);
dsy.add("0_4_1",[getJsLang("槟城 George Town"),getJsLang("北区（北海） Utara (Butterworth)"),getJsLang("中区（大山脚） Tengah (Bkt. Mertajam)"),getJsLang("南区（高渊） Selatan (Nibong Tebal)"),getJsLang("东北 Timur Laut")]);
dsy.add("0_4_2",[getJsLang("怡保 Ipoh"),getJsLang("拉律-马当 Larut & Matang"),getJsLang("近打 Kinta"),getJsLang("江沙 Kuala Kangsar")]);
dsy.add("0_4_3",[getJsLang("哥打巴鲁 Kota Baharu"),getJsLang("道北 Tumpat"),getJsLang("哥登峇鲁 Kota Bharu"),getJsLang("巴西马 Pasir Mas")]);
dsy.add("0_4_4",[getJsLang("瓜拉丁加奴 Kuala Terengganu"),getJsLang("勿述 Besut"),getJsLang("瓜拉丁加奴 Kuala Terengganu"),getJsLang("龙运 Dungun"),getJsLang("甘马挽 Kemaman")]);
dsy.add("0_4_5",[getJsLang("关丹 Kuantan"),getJsLang("金马仑高原 Cameron Highlands"),getJsLang("立卑 Lipis"),getJsLang("关丹 Kuantan"),getJsLang("而连突 Jerantut")]);
dsy.add("0_4_6",[getJsLang("莎亚南 Shah Alam "),getJsLang("沙白安南 Sabak Bernam"),getJsLang("乌鲁雪兰莪 Ulu Selangor"),getJsLang("瓜拉雪兰莪 Kuala Selangor")]);
dsy.add("0_4_7",[getJsLang("吉隆坡 Kuala Lumpur")]);
dsy.add("0_4_8",[getJsLang("布特拉再也 Putrajaya")]);
dsy.add("0_4_9",[getJsLang("芙蓉 Seremban"),getJsLang("日叻务 Jelebu"),getJsLang("仁保 Jempol")]);
dsy.add("0_4_10",[getJsLang("马六甲 Melaka"),getJsLang("亚罗牙也 Alor Gajah")]);
dsy.add("0_4_11",[getJsLang("新山 Johor Baharu"),getJsLang("昔加末 Segamat"),getJsLang("丰盛港 Mersing"),getJsLang("居銮 Keluang")]);
dsy.add("0_4_12",[getJsLang("斗湖 Tawau"),getJsLang("拿笃 Lahad Datu")]);
dsy.add("0_4_13",[getJsLang("山打根 Sandakan"),getJsLang("京那巴登岸 Kinabatangan")]);
dsy.add("0_4_14",[getJsLang("哥打京那峇鲁（亚庇） Kota Kinabalu"),getJsLang("兰脑 Ranau"),getJsLang("古打毛律 Kota Belud"),getJsLang("斗亚兰 Tuaran")]);


dsy.add("0_5",[getJsLang("伊罗戈斯 Ilocos"),getJsLang("卡加延河谷 Cagayan"),getJsLang("中央吕宋 Central Luzon"),getJsLang("甲拉巴松 Calabarzon"),getJsLang("比科尔 Bicol"),getJsLang("西米沙鄢 Western Visayas"),getJsLang("中米沙鄢 Central Visayas"),getJsLang("东米沙鄢 Eastern Visayas"),getJsLang("国家首都区 National Capital Region")]);
dsy.add("0_5_0",[getJsLang("圣费尔南多* San Fernando")]);
dsy.add("0_5_1",[getJsLang("土格加劳 Tuguegarao")]);
dsy.add("0_5_2",[getJsLang("圣费尔南多* San Fernando")]);
dsy.add("0_5_3",[getJsLang("奎松城 Quezon")]);
dsy.add("0_5_4",[getJsLang("黎牙实比 Legaspi")]);
dsy.add("0_5_5",[getJsLang("伊洛伊洛 Legaspi")]);
dsy.add("0_5_6",[getJsLang("宿务 Cebu")]);
dsy.add("0_5_7",[getJsLang("塔克洛班 Tacloban")]);
dsy.add("0_5_8",[getJsLang("马尼拉 Manila")]);


dsy.add("0_6",[getJsLang("利雅得 Ar Riyad"),getJsLang("麦加 Makkah"),getJsLang("麦地那 Al Madinah"),getJsLang("东部 Ash Sharqiyah"),getJsLang("卡西姆 Al Qasim"),getJsLang("哈伊勒 Ha'il"),getJsLang("塔布克 Tabuk"),getJsLang("北部边疆 Al Hudud ash Shamaliyah"),getJsLang("吉赞 Jizan"),getJsLang("纳季兰 Najran"),getJsLang("巴哈 Al Bahah"),getJsLang("朱夫 Al Jawf"),getJsLang("阿西尔 ‘Asir")]);
dsy.add("0_6_0",[getJsLang("利雅得 Riyad"),getJsLang("海耶 Al-Kharj")]);
dsy.add("0_6_1",[getJsLang("麦加 Makkah"),getJsLang("吉达 Jiddah"),getJsLang("塔伊夫 At-Ta'if")]);
dsy.add("0_6_2",[getJsLang("麦地那 Madinah"),getJsLang("延布 Yanbu' al-Bahr")]);
dsy.add("0_6_3",[getJsLang("达曼 Dammam"),getJsLang("胡富夫 Al-Hufūf"),getJsLang("姆巴拉兹 Al-Mubarraz"),getJsLang("朱拜勒 Al-Jubayl"),getJsLang("哈费尔巴廷 Hafar al-Bātin")]);
dsy.add("0_6_4",[getJsLang("布赖代 Buraydah")]);
dsy.add("0_6_5",[getJsLang("哈伊勒 Ha'il")]);
dsy.add("0_6_6",[getJsLang("塔布克 Tabuk")]);
dsy.add("0_6_7",[getJsLang("阿尔阿尔 Ar'ar")]);
dsy.add("0_6_8",[getJsLang("吉赞 Jizan")]);
dsy.add("0_6_9",[getJsLang("纳季兰 Najran")]);
dsy.add("0_6_10",[getJsLang("巴哈 Al Bahah")]);
dsy.add("0_6_11",[getJsLang("塞卡卡 Sakaka")]);
dsy.add("0_6_12",[getJsLang("艾卜哈 Abhā"),getJsLang("海米斯穆谢特 Khamīs Mushayt")]);


dsy.add("0_7",[getJsLang("平壤直辖市"),getJsLang("罗先直辖市"),getJsLang("平安南道"),getJsLang("平安北道"),getJsLang("慈江道"),getJsLang("两江道"),getJsLang("咸镜北道"),getJsLang("咸镜南道"),getJsLang("黄海北道"),getJsLang("黄海南道"),getJsLang("江原道")]);
dsy.add("0_7_0",[getJsLang("平壤")]);
dsy.add("0_7_1",[getJsLang("罗津")]);
dsy.add("0_7_2",[getJsLang("南浦特级市"),getJsLang("平城市"),getJsLang("顺川市"),getJsLang("德川市"),getJsLang("安州市"),getJsLang("价川市")]);
dsy.add("0_7_3",[getJsLang("新义州市"),getJsLang("龟城市"),getJsLang("定州市")]);
dsy.add("0_7_4",[getJsLang("江界市"),getJsLang("满浦市"),getJsLang("煕川市")]);
dsy.add("0_7_5",[getJsLang("恵山市")]);
dsy.add("0_7_6",[getJsLang("清津市"),getJsLang("金策市"),getJsLang("会宁市")]);
dsy.add("0_7_7",[getJsLang("咸兴市"),getJsLang("兴南市"),getJsLang("新浦市"),getJsLang("端川市")]);
dsy.add("0_7_8",[getJsLang("沙里院市"),getJsLang("松林市"),getJsLang("开城市")]);
dsy.add("0_7_9",[getJsLang("海州市")]);
dsy.add("0_7_10",[getJsLang("元山市"),getJsLang("文川市")]);


dsy.add("0_8",[getJsLang("河内市"),getJsLang("山罗"),getJsLang("奠边"),getJsLang("谅山"),getJsLang("河西"),getJsLang("清化"),getJsLang("义安"),getJsLang("广南"),getJsLang("嘉莱"),getJsLang("多乐"),getJsLang("平福"),getJsLang("金瓯")]);
dsy.add("0_8_0",[getJsLang("河内市")]);
dsy.add("0_8_1",[getJsLang("山罗")]);
dsy.add("0_8_2",[getJsLang("奠边府市"),getJsLang("孟雷")]);
dsy.add("0_8_3",[getJsLang("谅山市")]);
dsy.add("0_8_4",[getJsLang("河东"),getJsLang("山西")]);
dsy.add("0_8_5",[getJsLang("清化市"),getJsLang("岑山"),getJsLang("拜尚")]);
dsy.add("0_8_6",[getJsLang("荣市"),getJsLang("扩路")]);
dsy.add("0_8_7",[getJsLang("三歧"),getJsLang("会安")]);
dsy.add("0_8_8",[getJsLang("波来古市"),getJsLang("安溪")]);
dsy.add("0_8_9",[getJsLang("邦美蜀市")]);
dsy.add("0_8_10",[getJsLang("东帅")]);
dsy.add("0_8_11",[getJsLang("金瓯市")]);


dsy.add("0_9",[getJsLang("实皆省 Sagaing"),getJsLang("望濑县 Monywa"),getJsLang("勃固省 Bago"),getJsLang("马圭省 Magway"),getJsLang("曼德勒省 Mandalay"),getJsLang("德林达依省 Tanintharyi"),getJsLang("伊洛瓦底省 Ayeyarwady"),getJsLang("仰光省 Yangon"),getJsLang("克钦邦 Kachin"),getJsLang("克耶邦 Kayah"),getJsLang("克伦邦 Kayin"),getJsLang("钦邦 Chin"),getJsLang("孟邦 Mon"),getJsLang("若开邦 Rakhine"),getJsLang("掸邦 Shan")]);
dsy.add("0_9_0",[getJsLang("实皆 Sagaing")]);
dsy.add("0_9_1",[getJsLang("望濑 Monywa")]);
dsy.add("0_9_2",[getJsLang("勃固 Bago")]);
dsy.add("0_9_3",[getJsLang("马圭 Magway")]);
dsy.add("0_9_4",[getJsLang("曼德勒 Mandalay")]);
dsy.add("0_9_5",[getJsLang("土瓦 Dawei")]);
dsy.add("0_9_6",[getJsLang("勃生 Pathein")]);
dsy.add("0_9_7",[getJsLang("仰光 Yangan ")]);
dsy.add("0_9_8",[getJsLang("密支那 Myitkyina")]);
dsy.add("0_9_9",[getJsLang("垒固 Loi-kaw")]);
dsy.add("0_9_10",[getJsLang("巴安 Pa-an")]);
dsy.add("0_9_11",[getJsLang("哈卡 Haka")]);
dsy.add("0_9_12",[getJsLang("毛淡棉 Mawlamyine")]);
dsy.add("0_9_13",[getJsLang("实兑 Akyab")]);
dsy.add("0_9_14",[getJsLang("东枝 Taunggyi")]);


dsy.add("0_10",[getJsLang("巴登-符腾堡 Baden-Württemberg"),getJsLang("拜恩（巴伐利亚）  Bayern"),getJsLang("柏 林 Berlin"),getJsLang("勃兰登堡 Brandenburg"),getJsLang("不来梅 Bremen"),getJsLang("汉 堡 Hamburg"),getJsLang("黑 森 Hessen"),getJsLang("梅克伦堡-前波莫瑞 Mecklenburg-Vorpommern"),getJsLang("下萨克森  Niedersachsen"),getJsLang("北莱茵-威斯特法伦 Nordrhein-Westfalen"),getJsLang("莱茵兰-普法尔茨 Rheinland-Pfalz"),getJsLang("萨 尔 Saarland"),getJsLang("萨克森 Sachsen"),getJsLang("萨克森-安哈特 Sachsen-Anhalt"),getJsLang("石勒苏益格-荷尔斯泰因 Schleswig-Holstein"),getJsLang("图林根 Thüringen")]);
dsy.add("0_10_0",[getJsLang("斯图加特  Stuttgart"),getJsLang("卡尔斯鲁厄 Karlsruhe"),getJsLang("弗赖堡 Freiburg"),getJsLang("图宾根 Tübingen")]);
dsy.add("0_10_1",[getJsLang("慕尼黑 München "),getJsLang("下拜恩 Niederbayern"),getJsLang("上普法尔茨 Oberpfalz"),getJsLang("上弗兰肯 Oberfranken"),getJsLang("中弗兰肯 Mittelfranken"),getJsLang("外弗兰肯 Unterfranken"),getJsLang("施瓦本 Schwaben")]);
dsy.add("0_10_2",[getJsLang("柏林 Berlin")]);
dsy.add("0_10_3",[getJsLang("波茨坦 Potsdam")]);
dsy.add("0_10_4",[getJsLang("不来梅 Bremen")]);
dsy.add("0_10_5",[getJsLang("汉堡 Hamburg")]);
dsy.add("0_10_6",[getJsLang("达姆施塔特 Darmstadt"),getJsLang("吉森 Gieben"),getJsLang("卡塞尔 Kassel")]);
dsy.add("0_10_7",[getJsLang("什未林 Schwerin")]);
dsy.add("0_10_8",[getJsLang("不伦瑞克 Braunschweig"),getJsLang("汉诺威  Hannover")]);
dsy.add("0_10_9",[getJsLang("杜塞尔多夫 Düsseldorf"),getJsLang("科隆 Koln"),getJsLang("明斯特 Münster"),getJsLang("代特莫尔特 Detmold")]);
dsy.add("0_10_10",[getJsLang("科布伦次 Koblenz "),getJsLang("特里尔 Trier"),getJsLang("莱茵黑森-普法尔茨")]);
dsy.add("0_10_11",[getJsLang("萨尔布吕肯 Saarbrücken")]);
dsy.add("0_10_12",[getJsLang("开姆尼斯 Chemnitz"),getJsLang("德累斯顿 Dresden"),getJsLang("莱比锡 Leipzig")]);
dsy.add("0_10_13",[getJsLang("德绍 Dessau"),getJsLang("哈雷 Halle"),getJsLang("马格德堡 Magdeburg")]);
dsy.add("0_10_14",[getJsLang("基尔 Kiel")]);
dsy.add("0_10_15",[getJsLang("埃尔富特 Erfurt")]);



dsy.add("0_11",[getJsLang("英格兰 England"),getJsLang("威尔士 Wales"),getJsLang("苏格兰 Scotland"),getJsLang("北爱尔兰 Northern Ireland")]);
dsy.add("0_11_0",[getJsLang("坎布里亚 Cumbria"),getJsLang("兰开夏 Lancashire "),getJsLang("布莱克本 Blackburn with Darwen"),getJsLang("大曼彻斯特 Greater Manchester"),getJsLang("柴郡 Cheshire "),getJsLang("诺森伯兰 Northumberland"),getJsLang("达勒姆 Durham"),getJsLang("北约克郡 North Yorkshire"),getJsLang("约克郡东区 East Riding of Yorkshire"),getJsLang("西约克郡 West Yorkshire"),getJsLang("南约克郡 South Yorkshire"),getJsLang("林肯郡 Lincolnshire"),getJsLang("诺丁汉郡 Nottinghamshire"),getJsLang("斯塔福德郡 Staffordshire"),getJsLang("诺福克 Norfolk"),getJsLang("伦敦 London"),getJsLang("白金汉郡 Buckinghamshire"),getJsLang("牛津郡 Oxfordshire"),getJsLang("格洛斯特郡 Gloucestershire")]);
dsy.add("0_11_1",[getJsLang("康威 Conwy *"),getJsLang("圭内斯 Gwynedd"),getJsLang("锡尔迪金 Ceredigion"),getJsLang("波伊斯 Powys"),getJsLang("彭布罗克郡 Pembrokeshire"),getJsLang("卡马森郡 Carmarthenshire")]);
dsy.add("0_11_2",[getJsLang("苏格兰高地 Highland"),getJsLang("马里 Moray"),getJsLang("阿伯丁郡 Aberdeenshire"),getJsLang("安格斯 Angus"),getJsLang("珀斯-金罗斯 Perth and Kinross"),getJsLang("法夫 Fife"),getJsLang("斯特灵 Stirling"),getJsLang("阿盖尔-比特 Argyll and Bute"),getJsLang("苏格兰边界 Scottish Borders"),getJsLang("邓弗里斯-加洛韦 Dumfries and Galloway")]);
dsy.add("0_11_3",[getJsLang("阿兹 Ards"),getJsLang("卡斯尔雷 Castlereagh"),getJsLang("唐 Down"),"贝尔法斯特 Belfast, City of",getJsLang("利斯本 Lisburn"),getJsLang("巴利米纳 Ballymena"),getJsLang("莫伊尔 Moyle"),getJsLang("阿马 Armagh")]);


dsy.add("0_12",[getJsLang("法兰西岛 Ile-de-France"),getJsLang("香槟-阿登 Champagne-Ardenne"),getJsLang("皮卡第 Picardie"),getJsLang("上诺曼底 Haute-Normandie"),getJsLang("中央 Centre"),getJsLang("下诺曼底 Basse-Normandie"),getJsLang("勃艮第 Bourgogne"),getJsLang("北部-加莱海峡 Nord-pas-de-Calais"),getJsLang("洛林 Lorraine"),getJsLang("阿尔萨斯 Alsace"),getJsLang("弗朗什孔泰 Franche-Comté"),getJsLang("卢瓦尔河地区 Pays de la Loire"),getJsLang("布列塔尼 Bretagne"),getJsLang("普瓦图-夏朗德 Poitou-Charentes"),getJsLang("阿基坦 Aquitaine"),getJsLang("南部-比利牛斯 Midi-Pyrénées"),getJsLang("利穆赞 Limousin"),getJsLang("罗讷-阿尔卑斯 Rhone-Alpes"),getJsLang("奥弗涅 Auvergne"),getJsLang("朗格多克-鲁西永 Languedoc-Roussillon"),getJsLang("普罗旺斯-阿尔卑斯-蓝色海岸 Provence-Alpes-Cote d'Azur"),getJsLang("科西嘉 Corse")]);
dsy.add("0_12_0",[getJsLang("巴黎 Paris")]);
dsy.add("0_12_1",[getJsLang("兰斯 Reims")]);
dsy.add("0_12_2",[getJsLang("亚眠 Ameiens")]);
dsy.add("0_12_3",[getJsLang("鲁昂 Rouen")]);
dsy.add("0_12_4",[getJsLang("奥尔良 Orléans")]);
dsy.add("0_12_5",[getJsLang("卡昂 Caen")]);
dsy.add("0_12_6",[getJsLang("第戎 Dijon")]);
dsy.add("0_12_7",[getJsLang("里尔 Lille")]);
dsy.add("0_12_8",[getJsLang("南锡 Nancy")]);
dsy.add("0_12_9",[getJsLang("斯特拉斯堡 Strasbourg")]);
dsy.add("0_12_10",[getJsLang("贝桑松 Besancon")]);
dsy.add("0_12_11",[getJsLang("南特 Nantes")]);
dsy.add("0_12_12",[getJsLang("雷恩 Rennes")]);
dsy.add("0_12_13",[getJsLang("普瓦捷 Poitiers")]);
dsy.add("0_12_14",[getJsLang("波尔多 Bordeaux")]);
dsy.add("0_12_15",[getJsLang("图卢兹 Toulouse")]);
dsy.add("0_12_16",[getJsLang("利摩日 Limoges")]);
dsy.add("0_12_17",[getJsLang("里昂 Lyon")]);
dsy.add("0_12_18",[getJsLang("克莱蒙费朗 Clerment-Ferrand")]);
dsy.add("0_12_19",[getJsLang("蒙彼里埃 Montpellier")]);
dsy.add("0_12_20",[getJsLang("马赛 Marseille")]);
dsy.add("0_12_21",[getJsLang("阿雅克肖 Ajaccio")]);


dsy.add("0_13",[getJsLang("穆斯特省 Munster"),getJsLang("康诺特省 Connacht"),getJsLang("伦斯特省 Leinster"),getJsLang("阿尔斯特省 Ulster")]);
dsy.add("0_13_0",[getJsLang("科克 Cork"),getJsLang("沃特福德 Waterford"),getJsLang("利默里克 Limerick"),getJsLang("凯里 Kerry"),getJsLang("蒂珀雷里 Tipperary"),getJsLang("克莱尔 Clare")]);
dsy.add("0_13_1",[getJsLang("戈尔韦 Galway"),getJsLang("梅奥 Mayo"),getJsLang("罗斯康芒  Roscommon"),getJsLang("利特里姆  Leitrim"),getJsLang("斯莱戈 Sligo")]);
dsy.add("0_13_2",[getJsLang("都柏林 Dublin"),getJsLang("基尔代尔 Kildare"),getJsLang("米斯 Meath"),getJsLang("威克洛 Wicklow"),getJsLang("西米斯 Westmeath"),getJsLang("卡范 Cavan"),getJsLang("朗福德 Longford"),getJsLang("奥法利  Offaly"),getJsLang("崂斯  Laoighis"),getJsLang("卡洛 Carlow"),getJsLang("基尔肯尼 Kilkenny"),getJsLang("韦克斯福德 Wexford")]);
dsy.add("0_13_3",[getJsLang("劳斯 Louth"),getJsLang("多内加尔 Donegal"),getJsLang("莫内根 Monaghan"),getJsLang("阿马 Armagh"),getJsLang("安特里姆 Antrim"),getJsLang("德里 Derry"),getJsLang("唐 Down"),getJsLang("泰隆 Tyrone"),getJsLang("弗马纳 Fermanagh")]);


dsy.add("0_14",[getJsLang("下西里西亚 Dolnoslaskie"),getJsLang("库亚瓦滨海 Kujawsko-Pomorskie"),getJsLang("罗兹 Lódzkie "),getJsLang("卢布林 Lubelskie"),getJsLang("鲁布斯卡 Lubuskie"),getJsLang("小波兰 Malopolskie"),getJsLang("马佐夫舍 Mazowieckie"),getJsLang("奥波莱 Opolskie"),getJsLang("喀尔巴阡山 Podkarpackie"),getJsLang("波德拉斯 Podlaskie"),getJsLang("滨海 Pomorskie"),getJsLang("西里西亚 Slaskie"),getJsLang("圣十字 Swietokrzyskie"),getJsLang("瓦尔米亚马祖尔 Warmińsko-Mazurskie"),getJsLang("大波兰 Wielkopolskie"),getJsLang("西滨海 Zachodniopomorskie")]);
dsy.add("0_14_0",[getJsLang("弗罗茨瓦夫"),getJsLang("耶莱尼亚古拉"),getJsLang("瓦乌布日赫"),getJsLang("莱格尼察")]);
dsy.add("0_14_1",[getJsLang("比得哥什"),getJsLang("托伦"),getJsLang("格鲁琼兹"),getJsLang("弗沃茨瓦韦克")]);
dsy.add("0_14_2",[getJsLang("罗兹"),getJsLang("彼得库夫"),getJsLang("斯凯尔涅维采"),getJsLang("谢拉兹")]);
dsy.add("0_14_3",[getJsLang("卢布林"),getJsLang("海乌姆"),getJsLang("扎莫希奇"),getJsLang("比亚瓦波德拉斯卡")]);
dsy.add("0_14_4",[getJsLang("绿山城"),getJsLang("大波兰地区戈茹夫")]);
dsy.add("0_14_5",[getJsLang("克拉科夫"),getJsLang("塔尔努夫"),getJsLang("新松奇")]);
dsy.add("0_14_6",[getJsLang("华沙"),getJsLang("切哈努夫"),getJsLang("普沃茨克"),getJsLang("奥斯特罗文卡"),getJsLang("谢德尔采"),getJsLang("拉多姆")]);
dsy.add("0_14_7",[getJsLang("奥波莱")]);
dsy.add("0_14_8",[getJsLang("热舒夫"),getJsLang("塔尔诺布热格"),getJsLang("克罗斯诺"),getJsLang("普热梅希尔")]);
dsy.add("0_14_9",[getJsLang("比亚维斯托克"),getJsLang("苏瓦乌基"),getJsLang("沃姆扎")]);
dsy.add("0_14_10",[getJsLang("格但斯克"),getJsLang("格丁尼亚"),getJsLang("索波特"),getJsLang("斯武普斯克")]);
dsy.add("0_14_11",[getJsLang("卡托维兹"),getJsLang("琴斯托霍瓦"),getJsLang("别尔斯科-比亚瓦"),getJsLang("雷布尼克"),getJsLang("索斯诺维茨"),getJsLang("格利维采"),getJsLang("比托姆")]);
dsy.add("0_14_12",[getJsLang("凯尔采")]);
dsy.add("0_14_13",[getJsLang("奥尔什丁"),getJsLang("埃尔布隆格")]);
dsy.add("0_14_14",[getJsLang("波兹南"),getJsLang("皮瓦"),getJsLang("卡利什"),getJsLang("莱什诺"),getJsLang("科宁")]);
dsy.add("0_14_15",[getJsLang("什切青"),getJsLang("科沙林"),getJsLang("希维诺乌伊希切")]);


dsy.add("0_15",[getJsLang("安达卢西亚 Andalucía"),getJsLang("阿拉贡 Aragón"),getJsLang("阿斯图利亚斯 Asturias"),getJsLang("巴利阿里群岛 Baleares"),getJsLang("加那利 Canarias"),getJsLang("坎塔布利亚 Cantábria"),getJsLang("卡斯蒂利亚－拉曼恰 Castilla-La Mancha"),getJsLang("卡斯蒂利亚－莱昂 Castilla y Léon"),getJsLang("加泰罗尼亚* Cataluna"),getJsLang("加利西亚* Galicia"),getJsLang("马德里 Madrid")]);
dsy.add("0_15_0",[getJsLang("阿尔梅里亚 Almería"),getJsLang("加的斯 Cádiz"),getJsLang("科尔多瓦 Córdoba"),getJsLang("格拉纳达 Granada"),getJsLang("韦尔瓦 Huelva"),getJsLang("哈恩 Jáen"),getJsLang("马拉加 Málaga"),getJsLang("塞维利亚 Sevilla")]);
dsy.add("0_15_1",[getJsLang("韦斯卡 Huesca"),getJsLang("特鲁埃尔 Teruel"),getJsLang("萨拉戈萨 Zaragoza")]);
dsy.add("0_15_2",[getJsLang("奥维耶多 Oviedo")]);
dsy.add("0_15_3",[getJsLang("巴利阿里 Baleares")]);
dsy.add("0_15_4",[getJsLang("拉斯帕尔马斯 Las Palmas"),getJsLang("圣克鲁斯-德特内里费 Santa Cruz de Tenerife")]);
dsy.add("0_15_5",[getJsLang("桑坦德 Santander")]);
dsy.add("0_15_6",[getJsLang("阿尔瓦塞特 Albacete"),getJsLang("雷阿尔城 Ciudad Real"),getJsLang("昆卡 Cuenca"),getJsLang("瓜达拉哈拉 Guadalajara"),getJsLang("托莱多 Toledo")]);
dsy.add("0_15_7",[getJsLang("阿维拉 ávila"),getJsLang("布尔戈斯 Burgos"),getJsLang("莱昂 León"),getJsLang("帕伦西亚 Palencia"),getJsLang("萨拉曼卡 Salamanca"),getJsLang("塞哥维亚 Segovia"),getJsLang("索里亚 Soria"),getJsLang("巴利亚多利德 Valladolid"),getJsLang("萨莫拉 Zamora")]);
dsy.add("0_15_8",[getJsLang("巴塞罗那 Barcelona"),getJsLang("赫罗纳 Gerona"),getJsLang("莱里达 Lérida"),getJsLang("塔拉戈纳 Tarragona")]);
dsy.add("0_15_9",[getJsLang("拉科鲁尼亚 A Coruna"),getJsLang("卢戈 Lugo"),getJsLang("奥伦塞 Ourense"),getJsLang("蓬特韦德拉 Pontevedra")]);
dsy.add("0_15_10",[getJsLang("马德里 Madrid")]);
dsy.add("0_16",[getJsLang("阿布鲁佐 Abruzzi"),getJsLang("巴西利卡塔 Basilicata"),getJsLang("卡拉布里亚 Calabria"),getJsLang("坎帕尼亚 Campania"),getJsLang("艾米利亚－罗马涅 Emilia-Romagna"),getJsLang("弗留利－威尼斯·朱利亚* Friuli-Venezia Giulia"),getJsLang("拉齐奥 Lazio"),getJsLang("利古里亚 Liguria"),getJsLang("伦巴第 Lombardia"),getJsLang("马尔凯 Marche"),getJsLang("莫利塞 Molise"),getJsLang("皮埃蒙特 Piemonte"),getJsLang("普利亚 Puglia"),getJsLang("撒丁* Sardegna"),getJsLang("西西里* Sicilia"),getJsLang("托斯卡纳 Toscana"),getJsLang("特伦蒂诺-上阿迪杰* Trentino-Alto Adige"),getJsLang("翁布里亚 Umbria"),getJsLang("瓦莱·达奥斯塔* Valle d'Aosta"),getJsLang("威尼托 Veneto")]);
dsy.add("0_16_0",[getJsLang("拉奎拉 L'Aquila")]);
dsy.add("0_16_1",[getJsLang("波坦察 Potenza")]);
dsy.add("0_16_2",[getJsLang("卡坦扎罗 Catanzaro")]);
dsy.add("0_16_3",[getJsLang("那波利 Napoli")]);
dsy.add("0_16_4",[getJsLang("博洛尼亚 Bologna")]);
dsy.add("0_16_5",[getJsLang("的里雅斯特 Trieste")]);
dsy.add("0_16_6",[getJsLang("罗马 Roma")]);
dsy.add("0_16_7",[getJsLang("热那亚 Genova")]);
dsy.add("0_16_8",[getJsLang("米兰 Milano")]);
dsy.add("0_16_9",[getJsLang("安科纳 Ancona")]);
dsy.add("0_16_10",[getJsLang("坎波巴索 Campobasso")]);
dsy.add("0_16_11",[getJsLang("都灵 Torino")]);
dsy.add("0_16_12",[getJsLang("巴里 Bari")]);
dsy.add("0_16_13",[getJsLang("卡利亚里 Cagliari")]);
dsy.add("0_16_14",[getJsLang("巴勒莫 Palermo")]);
dsy.add("0_16_15",[getJsLang("佛罗伦萨 Firenze")]);
dsy.add("0_16_16",[getJsLang("特伦托 Trento")]);
dsy.add("0_16_17",[getJsLang("佩鲁贾 Perugia")]);
dsy.add("0_16_18",[getJsLang("奥斯塔 Aosta")]);
dsy.add("0_16_19",[getJsLang("威尼斯 Venezia")]); 
dsy.add("0_17",[getJsLang("西北 Severo-Zapadnyj"),getJsLang("中央 Central'nyj "),getJsLang("南方 Juznyj "),getJsLang("伏尔加 Privolzskij "),getJsLang("乌拉尔 Ural'skij"),getJsLang("西伯利亚 Sibirskij"),getJsLang("远东 Dal'nevostocnij")]);
dsy.add("0_17_0",[getJsLang("阿尔汉格尔斯克州 Archangel'sk Obl."),getJsLang("涅涅茨自治区 Nenetskiy AOK"),getJsLang("圣彼得堡市 Gorod Sankt-Peterburg"),getJsLang("加里宁格勒州 Kaliningrad Obl."),getJsLang("卡累利阿共和国 Karelija ARep."),getJsLang("科米共和国 Komi ARep."),getJsLang("列宁格勒州 Leningrad Obl."),getJsLang("摩尔曼斯克州 Murmansk Obl."),getJsLang("诺夫哥罗德州 Novgorod Obl."),getJsLang("普斯科夫州 Pskov Obl."),getJsLang("沃洛格达州 Vologda Obl.")]);
dsy.add("0_17_1",[getJsLang("别尔哥罗德州 Belgorod Obl."),getJsLang("布良斯克州 Br'ansk Obl."),getJsLang("莫斯科市 Gorod Moskva."),getJsLang("伊万诺沃州 Ivanovo Obl."),getJsLang("雅罗斯拉夫尔州 Jaroslavl' Obl."),getJsLang("卡卢加州 Kaluga Obl."),getJsLang("库尔斯克州 Kursk Obl."),getJsLang("莫斯科州 Moskva Obl.")]);
dsy.add("0_17_2",[getJsLang("阿迪格共和国 Adygeja ARep."),getJsLang("阿斯特拉罕州 Astrachan' Obl."),getJsLang("车臣共和国 Cecenija ARep."),getJsLang("达吉斯坦共和国 Dagestan  ARep."),getJsLang("印古什共和国 Ingusetija ARep."),getJsLang("卡巴尔达－巴尔卡尔共和国 Kabardino-Balkarija ARep."),getJsLang("卡尔梅克共和国 Kalmykija ARep."),getJsLang("卡拉恰耶夫－切尔克斯共和国 Karacajevo-Cerkesija ARep."),getJsLang("克拉斯诺达尔边疆区 Krasnodar Kraj."),getJsLang("罗斯托夫州 Rostov Obl."),getJsLang("北奥塞梯－阿兰社会主义共和国 Severnaja Osetija-Alanija ARep."),getJsLang("斯塔夫罗波尔边疆区 Stavropol' Kraj."),getJsLang("伏尔加格勒州 Volgograd Obl.")]);
dsy.add("0_17_3",[getJsLang("巴什科尔托 斯坦共和国 Ba?kortostan ARep."),getJsLang("楚瓦什共和国 ?uva?ija  ARep."),getJsLang("基洛夫州 Kirov  Obl."),getJsLang("马里－埃尔共和国 Marij El  ARep."),getJsLang("莫尔多瓦社会主义共和国 Mordovija  ARep."),getJsLang("下诺夫哥罗德州 Niznij Novgorod  Obl."),getJsLang("奥伦堡州 Orenburg  Obl."),getJsLang("奔萨州 Penza  Obl."),getJsLang("彼尔姆州 Perm'  Obl."),getJsLang(" 科米－彼尔米亚克自治区  Komi-Permyatskiy AOK"),getJsLang("萨马拉州 Samara  Obl."),getJsLang("萨拉托夫州 Saratov  Obl.")]);
dsy.add("0_17_4",[getJsLang(" 车里雅宾斯克州 Cel'abinsk Obl."),getJsLang("库尔干州 Kurgan Obl."),getJsLang("斯维尔德洛夫斯克州 Sverdlovsk Obl."),getJsLang("秋明州 T'umen' Obl."),getJsLang("汉特－曼西自治区 Khanty-Mansiyskiy AOK"),getJsLang("亚马尔－涅涅茨自治区 Yamalo-Nenetskiy AOK")]);
dsy.add("0_17_5",[getJsLang("赤塔州 Cita Obl."),getJsLang("Чита г. 赤塔市"),getJsLang("Балей 巴列伊市"),getJsLang("Петровск-Забайкальский г. 外贝加尔的彼得罗夫斯克市"),getJsLang("Борзя г. 博尔贾市"),getJsLang("Краснокаменск г. 克拉斯诺卡缅斯克市"),getJsLang("Северобайкальск г. 北贝加尔斯克市"),getJsLang("Улан-Удэ г. 乌兰乌德市"),getJsLang("Гусиноозерск г. 古西诺奥泽尔斯克市"),getJsLang("伊尔库茨克州 Irkutsk Obl."),getJsLang("Усть-Кут г. 乌斯季库特市"),getJsLang("Бодайбо 博代博市"),getJsLang("Тайшет г. 泰舍特市"),getJsLang("Братск г. 布拉茨克市"),getJsLang("Нижнеудинск г. 下乌金斯克市"),getJsLang("Тулун 图伦市"),getJsLang("Саянск 萨彦斯克市"),getJsLang("特瓦共和国 Tyva ARep."),getJsLang("克拉斯诺亚尔斯克边疆区 Krasnojarsk ARep."),getJsLang("哈卡斯共和国 Chakasija ARep."),getJsLang("阿尔泰共和国 Altaj  ARep."),getJsLang("阿尔泰边疆区 Altaskij Kraj"),getJsLang("克麦罗沃州 Kemerovo Obl."),getJsLang("新西伯利亚州 Novosibirsk Obl."),getJsLang("托木斯克州 Tomsk Obl."),getJsLang("鄂木斯克州 Omsk Obl.")]);
dsy.add("0_17_6",[getJsLang("滨海边疆区 Приморский край/ Primorskij Kraj."),getJsLang("哈巴罗夫斯克边疆区 Хабаровский край/ Chabarovsk Kraj."),getJsLang("犹太自治州 Еврейская автономная область/Jevrej AArea."),getJsLang("阿穆尔州 Amur Obl."),getJsLang("萨哈林州 Sakhalin Obl."),getJsLang("马加丹州 Magadan Obl."),getJsLang("勘察加州 Kamcatka Obl."),getJsLang("楚科奇自治专区 Cukotskij Avtonomnyj Okrug AArea."),getJsLang("萨哈（雅库特）共和国 Sacha (Jakutija) ARep.")]);


dsy.add("0_18", [getJsLang("德伦特 Drenthe"),getJsLang("弗莱福兰 Flevoland"),getJsLang("弗里斯兰* Friesland"),getJsLang("海尔德兰 Gelderland"),getJsLang("格罗宁根 Groningen"),getJsLang("林堡 Limburg"),getJsLang("北布拉班特 Noord-Brabant"),getJsLang("北荷兰 Noord-Holland "),getJsLang("上艾瑟尔 Overijssel"),getJsLang("乌得勒支 Utrecht"),getJsLang("泽兰 Zeeland"),getJsLang("南荷兰 Zuid-Holland")]);
dsy.add("0_18_0",[getJsLang("阿森 Assen"),getJsLang("埃门 Emmen")]);
dsy.add("0_18_1",[getJsLang("莱利斯塔德 Lelystad"),getJsLang("阿尔梅勒 Almere")]);
dsy.add("0_18_2",[getJsLang("吕伐登 Leeuwarden")]);
dsy.add("0_18_3",[getJsLang("阿纳姆 Arnhem"),getJsLang("阿珀尔多伦 Apeldoorn"),getJsLang("埃德 Ede"),getJsLang("奈梅亨 Nijmegen")]);
dsy.add("0_18_4",[getJsLang("格罗宁根 Groningen")]);
dsy.add("0_18_5",[getJsLang("马斯特里赫特 Maastricht")]);
dsy.add("0_18_6",[getJsLang("斯海尔托亨博思 's-Hertogenbosch"),getJsLang("布雷达 Breda"),getJsLang("艾恩德霍芬 Eindhoven"),getJsLang("蒂尔堡 Tilburg")]);
dsy.add("0_18_7",[getJsLang("哈勒姆 Haarlem"),getJsLang("阿姆斯特丹 Amsterdam"),getJsLang("赞济科 Zaandijk"),getJsLang("霍夫多尔普 Hoofddorp")]);
dsy.add("0_18_8",[getJsLang("兹沃勒 Zwolle"),getJsLang("恩斯赫德 Enschede")]);
dsy.add("0_18_9",[getJsLang("乌得勒支 Utrecht"),getJsLang("阿默斯福特 Amersfoort")]);
dsy.add("0_18_10",[getJsLang("米德尔堡 Middelburg")]);
dsy.add("0_18_11",[getJsLang("海牙 's-Gravenhage"),getJsLang("鹿特丹 Rotterdam"),getJsLang("多德雷赫特 Dordrecht"),getJsLang("莱顿 Leiden"),getJsLang("佐特尔梅 Zoetermeer")]);


dsy.add("0_19", [getJsLang("阿拉巴马 Alabama"),getJsLang("阿拉斯加 Alaska"),getJsLang("亚利桑那 Arizona"),getJsLang("阿肯色 Arkansas"),getJsLang("加利福尼亚 California"),getJsLang("科罗拉多 Colorado"),getJsLang("康涅狄格 Connecticut"),getJsLang("特拉华 Delaware"),getJsLang("哥伦比亚特区 District of Columbia"),getJsLang("佛罗里达 Florida"),getJsLang("乔治亚 Georgia"),getJsLang("夏威夷 Hawaii"),getJsLang("爱达荷 Idaho"),getJsLang("伊利诺斯 Illinois"),getJsLang("印地安那 Indiana"),getJsLang("衣阿华 Iowa"),getJsLang("堪萨斯 Kansas"),getJsLang("肯塔基 Kentucky"),getJsLang("路易斯安那 Louisiana"),getJsLang("缅因 Maine"),getJsLang("马里兰 Maryland"),getJsLang("马萨诸塞 Massachusetts"),getJsLang("密歇根 Michigan"),getJsLang("明尼苏达 Minnesota"),getJsLang("密西西比 Mississippi"),getJsLang("密苏里 Missouri"),getJsLang("蒙大拿 Montana"),getJsLang("内布拉斯加 Nebraska"),getJsLang("内华达 Nevada"),getJsLang("新罕布什尔 New Hampshire"),getJsLang("新泽西 New Jersey"),getJsLang("新墨西哥 New Mexico"),getJsLang("纽约 New York"),getJsLang("犹他 Utah"),getJsLang("华盛顿 Washington"),getJsLang("威斯康星 Wisconsin")]);
dsy.add("0_19_0",[getJsLang("蒙哥马利 Montgomery")]);
dsy.add("0_19_1",[getJsLang("朱诺 Juneau")]);
dsy.add("0_19_2",[getJsLang("菲尼克斯 Phoenix")]);
dsy.add("0_19_3",[getJsLang("小石城 Little Rock")]);
dsy.add("0_19_4",[getJsLang("萨克拉门多 Sacramento")]);
dsy.add("0_19_5",[getJsLang("丹佛 Denver")]);
dsy.add("0_19_6",[getJsLang("哈特福德 Hartford")]);
dsy.add("0_19_7",[getJsLang("多佛 Dover")]);
dsy.add("0_19_8",[getJsLang("华盛顿 Washington")]);
dsy.add("0_19_9",[getJsLang("塔拉哈西 Tallahassee")]);
dsy.add("0_19_10",[getJsLang("亚特兰大 Atlanta")]);
dsy.add("0_19_11",[getJsLang("檀香山 Honolulu")]);
dsy.add("0_19_12",[getJsLang("博伊亚 Boise")]);
dsy.add("0_19_13",[getJsLang("斯普林菲尔德 Springfield")]);
dsy.add("0_19_14",[getJsLang("印第安纳波利斯 Indianapolis")]);
dsy.add("0_19_15",[getJsLang("得梅因 Des Moines")]);
dsy.add("0_19_16",[getJsLang("托皮卡 Topeka")]);
dsy.add("0_19_17",[getJsLang("法兰克福 Frankfort")]);
dsy.add("0_19_18",[getJsLang("巴吞鲁日 Baton Rouge")]);
dsy.add("0_19_19",[getJsLang("奥古斯塔 Augusta")]);
dsy.add("0_19_20",[getJsLang("安纳波利斯 Annapolis")]);
dsy.add("0_19_21",[getJsLang("波土顿 Boston")]);
dsy.add("0_19_22",[getJsLang("兰辛 Lansing")]);
dsy.add("0_19_23",[getJsLang("圣保罗 St.Paul")]);
dsy.add("0_19_24",[getJsLang("杰克逊 Jackson")]);
dsy.add("0_19_25",[getJsLang("杰斐逊城 Jefferson City")]);
dsy.add("0_19_26",[getJsLang("赫勒纳 Helena")]);
dsy.add("0_19_27",[getJsLang("林肯 Lincoln")]);
dsy.add("0_19_28",[getJsLang("卡森城 Carson City")]);
dsy.add("0_19_29",[getJsLang("康科德 Concord")]);
dsy.add("0_19_30",[getJsLang("特伦顿 Trenton")]);
dsy.add("0_19_31",[getJsLang("圣菲 Santa Fe")]);
dsy.add("0_19_32",[getJsLang("奥尔巴尼 Albany")]);
dsy.add("0_19_33",[getJsLang("盐湖城 Salt Lake City")]);
dsy.add("0_19_34",[getJsLang("奥林匹亚 Olympia")]);
dsy.add("0_19_35",[getJsLang("麦迪逊 Madison")]);


dsy.add("0_20", [getJsLang("新不伦瑞克省 New Brunswick"),getJsLang("新斯科舍省 Nova Scotia"),getJsLang("安大略省 Ontario"),getJsLang("魁北克省 Québec"),getJsLang("马尼托巴省 Manitoba"),getJsLang("不列颠哥伦比亚省 British Columbia"),getJsLang("爱德华王子岛省 Prince Edward Island"),getJsLang("艾伯塔省 Alberta"),getJsLang("萨斯喀彻温省 Saskatchewan"),getJsLang("纽芬兰-拉布拉多省 Newfoundland-Labrador"),getJsLang("西北地区 Northwest Territories"),getJsLang("育空地区 Yukon Territory"),getJsLang("努纳维特地区 Nunavut Territory")]);
dsy.add("0_20_0",[getJsLang("弗雷德里顿 Fredericton")]);
dsy.add("0_20_1",[getJsLang("哈利法克斯 Halifax"),getJsLang("布列塔尼角 Cape Breton")]);
dsy.add("0_20_2", [getJsLang("多伦多 Toronto"),getJsLang("渥太华 Ottawa"),getJsLang("哈密尔顿 Hamilton"),getJsLang("基奇纳 Kitchener"),getJsLang("伦敦 London"),getJsLang("圣卡塔琳娜 St. Catharines"),getJsLang("温莎 Windsor"),getJsLang("奥沙瓦 Oshawa"),getJsLang("巴里 Barrie"),getJsLang("金斯敦 Kingston"),getJsLang("圭尔夫 Guelph"),getJsLang("萨德伯里 Sudbury"),getJsLang("桑德贝 Thunder Bay")]);
dsy.add("0_20_3",[getJsLang("魁北克 Québec"),getJsLang("蒙特利尔 Montréal"),getJsLang("舍布鲁克 Sherbrooke"),getJsLang("钻石城 Trois-Rivières"),getJsLang("希格蒂米 Chicoutimi")]);
dsy.add("0_20_4",[getJsLang("温尼伯 Winnipeg")]);
dsy.add("0_20_5",[getJsLang("维多利亚 Victoria"),getJsLang("温哥华 Vancouver"),getJsLang("阿伯茨福 Abbotsford"),getJsLang("基劳纳 Kelowna")]);
dsy.add("0_20_6",[getJsLang("夏洛特敦 Charlottetown")]);
dsy.add("0_20_7",[getJsLang("埃德蒙顿 Edmonton"),getJsLang("卡里加里 Calgary")]);
dsy.add("0_20_8",[getJsLang("里贾纳 Regina"),getJsLang("萨斯卡通 Saskatoon")]);
dsy.add("0_20_9",[getJsLang("圣约翰斯 Saint-John's")]);
dsy.add("0_20_10",[getJsLang("耶洛奈夫 Yellowknife")]);
dsy.add("0_20_11",[getJsLang("怀特霍斯 Whitehorse")]);
dsy.add("0_20_12",[getJsLang("伊魁特 Iqaluit")]);


dsy.add("0_21", [getJsLang("联邦首都 Distrito Federal"),getJsLang("戈亚斯 Goiás"),getJsLang("马托格罗索 Mato Grosso"),getJsLang("南马托格罗索 Mato Grosso do Sul"),getJsLang("阿拉戈斯 Alagoas"),getJsLang("巴伊亚 Bahia"),getJsLang("塞阿拉 Ceará"),getJsLang("马拉尼昂 Maranhao"),getJsLang("帕拉伊巴 Paraíba"),getJsLang("伯南布哥 Pernambuco"),getJsLang("皮奥伊 Piauí"),getJsLang("北里奥格兰德 Rio Grande do Norte"),getJsLang("塞尔希培 Sergipe"),getJsLang("阿克里 Acre"),getJsLang("阿马帕 Amapá"),getJsLang("亚马孙 Amazonas"),getJsLang("帕拉 Pará"),getJsLang("朗多尼亚 Rondonia"),getJsLang("罗赖马 Roraima"),getJsLang("托坎廷斯 Tocantins"),getJsLang("圣埃斯皮里图 Espírito Santo*"),getJsLang("米纳斯吉拉斯 Minas Gerais"),getJsLang("里约热内卢 Rio de Janeiro"),getJsLang("圣保罗 Sao Paulo"),getJsLang("巴拉那 Paraná"),getJsLang("南里奥格兰德 Rio Grande do Sul**"),getJsLang("圣卡塔琳娜 Santa Catarina")]);
dsy.add("0_21_0",[getJsLang("巴西利亚 Brasília")]);
dsy.add("0_21_1",[getJsLang("戈亚尼亚 Goiania")]);
dsy.add("0_21_2",[getJsLang("库亚巴 Cuiabá")]);
dsy.add("0_21_3",[getJsLang("大坎普 Campo Grande")]);
dsy.add("0_21_4",[getJsLang("马塞约 Maceió")]);
dsy.add("0_21_5",[getJsLang("萨尔瓦多 Salvador")]);
dsy.add("0_21_6",[getJsLang("福塔莱萨 Fortaleza")]);
dsy.add("0_21_7",[getJsLang("圣路易斯 Sao Luís")]);
dsy.add("0_21_8",[getJsLang("若昂佩索阿 Joao Pessoa")]);
dsy.add("0_21_9",[getJsLang("累西腓 Recife")]);
dsy.add("0_21_10",[getJsLang("特雷西纳 Teresina")]);
dsy.add("0_21_11",[getJsLang("纳塔尔 Natal")]);
dsy.add("0_21_12",[getJsLang("阿拉卡茹 Aracaju")]);
dsy.add("0_21_13",[getJsLang("里奥布朗库 Rio Branco")]);
dsy.add("0_21_14",[getJsLang("马卡帕 Macapá")]);
dsy.add("0_21_15",[getJsLang("马瑙斯 Manaus")]);
dsy.add("0_21_16",[getJsLang("贝伦 Belém")]);
dsy.add("0_21_17",[getJsLang("波多韦柳 Porto Velho")]);
dsy.add("0_21_18",[getJsLang("沃阿维斯塔 Boa Vista")]);
dsy.add("0_21_19",[getJsLang("帕尔马斯 Palmas")]);
dsy.add("0_21_20",[getJsLang("维多利亚 Vitória")]);
dsy.add("0_21_21",[getJsLang("贝洛奥里藏特 Belo Horizonte")]);
dsy.add("0_21_22",[getJsLang("里约热内卢 Rio de Janeiro")]);
dsy.add("0_21_23",[getJsLang("圣保罗 Sao Paulo")]);
dsy.add("0_21_24",[getJsLang("库里蒂巴 Curitiba")]);
dsy.add("0_21_25",[getJsLang("阿雷格里港 Porto Alegre")]);
dsy.add("0_21_26",[getJsLang("弗洛里亚诺波利斯 Florianópolis")]);


dsy.add("0_22", [getJsLang("联邦首都 Distrito Federal"),getJsLang("布宜诺斯艾利斯 Buenos Aires"),getJsLang("卡塔马卡 Catamarca"),getJsLang("查科 Chaco"),getJsLang("丘布特 Chubut"),getJsLang("科尔多瓦  Córdoba"),getJsLang("科连特斯 Corrientes"),getJsLang("恩特雷里奥斯 Entre Ríos"),getJsLang("福莫萨 Formosa"),getJsLang("胡胡伊 Jujuy"),getJsLang("拉潘帕 La Pampa"),getJsLang("拉里奥哈 La Rioja"),getJsLang("门多萨　Mendoza"),getJsLang("米西奥斯内斯　Misiones"),getJsLang("内乌肯　Neuquén"),getJsLang("里奥内格罗 Río Negro"),getJsLang("萨尔塔　Salta"),getJsLang("圣胡安　San Juan"),getJsLang("圣路易斯　San Luis"),getJsLang("圣克鲁斯　Santa Cruz"),getJsLang("圣菲　Santa Fe"),getJsLang("圣地亚哥-德尔埃斯特罗 Santiago del Estero"),getJsLang("火地岛　Tierra del Fuego"),getJsLang("图库曼　Tucumán")]);
dsy.add("0_22_0",[getJsLang("布宜诺斯艾利斯  Buenos Aires")]);
dsy.add("0_22_1",[getJsLang("拉普拉塔 La Plata"),getJsLang("布兰卡港 Bahía Blanca"),getJsLang("马德普拉塔 Mar del Plata"),getJsLang("圣尼古拉斯 San Nic+olás")]);
dsy.add("0_22_2",[getJsLang("卡塔马卡 Catamarca")]);
dsy.add("0_22_3",[getJsLang("雷西斯滕匹亚　Resistencia")]);
dsy.add("0_22_4",[getJsLang("罗森 Rawson"),getJsLang("特雷利乌Trelew"),getJsLang("里瓦达维亚海军准将城 Comodoro Rivadavia")]);
dsy.add("0_22_5",[getJsLang("科尔多瓦 Córdoba"),getJsLang("里奥夸尔托 Río Cuarto")]);
dsy.add("0_22_6",[getJsLang("科连特斯 Corrientes")]);
dsy.add("0_22_7",[getJsLang("巴拉那　Paraná"),getJsLang("肯考迪娅 Concordia")]);
dsy.add("0_22_8",[getJsLang("福莫萨　Formosa")]);
dsy.add("0_22_9",[getJsLang("胡胡伊 Jujuy")]);
dsy.add("0_22_10",[getJsLang("圣罗莎　Santa Rosa")]);
dsy.add("0_22_11",[getJsLang("拉里奥哈　La Rioja")]);
dsy.add("0_22_12",[getJsLang("门多萨 Mendoza"),getJsLang("圣拉斐尔 San Rafael")]);
dsy.add("0_22_13",[getJsLang("波萨达斯　Posadas")]);
dsy.add("0_22_14",[getJsLang("内乌肯　Neuquén")]);
dsy.add("0_22_15",[getJsLang("别德马　Viedma")]);
dsy.add("0_22_16",[getJsLang("萨尔塔　Salta")]);
dsy.add("0_22_17",[getJsLang("圣胡安　San Juan"),getJsLang("克劳斯城 Villa Krause (Rawson)"),getJsLang("圣路易斯 San Luis")]);
dsy.add("0_22_18",[getJsLang("圣路易斯　San Luis")]);
dsy.add("0_22_19",[getJsLang("里奥加耶戈斯　Río Gallegos")]);
dsy.add("0_22_20",[getJsLang("圣菲　Santa Fe"),getJsLang("罗萨里奥 Rosario")]);
dsy.add("0_22_21",[getJsLang("圣地亚哥-德尔埃斯特罗 Santiago del Estero")]);
dsy.add("0_22_22",[getJsLang("乌斯怀亚　Ushuaia")]);
dsy.add("0_22_23",[getJsLang("圣米格尔-德图库曼 San Miguel de Tucumán")]);


dsy.add("0_23", [getJsLang("北地 Northland"),getJsLang("奥克兰 Auckland"),getJsLang("怀卡托 Waikato "),getJsLang("普伦蒂湾 Bay of Plenty"),getJsLang("吉斯伯恩 Gisborne (A) "),getJsLang("霍克湾 Hawkes Bay "),getJsLang("玛纳瓦图/旺格努伊 Manawatu-Wanganui "),getJsLang("塔拉那基 Taranaki"),getJsLang("惠灵顿 Wellington "),getJsLang("塔斯曼 Tasman (A)"),getJsLang("纳尔逊 Nelson (B)"),getJsLang("马尔伯勒 Blenheim (A)"),getJsLang("西岸 West Coast"),getJsLang("坎特伯雷 Canterbury "),getJsLang("奥塔戈 Otago "),getJsLang("南地 Southland")]);
dsy.add("0_23_0",[getJsLang("旺阿雷 Whangarei "),getJsLang("北远 Far North "),getJsLang("凯帕拉 Kaipara")]);
dsy.add("0_23_1", [getJsLang("奥克兰 Auckland"),getJsLang("马努考 Manukau"),getJsLang("北岸 North Shore"),getJsLang("怀塔科拉 Waitakere"),getJsLang("罗得尼 Rodney"),getJsLang("帕帕库拉 Papakura"),"富兰克林 Franklin (1)getJsLang("]);
dsy.add(")0_23_2",[getJsLang("哈密尔顿  Hamilton"),getJsLang("怀卡托 Waikato"),getJsLang("怀帕 Waipa"),getJsLang("Otorohanga"),"Waitomo (7)",getJsLang("Thames-Coromandel"),getJsLang("Hauraki")]);
dsy.add("0_23_3",[getJsLang("Tauranga"),getJsLang("Western Bay op Plenty"),"Rotorua (2)","Taupo (3)",getJsLang("瓦卡塔尼 Whakatane"),getJsLang("Kawerau"),getJsLang("Opotiki")]);
dsy.add("0_23_4",[getJsLang("吉斯伯恩 Gisborne")]);
dsy.add("0_23_5",[getJsLang("内皮尔 Napier"),getJsLang("Wairoa"),"Taupo (3)",getJsLang("Hastings"),"Rangitikei (4)",getJsLang("Central Hawke's Bay")]);
dsy.add("0_23_6", [getJsLang("北帕默斯顿 Palmerston North"),"Tararua (6)",getJsLang("Horowhenua"),getJsLang("Manawatu"),"Rangitikei (4)",getJsLang("Ruapehu"),getJsLang("Wanganui"),"斯特拉特福德 Stratford (5)getJsLang("]);
dsy.add(")0_23_7",[getJsLang("新普利茅斯 New Plymouth"),"斯特拉特福德 Stratford (5)",getJsLang("南塔拉纳基 South Taranaki")]);
dsy.add("0_23_8",[getJsLang("Wellington"),getJsLang("Lower Hutt ( Hutt )"),getJsLang("Porirua"),getJsLang("Upper Hutt"),getJsLang("Kapiti Coast"),getJsLang("Masterton"),getJsLang("Carterton"),getJsLang("South Wairarapa")]);
dsy.add("0_23_9",[getJsLang("里士满 Richmond")]);
dsy.add("0_23_10",[getJsLang("纳尔逊  Nelson")]);
dsy.add("0_23_11",[getJsLang("布莱尼姆  Blenheim")]);
dsy.add("0_23_12",[getJsLang("格雷茅斯 Greymouth "),getJsLang("Buller"),getJsLang("格雷 Grey"),getJsLang("西地 Westland")]);
dsy.add("0_23_13",[getJsLang("基督城 Christchurch"),getJsLang("Kaikoura"),getJsLang("Hurunui"),getJsLang("班克斯半岛 Banks Peninsula"),getJsLang("塞尔温 Selwyn")]);
dsy.add("0_23_14",[getJsLang("达尼丁 Dunedin"),getJsLang("中奥塔戈 Central Otago"),getJsLang("Queenstown-Lakes")]);
dsy.add("0_23_15",[getJsLang("因弗卡吉尔 Invercargill"),getJsLang("Gore"),getJsLang("南地 Southland")]);


dsy.add("0_24", [getJsLang("新南威尔士州 New South Wales"),getJsLang("昆士兰州 Queensland"),getJsLang("南澳大利亚州 South Australia"),getJsLang("塔斯马尼亚州 Tasmania"),getJsLang("维多利亚州 Victoria"),getJsLang("西澳大利亚州 Western Australia"),getJsLang("澳大利亚首都地区 Australian Capital Territory"),getJsLang("北部地区 Northern Territory")]);
dsy.add("0_24_0",[getJsLang("悉尼 Sydney"),getJsLang("伍伦贡 Wollongong"),getJsLang("纽卡斯尔 Newcastle")]);
dsy.add("0_24_1",[getJsLang("布里斯班 Brisbane"),getJsLang("黄金海岸 Gold Coast"),getJsLang("日光海岸 Caloundra"),getJsLang("汤斯维尔 Townsville"),getJsLang("凯恩斯 Cairns"),getJsLang("图文巴 Toowoomba")]);
dsy.add("0_24_2",[getJsLang("阿德莱德 Adelaide")]);
dsy.add("0_24_3",[getJsLang("霍巴特 Hobart")]);
dsy.add("0_24_4",[getJsLang("墨尔本 Melbourne"),getJsLang("吉朗 Geelong ")]);
dsy.add("0_24_5",[getJsLang("珀斯 Perth")]);
dsy.add("0_24_6",[getJsLang("堪培拉 Canberra")]);
dsy.add("0_24_7",[getJsLang("达尔文 Darwin")]);


dsy.add("0_25", [getJsLang("查谟和克什米尔* Jammu & Kashmīr"),getJsLang("旁遮普 Punjub"),getJsLang("昌迪加尔 Chandīgarh"),getJsLang("喜马偕尔邦 Himāchal Pradesh"),getJsLang("北安查尔 Uttaranchal"),getJsLang("哈里亚纳 Haryāna"),getJsLang("德里 Delhi"),getJsLang("拉贾斯坦 Rājasthān"),getJsLang("北方邦 Uttar Pradesh"),getJsLang("中央邦 Madhya Pradesh"),getJsLang("查蒂斯加尔 Chhatisgarh"),getJsLang("比哈尔 Bihār"),getJsLang("贾坎德 Jharkhand"),getJsLang("锡金 Sikkim"),getJsLang("阿鲁那恰尔邦* Arunāchal Pradesh"),getJsLang("那加兰 Nāgāland"),getJsLang("曼尼普尔 Manipur"),getJsLang("米佐拉姆 Mizorām"),getJsLang("特里普拉 Tripura"),getJsLang("梅加拉亚  Meghālaya"),getJsLang("阿萨姆 Assam"),getJsLang("西孟加拉邦 West Bengal"),getJsLang("奥里萨 Orissa"),getJsLang("古吉拉特 Gujarāt"),getJsLang("达曼和第乌 Damān & Diu"),getJsLang("达德拉和纳加尔哈维利 Dādra & Nagar Haveli"),getJsLang("马哈拉施特拉 Mahārāshtra"),getJsLang("果阿 Goa"),getJsLang("安得拉邦 Andhra Pradesh"),getJsLang("卡纳塔克 Karnātaka"),getJsLang("拉克沙群岛 Lakshadweep"),getJsLang("喀拉拉 Kerala"),getJsLang("泰米尔纳德 Tamil Nādu"),getJsLang("本地治里 Pondicherry"),getJsLang("安达曼和尼科巴群岛 Andaman & Nicobar Islands")]);
dsy.add("0_25_0",[getJsLang("斯利那加 Srinagar")]);
dsy.add("0_25_1",[getJsLang("昌迪加尔 Chandigarh")]);
dsy.add("0_25_2",[getJsLang("昌迪加尔 Chandigarh")]);
dsy.add("0_25_3",[getJsLang("西姆拉 Simla")]);
dsy.add("0_25_4",[getJsLang("德拉敦 Dehra Dun")]);
dsy.add("0_25_5",[getJsLang("昌迪加尔 Chandigarh")]);
dsy.add("0_25_6",[getJsLang("德里 Delhi")]);
dsy.add("0_25_7",[getJsLang("斋浦尔 Jaipur")]);
dsy.add("0_25_8",[getJsLang("勒克瑙 Lucknow")]);
dsy.add("0_25_9",[getJsLang("博帕尔 Bhopal")]);
dsy.add("0_25_10",[getJsLang("赖布尔 Raipur")]);
dsy.add("0_25_11",[getJsLang("巴特那 Patna")]);
dsy.add("0_25_12",[getJsLang("兰契 Ranchi")]);
dsy.add("0_25_13",[getJsLang("甘托克 Gangtok")]);
dsy.add("0_25_14",[getJsLang("伊塔那噶 Itanagar")]);
dsy.add("0_25_15",[getJsLang("科希马 Kohima")]);
dsy.add("0_25_16",[getJsLang("因帕尔 Imphal")]);
dsy.add("0_25_17",[getJsLang("艾藻尔 Aizawl")]);
dsy.add("0_25_18",[getJsLang("阿加尔塔拉 Agartala")]);
dsy.add("0_25_19",[getJsLang("西隆 Shillong")]);
dsy.add("0_25_20",[getJsLang("迪斯布尔 Dispur")]);
dsy.add("0_25_21",[getJsLang("加尔各答 Kolkata")]);
dsy.add("0_25_22",[getJsLang("布巴内斯瓦尔 Bhubaneswar")]);
dsy.add("0_25_23",[getJsLang("甘地讷格尔 Gandhinagar")]);
dsy.add("0_25_24",[getJsLang("达曼 Daman")]);
dsy.add("0_25_25",[getJsLang("锡尔瓦萨 Silvassa")]);
dsy.add("0_25_26",[getJsLang("孟买 Mumbai")]);
dsy.add("0_25_27",[getJsLang("帕那吉 Panaji")]);
dsy.add("0_25_28",[getJsLang("海得拉巴 Hyderabad")]);
dsy.add("0_25_29",[getJsLang("班加罗尔 Bangalore")]);
dsy.add("0_25_30",[getJsLang("卡瓦拉蒂 Kavaratti")]);
dsy.add("0_25_31",[getJsLang("特里凡得琅 Thiruvananthapuram")]);
dsy.add("0_25_32",[getJsLang("金奈 Chennai")]);
dsy.add("0_25_33",[getJsLang("本地治里 Pondicherry")]);
dsy.add("0_25_34",[getJsLang("布莱尔港 Port Blair")]);


dsy.add("0_26", [getJsLang("开罗 Al Qahirah"),getJsLang("亚历山大 Al Iskandariyah"),getJsLang("塞得港 Bur Sa`id"),getJsLang("苏伊士 As Suways"),getJsLang("卢克索 Al Uqsur"),getJsLang("代盖赫利耶 Ad Daqahl?yah"),getJsLang("布海拉 Al Buhayrah"),getJsLang("西部 Al Gharbiyah"),getJsLang("伊斯梅利亚 Al Isma`iliyah"),getJsLang("米努夫 Al Minufiyah"),getJsLang("盖勒尤卜 Al Qalyubiyah"),getJsLang("东部 Ash Sharqiyah"),getJsLang("杜姆亚特 Dumyat"),getJsLang("谢赫村 Kafr ash Shaykh"),getJsLang("吉萨 Al Jizah"),getJsLang("明亚 Al Minya"),getJsLang("贝尼苏韦夫 Bani Suwayf"),getJsLang("法尤姆 Al Fayyum"),getJsLang("艾斯尤特 Asyut"),getJsLang("阿斯旺 Aswan"),getJsLang("索哈杰 Suhaj"),getJsLang("基纳 Qina"),getJsLang("红海 Al Bahr al Ahmar"),getJsLang("新河谷 Al Wadi al Jadid"),getJsLang("马特鲁 Matruh"),getJsLang("南西奈 Janub Sina"),getJsLang("北西奈 Shamal Sina")]);
dsy.add("0_26_0",[getJsLang("开罗 Al Qahirah")]);
dsy.add("0_26_1",[getJsLang("亚历山大 Al Iskandariyah")]);
dsy.add("0_26_2",[getJsLang("塞得港 Bur Sa`id")]);
dsy.add("0_26_3",[getJsLang("苏伊士 As Suways")]);
dsy.add("0_26_4",[getJsLang("卢克索 Al Uqsur")]);
dsy.add("0_26_5",[getJsLang("曼苏拉 Al Mansurah"),getJsLang("米特加穆尔 Mit Ghamr")]);
dsy.add("0_26_6",[getJsLang("达曼胡尔 Damanhur"),getJsLang("达沃 Kafr ad-Dawwar")]);
dsy.add("0_26_7",[getJsLang("坦塔 Tanta"),getJsLang("马哈拉库布拉 Al-Mahallah al-Kubra")]);
dsy.add("0_26_8",[getJsLang("伊斯梅利亚 Al Isma`iliyah")]);
dsy.add("0_26_9",[getJsLang("希宾库姆 Shibin al Kawm")]);
dsy.add("0_26_10",[getJsLang("本哈 Banha"),getJsLang("苏布拉开马 Shubra al-Khaymah")]);
dsy.add("0_26_11",[getJsLang("宰加济格 Az Zaqaziq"),getJsLang("比勒拜斯 Bilbays")]);
dsy.add("0_26_12",[getJsLang("杜姆亚特 Dumyat")]);
dsy.add("0_26_13",[getJsLang("谢赫村 Kafr ash Shaykh")]);
dsy.add("0_26_14",[getJsLang("吉萨 Al Jizah")]);
dsy.add("0_26_15",[getJsLang("明亚 Al Minya"),getJsLang("迈莱维 Mallawi")]);
dsy.add("0_26_16",[getJsLang("贝尼苏韦夫 Bani Suwayf")]);
dsy.add("0_26_17",[getJsLang("法尤姆 Al Fayyum")]);
dsy.add("0_26_18",[getJsLang("艾斯尤特 Asyut")]);
dsy.add("0_26_19",[getJsLang("阿斯旺 Aswan")]);
dsy.add("0_26_20",[getJsLang("索哈杰 Suhaj")]);
dsy.add("0_26_21",[getJsLang("基纳 Qina")]);
dsy.add("0_26_22",[getJsLang("古尔代盖 Al Ghurdaqah")]);
dsy.add("0_26_23",[getJsLang("哈里杰 Al Kharijah")]);
dsy.add("0_26_24",[getJsLang("马特鲁 Matruh")]);
dsy.add("0_26_25",[getJsLang("图尔 Janub Sina")]);
dsy.add("0_26_26",[getJsLang("阿里什 Al `Arish")]);

// var s=["province","city","county"];
 var opt0 = ["","",""];
//var opt0 = ["省份","地级市","市、县级市、县"];
function setup()
{
for(i=0;i<s.length-1;i++)
  document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
change(0);
}
function setup2()
{
for(i=0;i<s2.length-1;i++)
  document.getElementById(s2[i]).onchange=new Function("change2("+(i+1)+")");
change2(0);
}
function setup3()
{
for(i=0;i<s3.length-1;i++)
  document.getElementById(s3[i]).onchange=new Function("change3("+(i+1)+")");
change3(0);
}