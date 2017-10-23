<?php defined('G_IN_SYSTEM')or exit('No permission resources.'); ?><?php include templates("index","header");?>
<div class="clear"></div>
<div class="wrap w1200">
    <div class="Current_nav w1200">
        <a href="<?php echo WEB_PATH; ?>">首页</a>
        <span>&gt;</span>
        <a href="<?php echo WEB_PATH; ?>/goods_list/<?php echo $item['cateid']; ?>"><?php echo $category['name']; ?></a>
        <span>&gt;</span>
        <a href="<?php echo WEB_PATH; ?>/goods_list/<?php echo $item['cateid']; ?>e<?php echo $item['brandid']; ?>"><?php echo $brand['name']; ?></a>
        <span>&gt;</span> 揭晓详情
    </div>
    <div class="show_content" style="overflow-x: hidden;overflow-y: auto;">
        <!-- 商品期数 -->
        <div id="divPeriodList" class="show_Period" style="max-height:33px;box-shadow:0 0 5px #e4e4e4;">
            <div class="period_Open bt_gray bb_gray bl_gray" style="top: 0px;border-top: none;">
                <a class="gray02" href="javascript:;" id="btnOpenPeriod" click="off" style="color: #f60;">
					更多 <i></i>
				</a>
            </div>
            <?php echo $loopqishu; ?>
        </div>
        <!-- 商品信息 -->
        <div class="Pro_Details">
            <div class="Pro_Detleft" style="width: 268px;">
                <div class="Pro_Detimg">
                    <div class="zoom-small-image" style="width: 268px;border-top: none;border-right: 1px solid #dfdfdf;border-left: none;border-bottom: none;height: 380px;margin-bottom: 0px;">
                        <a href="<?php echo WEB_PATH; ?>/goods/<?php echo $item['id']; ?>" title="<?php echo $item['title']; ?>">
                            <img style="width: 268px;height: 268px;" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $item['thumb']; ?>"></a>
                        <?php if($itemzx): ?>
                        <style type="text/css">
                        #chakanxingqing {
                            border: 1px solid #999;
                            margin-top: 0;
                            font-family: 微软雅黑;
                            font-size: 12px;
                            font-weight: 400;
                            border-radius: 20px;
                            background: none;
                            color: #999;
                        }
                        
                        #chakanxingqing:hover {
                            color: #f60;
                            border-color: #f60;
                        }
                        </style>
                        <div class="Result_LConduct" style="margin-top: 30px;">
                            <dl style="width: 268px;border: none;">
                                <dt style="width: 268px;height: 36px;line-height: 36px;border: none;color: #f60;background: none;">
                                    <span style="padding:0px;">
										<a id="chakanxingqing" href="<?php echo WEB_PATH; ?>/goods/<?php echo $itemzx['id']; ?>" class="Result_LConductBut bg_red b_red">第<?php echo $itemzx['qishu']; ?>期正在进行查看详情</a>
									</span>
                                </dt>
                                <!--
						<div class="Result_Progress-bar">
								<p>
									<span style="width:<?php echo width($itemzx['canyurenshu'],$itemzx['zongrenshu'],208); ?>px;"></span>
								</p>
								<ul class="Pro-bar-li">
									<li class="P-bar01"> <em><?php echo $itemzx['canyurenshu']; ?></em>
										已参与人次
									</li>
									<li class="P-bar02"> <em><?php echo $itemzx['zongrenshu']; ?></em>
										总需人次
									</li>
									<li class="P-bar03">
										<em><?php echo $itemzx['shenyurenshu']; ?></em>
										剩余人次
									</li>
								</ul>
							</div>
							-->
                            </dl>
                        </div>
                        <?php endif; ?>
                        <div class="fenxiang1" style="position: absolute;bottom: 5px;left: 28px;">
                            <div class="fenxiang" style="margin-top: 13px;"> <i></i> 分享
                            </div>
                            <!-- JiaThis Button BEGIN -->
                            <div class="jiathis_style">
                                <style>
                                .jiathis_style .jtico {
                                    padding: 0px!important;
                                    display: block!important;
                                    margin: 0 5px 0 0!important;
                                    width: 17px!important;
                                    height: 17px!important;
                                }
                                
                                .jtico_tsina:hover {
                                    opacity: 1;
                                    background-position: 0 -26px!important;
                                }
                                
                                .jiathis_style .jtico_weixin {
                                    background-position: -27px 0!important;
                                }
                                
                                .jtico_weixin:hover {
                                    background-position: -27px -26px!important;
                                }
                                
                                .jiathis_style .jtico_qzone {
                                    background-position: -54px 0!important;
                                }
                                
                                .jtico_qzone:hover {
                                    background-position: -54px -26px!important;
                                }
                                
                                .jiathis_style .jtico_tqq {
                                    background-position: -81px 0!important;
                                }
                                
                                .jtico_tqq:hover {
                                    background-position: -81px -26px!important;
                                }
                                
                                .jiathis_style .jtico_cqq {
                                    background-position: -108px 0!important;
                                }
                                
                                .jtico_cqq:hover {
                                    background-position: -108px -26px!important;
                                }
                                </style>
                                <a class="jiathis_button_tsina"></a>
                                <a class="jiathis_button_weixin"></a>
                                <a class="jiathis_button_qzone"></a>
                                <a class="jiathis_button_tqq"></a>
                                <a class="jiathis_button_cqq"></a>
                            </div>
                            <script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
                            <!-- JiaThis Button END -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="Pro_Detright" style="width: 643px;height: 360px;position: relative;">
                <p style="font-size:18px;padding-bottom: 9px;margin-top: 15px;color:#333;height: 20px; overflow: hidden;text-align: center;">
                    <span class="f24">(第<?php echo $item['qishu']; ?>期)</span>
                    <span class="f24"><?php echo $item['title']; ?></span>
                </p>
                <p class="Det_money" style="text-align: center;">
                    价值：
                    <span class="rmbgray"><?php echo $item['money']; ?></span>
                </p>
                <div class="Announced_Frame" style="background-color: #fff2b7;border-radius: 20px;height: 107px;margin: 12px auto;overflow: hidden;padding: 22px 25px 15px 65px;position: relative;width: 556px;background-image: none;">
                    <!--<div class="Announced_FrameT">揭晓结果</div>-->
                    <style>
                    .dianjichakan:hover {
                        color: #f60;
                    }
                    </style>
                    <div class="Announced_FrameGet" style="background-color: #fff;border: 1px solid #ffba6e;border-radius: 20px;color: #949494;float: left;font-size: 12px;height: 85px;line-height: 20px;margin-right: 9px;padding: 10px 20px 10px 83px;position: relative;text-align: left;width: 200px;background-image: none;">
                        <dl style="padding: 0px;margin-left: 0px;">
                            <dd class="gray02 fl" style="position: relative;">
                                <p><a style="display: inline-block;overflow: hidden;white-space:nowrap;text-overflow: ellipsis;width: 130px;font-size: 16px;margin-left: 0;text-align: center;" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($item['q_uid']); ?>" target="_blank" class="blue" title="<?php echo get_user_name($q_user); ?>"><?php echo get_user_name($q_user); ?></a> 获得本期商品
                                </p>
                                <p>
                                    本期参与：
                                    <em class="c_red"><?php echo $user_shop_number; ?></em> 人次
                                    <span id="divOpen" class="MaOff" style="background: none;border: none;margin-left: 5px;">
								<span class="dianjichakan" style="height: auto;line-height: 20px;">点击查看</span>
                                    </span>
                                </p>
                                <p>揭晓时间：<?php echo microt($item['q_end_time']); ?></p>
                                <p>夺宝时间：<?php echo microt($user_shop_time); ?></p>
                            </dd>
                        </dl>
                        <div style="height: 130px;left: -46px;overflow: hidden;position: absolute;top: -23px;width: 110px;z-index: 11;">
                            <div style="height: 110px;margin: 0 auto;position: relative;top: 26px;width: 110px;">
                                <?php if($touxiangs['img']!='photo/member.jpg'): ?>
                                    <img style="height: 110px;margin: -2px 0 0 -2px;width: 110px;" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $touxiangs['img']; ?>" alt="">
                                    
                                <?php elseif ($touxiangs['headimg']!=''): ?>
                                <img style="height: 110px;margin: -2px 0 0 -2px;width: 110px;" src="<?php echo $touxiangs['headimg']; ?>" alt="">
                                    
                                <?php  else: ?>
                                    <img style="height: 110px;margin: -2px 0 0 -2px;width: 110px;" src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $touxiangs['img']; ?>" alt="">
                                <?php endif; ?></div>
                            <a class="zhongjiangmaozi" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($item['q_uid']); ?>" style="display: block;height: 130px;left: 0;position: absolute;top: 0;width: 110px;">
                                <span style="bottom: -4px;color: #fff2b7;display: block;font-size: 14px;height: 34px;left: 0;line-height: 25px;position: absolute;text-align: center;width: 108px;z-index: 12;">获得者</span>
                            </a>
                        </div>
                    </div>
                    <div class="Announced_FrameCode" style="background-color: #fff;border: 1px solid #ffba6e;border-radius: 20px;float: left;height: 59px;padding: 23px 0;text-align: center;width: 220px;background-image: none;">
                        <p style="color: #999;font-size: 16px;line-height: 24px;">—&nbsp幸运夺宝码&nbsp—</p>
                        <ul class="Announced_FrameCodeMal" style="margin: 10px 0 0 50px;">
                            <?php $ln=1;if(is_array($q_user_code_arr)) foreach($q_user_code_arr AS $q_code_num): ?>
                            <li style="font-size: 26px;line-height: 36px;color: #f60;height: auto;width: auto;font-weight: 400;" class="Code_<?php echo $q_code_num; ?>"><?php echo $q_code_num; ?></li>
                            <?php  endforeach; $ln++; unset($ln); ?>
                        </ul>
                    </div>
                    <div class="Announced_FrameBut" style="display: none;">
                        <a href="javascript:;" class="Announced_But">本期详细计算结果</a>
                        <a href="javascript:;" class="Announced_But">看看有谁参与了</a>
                        <a href="javascript:;" class="Announced_But">看看有谁晒单</a>
                    </div>
                    <div class="Announced_FrameBm" style="display: none;"></div>
                </div>
                <div class="result-how" style="padding: 0 6px 0 0;text-align: left;">
                    <h6 style="padding-bottom: 0px; color: #666;font-size: 14px;font-weight: bold;height: 22px;line-height: 22px;padding-bottom: 6px;">如何计算?</h6>
                    <p style="font-size: 14px;line-height: 25px;color: #999;">1、取该商品最后购买时间前网站所有商品的最后100条夺宝时间记录；</p>
                    <p style="font-size: 14px;line-height: 25px;color: #999;">2、按时、分、秒、毫秒排列取值之和，除以该商品总参与人次后取余数；</p>
                    <p style="font-size: 14px;line-height: 25px;color: #999;">3、余数加上10000001 即为“幸运夺宝码”；</p>
                    <p style="font-size: 14px;line-height: 25px;color: #999;">4、余数是指整数除法中被除数未被除尽部分， 如7÷3 = 2 ......1，1就是余数。</p>
                </div>
                <div id="MaCenter" class="MaCenter" style="border: 1px solid #ccc;margin-top: 0;position: absolute;background: #fff;top: 11px;left: 15px;box-shadow:0 0 12px #e2e2e2;width: 669px;height: 355px;z-index: 99999;display: none;">
                    <div id="guanbi"></div>
                    <div id="userRnoId" class="MaCenterH" style="z-index: 99999;padding: 7px 0 10px 17px;height: 338px;overflow: auto;">
                        <dl>
                            <p style="z-index: 99999;font-size: 14px;width: 635px;color: #666;text-indent: 0;position: absolute;z-index: 999999;background: #fff;text-align: center;top: 0px;">
                                幸运获得者本期总共夺宝了
                                <em style="z-index: 99999;" class="c_red"><?php echo $user_shop_number; ?></em> 人次&nbsp&nbsp&nbsp&nbsp 购买时间：
                                <span style="font-size: 12px;color: #999;"><?php echo microt($user_shop_time); ?></span>
                            </p>
                            <dd style="z-index: 99999;width: auto;margin-top: 45px;"><?php echo yunma($user_shop_codes,"b"); ?></dd>
                        </dl>
                    </div>
                    <div style="width: 17px;position: absolute;right: 0px;top: 0px;background: #fff;z-index: 99999999;height: 355px;"></div>
                    <div id="yinying"></div>
                </div>
            </div>
            <div style="width: 230px;float: left;">
                <ul>
                    <style>
                        .top_qishu a,.bottom_qishu a{
                            
                            display: block;
                            width: 230px;
                            height: 24px;
                            padding: 51px 0;
                        }
                        .top_qishu a i,.bottom_qishu a i{
                            background: url(<?php echo G_TEMPLATES_IMAGE; ?>/result-bg1.png) no-repeat;
                            display: block;
                            height: 24px;
                            width: 43px;
                            margin: 0 auto;
                        }
                        .top_qishu a i{
                            background-position: 0 -74px;
                        }
                        .top_qishu a:hover i{
                            background-position: -1px -214px;
                        }
                        .bottom_qishu a i{
                            background-position: 0 -129px;
                        }
                        .bottom_qishu a:hover i{
                            background-position: 0px -256px;
                        }
                    </style>
                    
                    <li class="top_qishu" style="height: 126px;background: #fbfbfb;"><a href="<?php echo WEB_PATH; ?>/goods/<?php echo $top_qishu['id']; ?>"><i class="s1"></i></a></li>


                    <li style="height: 128px;background: #fff2b7;color: #f60;line-height: 80px;text-align: center;font-size: 14px ">
                        第<?php echo $itemzx['qishu']; ?>期正在进行。。。
                        <div style="line-height: 30px;border: 1px solid #f60;border-radius: 20px;width: 150px;">
                            <a style="color: #f60;" href="<?php echo WEB_PATH; ?>/goods/<?php echo $itemzx['id']; ?>">立刻前去夺宝</a>
                        </div>
                    </li>
                    <?php if($bottom_qishu['id'] != ''): ?>
                    <li class="bottom_qishu" style="height: 126px;background: #fbfbfb;"><a href="<?php echo WEB_PATH; ?>/goods/<?php echo $bottom_qishu['id']; ?>"><i class="s2"></i></a></li>
                    <?php  else: ?>
                        <li class="bottom_qishu" style="height: 126px;background: #fbfbfb;text-align: center;line-height: 24px;"><a href="<?php echo WEB_PATH; ?>/goods/<?php echo $itemzx['id']; ?>">木有了，前往最新一期！</a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </div>
    <!-- 计算结果 所有参与记录 晒单 -->
    <div id="calculate" class="ProductTabNav" style="border-top: none!important;border-bottom: none!important;padding-top: 25px;border:1px solid #dfdfdf;width: 1198px;">
        <div id="divMidNav" class="DetailsT_Tit" style="width: 1198px;background:none;">
            <div class="DetailsT_TitP" style="border-top: none;border-left: none;background: #fff;border-bottom: none;border-right: none;width: 1166px;z-index: 9999999999;">
                <ul style="width: 550px;margin: 0 auto;position: relative;float: none;">
                    <style type="text/css">
                    #li_hua {
                        border-right: none;
                        margin: 0 20px;
                    }
                    
                    .DetailsT_TitP li.DetailsTCur {
                        border-top: none;
                        border-bottom: 2px solid #f60;
                    }
                    </style>
                    <li id="li_hua" class="Product_DetT DetailsTCur">
                        <span class="DetailsTCur">计算结果</span>
                    </li>
                    <li id="li_hua" class="All_RecordT">
                        <span class="">所有参与记录</span>
                    </li>
                    <li id="li_hua" class="Single_ConT">
                        <span class="">晒单</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--商品详情 开始-->
    <div class="ygRecord" style="width: 1168px;padding:15px;border: 1px solid #dfdfdf;border-top:1px solid #dfdfdf;overflow:visible;">
        <?php if($item['q_content']): ?>
        <div class="RecordOnehundred" name="div_tab" style="width: 1167px;border: 1px solid #ffca8a;margin-top: 5px; border-bottom: none;">
            <ul class="Record_title" style="height: 40px;width: 100%;background-color: #f6f6f6;color: 666;">
                <li class="time" style="width: 229px;line-height: 40px;text-align: center;padding-left: 0px;">夺宝时间</li>
                <li class="time" style="width: 183px;line-height: 40px;text-align: center;padding-left: 0px;">转换数据</li>
                <li class="nem" style="width: 135px;line-height: 40px;text-align: center;padding-left:0px;">会员账号</li>
                <li class="much" style="width: 115px;line-height: 40px;text-align: center;padding-left: 0px;">夺宝人次</li>
                <li class="name" style="width: 505px;line-height: 40px;text-align: center;padding-left:0px;">商品名称</li>
            </ul>
            <div style="background-color: #fffddd;height: 155px;position: relative;text-align: center;z-index: 3;">
                <p style="color: #f60;font-size: 14px;height: 48px;line-height: 48px;">
                    截止该商品揭晓购买时间【<?php echo microt($item['q_end_time']); ?>】最后100条全站购买时间记录
                </p>
                <div style="height: 105px;;position: relative;border-bottom: 1px solid #ffca8a;line-height: 65px;width: 1167px;">
                    <ul class="step-inner clearfix" style="width: 1122px;margin-right: 0px;padding: 0 0 0 45px;">
                        <li class="s-r1">
                            <p style="padding-top: 0;">计算结果</p>
                        </li>
                        <li class="s-t">=</li>
                        <li class="s-t">(</li>
                        <li class="s-r2">
                            <p><?php echo $item['q_counttime']; ?></p>
                            <span>以下100条时间取值之和</span>
                        </li>
                        <li class="s-t mod" id="li_mod">
                            <i>%</i>
                            <span class="txt">(取余)</span>
                        </li>
                        <li class="s-r3">
                            <p><?php echo $item['canyurenshu']; ?></p>
                            <span>总需参与人次</span>
                        </li>
                        <li class="s-t">)</li>
                        <li class="s-t">+</li>
                        <li class="s-r4">
                            <p>10000001</p>
                            <span>固定数值</span>
                        </li>
                        <li class="s-t">=</li>
                        <li class="s-r5">
                            <p><?php echo $item['q_user_code']; ?></p>
                            <span>最终计算结果</span>
                        </li>
                    </ul>
                    <div id="denghao" style="height: 17px;left: 310px;position: absolute;top: 74px;width: 10px;"></div>
                </div>
            </div>
            <div class="FloatBox b_red2" style="border: none;"></div>
            <div class="FloatBox b_red3"></div>
            <div class="FloatBox b_red4"></div>
            <div style="padding-top: 5px;">
                <?php $ln=1;if(is_array($item['q_content'])) foreach($item['q_content'] AS $record): ?> <?php  $record_time = explode(".",$record['time']); $record['time'] = $record_time[0];  ?>
                <ul class="Record_content bb_pink" style="color: #999;height: 39px;line-height: 39px;text-align: center;">
                    <li class="time" style="width: 229px;overflow: hidden;height: 39px;line-height: 39px;"> <b style="margin-right: 0px;"><?php echo date("Y-m-d",$record['time']); ?></b> <?php echo date("H:i:s",$record['time']); ?>.<?php echo $record_time['1']; ?>
                    </li>
                    <li class="timeVal" style="width: 183px;color: #f60;font-weight: bold;font-size: 14px;text-align: center;padding-left: 0px;"><?php echo $record['timeadd']; ?></li>
                    <li class="nem" style="width: 120px;text-align: center;">
                        <a style="font-size: 14px;" class="gray02" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($record['uid']); ?>" target="_blank"><?php echo get_user_name($record['uid']); ?></a>
                    </li>
                    <li class="much" style="width: 100px;text-align: center;font-size: 14px;"><?php echo $record['gonumber']; ?>人次</li>
                    <li class="name" style="width: 487px;text-align: left;padding-left: 20px;">
                        <a style="font-size: 14px;" class="gray02" href="<?php echo WEB_PATH; ?>/goods/<?php echo $record['shopid']; ?>" target="_blank">
					(&nbsp第<?php echo $record['shopqishu']; ?>期&nbsp)<?php echo $record['shopname']; ?>
				</a>
                    </li>
                </ul>
                <?php  endforeach; $ln++; unset($ln); ?>
            </div>
        </div>
        <?php  
        	$shop_fmod = fmod($item['q_counttime'],$item['canyurenshu']); 
         ?>
 <!--
<div class="RecordOnehundred">
<h4>100条计算结果</h4>
<div class="ResultBox bg_red">
	<h2>计算结果</h2>
	<p class="num4">
		求和：
		<span class="Fb"><?php echo $item['q_counttime']; ?></span>
		(上面100条夺宝记录时间取值相加之和)
		<br>
		取余：
		<span class="Fb"><?php echo $item['q_counttime']; ?></span>
		(100条时间记录之和)
		<span class="Fb">% <?php echo $item['canyurenshu']; ?></span>
		(本商品总需参与人次)
		<span class="Fb">=  <?php echo $shop_fmod; ?></span>
		(余数)
		<br>
		结果：
		<span class="Fb"><?php echo $shop_fmod; ?></span>
		(余数)
		<span class="Fb">
			+ 10000001 =
			<em><?php echo $item['q_user_code']; ?></em>
		</span>
	</p> <b class="bg_yellow c_red">最终结果：<?php echo $item['q_user_code']; ?></b>
</div>
<div style="width:100%;height:30px;clear:bolt;"></div>
</div>
-->
<?php  else: ?>
<!--
<div class="RecordOnehundred" style="border-radius: 10px;">
<h4 style="background: #f60;">未满100条计算结果</h4>
<div class="ResultBox bg_red" style="background: #f80;">
	<h2>计算结果</h2>
	<p class="num4">
		求和：
		<span style="color: #f40;" class="Fb"><?php echo $user_shop_time_add; ?></span>
		(揭晓时间求和结果)
		<br>
		取余：
		<span style="color: #f40;" class="Fb"><?php echo $user_shop_time_add; ?></span>
		(揭晓时间)
		<span style="color: #f40;" class="Fb">* 100 / <?php echo $item['canyurenshu']; ?></span>
		(本商品总需参与人次)
		<span style="color: #f40;" class="Fb">= <?php echo $user_shop_fmod; ?></span>
		(余数)
		<br>
		结果：
		<span style="color: #f40;" class="Fb"><?php echo $user_shop_fmod; ?></span>
		(余数)
		<span style="color: #f40;" class="Fb">
			+ 1000001 =
			<em><?php echo $item['q_user_code']; ?></em>
		</span>
	</p>
	<b class="bg_yellow c_red">最终结果：<?php echo $item['q_user_code']; ?></b>
</div>

<div style="width:100%;height:30px;clear:bolt;"></div>

</div>
-->
<?php endif; ?>

        <!-- 购买记录 -->
        <div name="div_tab" id="bitem" class="AllRecordCon hide" style="border: 1px solid #dfdfdf;width: 1167px;display: none;margin-bottom: 0;">
            <?php $ln=1;if(is_array($go_record_list)) foreach($go_record_list AS $user): ?>
            <div class="AllRecW AllRecTime">
                <p><?php echo microtDate($user['time']); ?></p>
                <b></b>
            </div>
            <div class="AllRecW AllReclist">
                <div class="AllRecL fl">
                    <?php echo microt($user['time']); ?>
                    <i></i>
                </div>
                <div class="AllRecR fl" style="background:#F8F8F8; border:1px solid #F8F8F8">
                    <p class="AllRecR_T">
                        <span name="spCodeInfo" class="AllRecR_Over" style="display: block;margin: 5px 10px;">
			<a class="Headpic" href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($user['uid']); ?>" target="_blank">
				<img src="<?php echo G_UPLOAD_PATH; ?>/<?php echo $user['uphoto']; ?>" border="0" width="20" height="20"></a>
			<a href="<?php echo WEB_PATH; ?>/uname/<?php echo idjia($user['uid']); ?>" target="_blank" class="blue"><?php echo _strcut($user['username'],6); ?></a>
			<?php if($user['ip']): ?>
				(<?php echo get_ip($user['id'],'ipcity'); ?> IP:<?php echo get_ip($user['id'],'ipmac'); ?>)
				<?php endif; ?>
				夺宝了
			<em class="Fb orange"><?php echo $user['gonumber']; ?></em>
			人次
		</span>
                    </p>
                </div>
            </div>
            <?php  endforeach; $ln++; unset($ln); ?>
        </div>
        <!-- 晒单 start-->
        <div name="div_tab" id="divPost" class="Single_Content" style="display: none;border: 1px solid #dfdfdf;width: 1167px;">
            <iframe id="iframea" src="<?php echo WEB_PATH; ?>/go/shaidan/itemiframstory/<?php echo $itemid; ?>" style="width:1167px; border:none; height:400px;" frameborder="0" scrolling="no"></iframe>
        </div>
        <!-- 晒单 end-->
    </div>
</div>
<script>
$("#btnOpenPeriod").click(function() {
    var ui_obj = $("#divPeriodList > ul");
    if ($(this).attr("click") == 'off') {
        $("#divPeriodList").css("max-height", ui_obj.length * 33 + "px");
        $(this).attr("click", "on");
        $(this).html("收起<s></s>");

    } else {
        $("#divPeriodList").css("max-height", "33px");
        $(this).attr("click", "off");
        $(this).html("更多<i></i>");
    }
});

function set_iframe_height(fid, did, height) {
    $("#" + fid).css("height", height);
}

$(function() {
    var fouli = $(".DetailsT_TitP ul li");
    var divCalResult = $("div[name='div_tab']");
    fouli.click(function() {
        var index = fouli.index(this);
        fouli.removeClass("DetailsTCur").eq(index).addClass("DetailsTCur");
        var iframe = divCalResult.hide().eq(index).find("iframe");
        if (typeof(iframe.attr("g_src")) != "undefined") {
            iframe.attr("src", iframe.attr("g_src"));
            iframe.removeAttr("g_src");
        }

        divCalResult.hide().eq(index).show();
    });


    $(".Announced_But").click(function() {
        var next_li = $(".DetailsT_TitP ul>li");
        var index = $(this).index()
        next_li.eq(index).click();
        $("html,body").animate({
            scrollTop: 800
        }, 1500);
    });


    $(window).scroll(function() {
        if ($(window).scrollTop() >= 941) {
            $("#divMidNav").addClass("nav-fixed");
        } else if ($(window).scrollTop() < 941) {
            $("#divMidNav").removeClass("nav-fixed");
        }
    });
});


function divOpen() {
    var display = $("#MaCenter").css("display");
    if (display == "none") {
        $("#MaCenter").css("display", "block");
    } else {
        $("#MaCenter").css("display", "none");
    };
}
$(function() {
    $("#divOpen").click(divOpen);
});

function guanbi() {
    var display = $("#MaCenter").css("display");
    if (display == "block") {
        $("#MaCenter").css("display", "none");
    } else {
        $("#MaCenter").css("display", "block");
    };
}
$(function() {
    $("#guanbi").click(guanbi);
});












$(".yu_ff").mouseover(function() {
    $(".h_1yyg_eject").show();
})
$(".yu_ff").mouseout(function() {
    $(".h_1yyg_eject").hide();
})

$("#m_all_sort").hide();
$(".m_menu_all").mouseenter(function() {
    $(".m_all_sort").show();
})
$(".m_menu_all").mouseleave(function() {
    $(".m_all_sort").hide();
})
$(".m_all_sort").mouseenter(function() {
    $(this).show();
})
$(".m_all_sort").mouseleave(function() {
    $(this).hide();
})
</script>

<?php include templates("index","footer");?>