<?php defined('G_IN_ADMIN')or exit('No permission resources.'); ?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>自由乐购后台管理系统</title>

<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/global.css" type="text/css">

<link rel="stylesheet" href="<?php echo G_GLOBAL_STYLE; ?>/global/css/style.css" type="text/css">

<link rel="stylesheet" href="<?php echo G_PLUGIN_PATH; ?>/calendar/calendar-blue.css" type="text/css"> 

<script type="text/javascript" charset="utf-8" src="<?php echo G_PLUGIN_PATH; ?>/calendar/calendar.js"></script>

<script src="<?php echo G_GLOBAL_STYLE; ?>/global/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<?php echo G_WEB_PATH; ?>/statics/yungou/js/worldAddress.js"></script>

<style>

body{ background-color:#fff}

tr{ text-align:center}

.button{border-radius: 3px; color: #FFF; background: #161e22; padding-left:15px; padding-right:15px; margin-right: 15px;float: right;}
.button:hover{background: #222d32;}
</style>

</head>

<body>
<div class="header-data lr10">

<form action="#" method="post">
用户名：<input type="text" name="username" class="input-text wid100" style="width:130px;" />
商品：<input type="text" name="shopname" class="input-text wid100" style="width:130px;"/>
<script>var s=["county","province","city"];</script>
所在地区：<select datatype="*" style="width: 116px;font-size: 14px;text-align: center;" nullmsg="请选择有效的国家" class="select iRequire" id="county" runat="server" name="county"></select>
                <select datatype="*" style="width: 116px;font-size: 14px;text-align: center;" nullmsg="请选择有效的省份" class="select iRequire" id="province" runat="server" name="sheng"></select>
                <select datatype="*" style="width: 116px;font-size: 14px;text-align: center;" nullmsg="请选择有效的市" class="select iRequire" id="city" runat="server" name="shi"></select>
<script type="text/javascript">setup()</script>
<select name="paixu">
        <option value="num1"> 按购买数量倒序 </option>
        <option value="num2"> 按购买数量正序 </option>
        <option value="money1"> 按购买总价倒序 </option>
        <option value="money2"> 按购买总价正序 </option>   
        <option value="recharge1"> 按总充值金额倒序 </option>
        <option value="recharge2"> 按总充值金额正序 </option>
        <option value="consume1"> 按总消费金额倒序 </option>
        <option value="consume2"> 按总消费金额正序 </option>
        <option value="wintimes1"> 按中奖次数倒序 </option>
        <option value="wintimes2"> 按中奖次数正序 </option>   
        <option value="wintime1"> 按最后中奖时间倒序 </option>
        <option value="wintime2"> 按最后中奖时间正序 </option>
</select> 
<input class="button" type="submit" name="sososubmit" value="搜索">
</form>

</div>
<div class="bk10"></div>

<form action="#" method="post" name="myform">
<div class="table-list lr10">
<!--start-->
  <table width="100%" cellspacing="0">
    <thead>
        <tr>
            <th align="center">商品标题</th>
            <th align="center">购买用户</th>
            <th align="center">购买次数</th>
            <th align="center">购买总价</th>
            <th align="center">购买日期</th>
            <th align="center">总充值</th>
            <th align="center">总消费</th>
            <th align="center">中奖次数</th>
            <th align="center">最后中奖</th>
            <th align="center">国家</th>
            <th align="center">省份</th>
            <th align="center">城市</th>
            <th align="center">管理</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($recordlist AS $v) {  ?>      
            <tr>
                <td align="center">
                <a  target="_blank" href="<?php echo WEB_PATH.'/goods/'.$v['shopid']; ?>">
                第(<?php echo $v['shopqishu'];?>)期<?php echo _strcut($v['shopname'],0,25);?></a>
                </td>              
                 <td align="center"><?php echo $v['username']; ?></td>
                <td align="center"><?php echo $v['gonumber']; ?>人次</td>
                <td align="center">￥<?php echo $v['moneycount']; ?>元</td>
                <td align="center"><?php echo date("Y-m-d H:i:s",$v['time']);?></td>
                <td align="center">￥<?php echo $v['totalrecharge']; ?>元</td>
                <td align="center">￥<?php echo $v['totalconsume']; ?>元</td>
                <td align="center"><?php echo $v['wintime']; ?></td>
                <td align="center"><?php echo  $v['lastwintime'] ? date("Y-m-d H:i:s",$v['lastwintime']) : ''; ?></td>
                <td align="center"><?php echo $v['county']; ?></td>
                <td align="center"><?php echo $v['province']; ?></td>
                <td align="center"><?php echo $v['city']; ?></td>
                <td align="center"><a href="<?php echo G_MODULE_PATH;?>/dingdan/get_dingdan/<?php echo $v['id']; ?>">详细</a>&nbsp;|&nbsp;<a href="<?php echo G_MODULE_PATH;?>/fund/specify/<?php echo $v['id']; ?>">指定中奖</a></td>
            </tr>
            <?php } ?>
    </tbody>
</table>
<div class="btn_paixu"></div>
<div id="pages"><ul><li>共 <?php echo $total; ?> 条</li><?php echo $page->show('one','li'); ?></ul></div>
</div>



</body>

</html> 