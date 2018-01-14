/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost
 Source Database       : gg11

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : utf-8

 Date: 01/14/2018 23:26:05 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `go_ad_area`
-- ----------------------------
DROP TABLE IF EXISTS `go_ad_area`;
CREATE TABLE `go_ad_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `width` smallint(6) unsigned DEFAULT NULL,
  `height` smallint(6) unsigned DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT '0' COMMENT '1表示通过',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='广告位';

-- ----------------------------
--  Records of `go_ad_area`
-- ----------------------------
BEGIN;
INSERT INTO `go_ad_area` VALUES ('3', '首页对联广告', '150', '300', '首页对联广告', '1');
COMMIT;

-- ----------------------------
--  Table structure for `go_ad_data`
-- ----------------------------
DROP TABLE IF EXISTS `go_ad_data`;
CREATE TABLE `go_ad_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` char(10) DEFAULT NULL COMMENT 'code,text,img',
  `content` text,
  `checked` tinyint(1) DEFAULT '0' COMMENT '1表示通过',
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
--  Records of `go_ad_data`
-- ----------------------------
BEGIN;
INSERT INTO `go_ad_data` VALUES ('5', '3', '测试', 'couplet', 'admanage/20160328/44911418097639.jpg,admanage/20160328/48076565097647.jpg', '1', '1459094400', '1522166400');
COMMIT;

-- ----------------------------
--  Table structure for `go_admin`
-- ----------------------------
DROP TABLE IF EXISTS `go_admin`;
CREATE TABLE `go_admin` (
  `uid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `mid` tinyint(3) unsigned NOT NULL,
  `username` char(15) NOT NULL,
  `userpass` char(32) NOT NULL,
  `useremail` varchar(100) DEFAULT NULL,
  `addtime` int(10) unsigned DEFAULT NULL,
  `logintime` int(10) unsigned DEFAULT NULL,
  `loginip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
--  Records of `go_admin`
-- ----------------------------
BEGIN;
INSERT INTO `go_admin` VALUES ('1', '0', 'admin', '7fef6171469e80d32c0559f88b377245', '', '1', '1515934985', '127.0.0.1');
COMMIT;

-- ----------------------------
--  Table structure for `go_appoint`
-- ----------------------------
DROP TABLE IF EXISTS `go_appoint`;
CREATE TABLE `go_appoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shopid` int(10) unsigned NOT NULL COMMENT '商品期数id',
  `userid` int(10) unsigned NOT NULL COMMENT '中奖用户',
  `time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `status` int(10) unsigned NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_article`
-- ----------------------------
DROP TABLE IF EXISTS `go_article`;
CREATE TABLE `go_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `cateid` char(30) NOT NULL COMMENT '文章父ID',
  `author` char(20) DEFAULT NULL,
  `title` char(100) NOT NULL COMMENT '标题',
  `title_style` varchar(100) DEFAULT NULL,
  `thumb` char(255) DEFAULT NULL,
  `picarr` text,
  `keywords` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` mediumtext COMMENT '内容',
  `hit` int(10) unsigned DEFAULT '0',
  `order` tinyint(3) unsigned DEFAULT NULL,
  `posttime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_article`
-- ----------------------------
BEGIN;
INSERT INTO `go_article` VALUES ('1', '10', 'author', '了解1Shop', '', '', 'a:2:{i:0;s:33:\"photo/20130902/41484375056924.jpg\";i:1;s:33:\"photo/20130902/26578125056924.jpg\";}', '', '', '<p>	</p><p class=\"textindent\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">1Shop是一种新型的网购模式，只需1元就有可能买到一件商品。1Shop网把一件商品平分成若干“等份”出售，每份1元，当一件商品所有“等份”售出后抽出一名幸运者，该幸运者即可获得此商品。</p><h3 style=\"margin: 30px 0px 0px; padding: 0px; font-size: 14px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; line-height: 30px; white-space: normal; \">规则：</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">1、每件商品参考市场价平分成相应“等份”，每份1元，1份对应1个夺宝码。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">2、同一件商品可以购买多次或一次购买多份。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">3、当一件商品所有“等份”全部售出后计算出“幸运<span style=\"color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px;\">夺宝</span>码”，拥有“幸运<span style=\"color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px;\">夺宝</span>码”者即可获得此商品。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">4、幸运<span style=\"color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px;\">夺宝</span>码计算方式：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 36px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; text-indent: -1em; \">1）取该商品最后购买时间前网站所有商品100条购买时间记录（限时揭晓商品取截止时间前网站所有商品100条购买时间记录）。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; text-indent: 1.6em; \">2）时间按时、分、秒、毫秒依次排列组成一组数值。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; height: 10px; \">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; text-indent: 1.6em; \">3）将这100组数值之和除以商品总需参与人次后取余数，余数加上10,000,001即为“幸运<span style=\"color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px;\">夺宝</span>码”。</p><h3 style=\"margin: 30px 0px 0px; padding: 0px; font-size: 14px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; line-height: 30px; white-space: normal; \">流程：</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \"><strong style=\"margin: 0px; padding: 0px; \">1、挑选商品</strong></p><p style=\"margin-bottom: 15px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">分类浏览或直接搜索商品，点击“立即<span style=\"color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px;\">夺宝</span>”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \"><strong style=\"margin: 0px; padding: 0px; \">2、支付1元</strong></p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">通过在线支付平台，支付1元即购买1人次，获得1个“<span style=\"color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px;\">夺宝</span>码”。同一件商品可购买多次或一次购买多份，购买的“购买码”越多，获得商品的几率越大。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \"><strong style=\"margin: 0px; padding: 0px; \">3、揭晓获得者</strong></p><p style=\"margin-bottom: 15px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">当一件商品达到总参与人次，抽出1名商品获得者，1Shop网会通过手机短信或邮件通知您领取商品。</p><h3 style=\"margin: 0px; padding: 0px 0px 0px 22px; font-size: 14px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; line-height: 30px; white-space: normal; \">注：</h3><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; text-indent: 1.6em; \">1）商品揭晓后您可登录&quot;个人中心&quot;查询详情，未获得商品的用户不会收到短信或邮件通知；</p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; text-indent: 1.6em; \">2）商品揭晓后，请及时登录&quot;个人中心&quot;完善个人资料，以便我们能够准确无误地为您配送商品。</p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; text-indent: 1.6em; \">3）所有已揭晓商品均不给予退款</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \"><strong style=\"margin: 0px; padding: 0px; \">4、晒单分享</strong><br style=\"margin: 0px; padding: 0px; \"/></p><p style=\"margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">晒出您收到的商品实物图片甚至您的靓照，说出您的1Shop心得，让大家一起分享您的快乐。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Tahoma, Arial, 宋体, Helvetica, sans-serif; font-size: 14px; line-height: 30px; white-space: normal; \">在您收到商品后，您只需登录网站完成晒单，并通过审核，即可获得1000银币奖励。在您成功晒单后，您的晒单会出现在网站&quot;晒单分享&quot;区，与大家分享喜悦。</p><p><br/></p>', '198', '1', '1375862513'), ('2', '7', 'author', '常见问题', '', '', 'a:0:{}', '', '', '<p>	</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\"><strong>参加方式：</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">1、充值获得金币，然后选择喜欢的商品开始夺；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">2、点击一个感兴趣的商品，选择要参与的人次并支付，直接充值并参与夺宝。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\"><strong>1元夺宝，就是这么简单！</strong></p><ol class=\"m-helpcenter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">2、1Shop是怎么计算幸运号码的？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">1）商品的最后一个号码分配完毕后，将公示截止该时间点本站全部商品的最后50个参与时间；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">2）将这50个时间的数值进行求和（得出数值A）（每个时间按时、分、秒、毫秒的顺序组合，如20:15:25.362则为201525362）；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">3）（数值A+数值B）除以该商品总需人次得到的余数<span data-func=\"remainder\" class=\"ico ico-questionMark\" style=\"display: inline-block; vertical-align: middle; overflow: hidden; width: 16px; height: 16px; margin-top: -4px; background: url(&quot;../img/7bb09c282377f08a16e399b734b17bf59144c1bc.png&quot;) -60px -510px no-repeat;\"></span>&nbsp;+ 原始数&nbsp;10000001，得到最终幸运号码，拥有该幸运号码者，直接获得该商品。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">3、怎样查看是否成为幸运用户？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">个人中心有您的夺宝记录，点击对应的记录，即可知道该期夺宝的获得者；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">如果您成为幸运用户，将会有邮件等方式的通知。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">4、如何领取幸运商品？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">在您成为幸运用户后会收到电子邮件通知。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">收到通知后，请到个人中心填写真实的收货地址，完善或确认您的个人信息，以便我们为您派发获得的商品。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">5、商品是正品吗？怎么保证？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">1Shop所有商品均由本公司采购及发货，100%正品，可享受厂家所提供的全国联保服务。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">6、我收到的商品可以换货或者退货吗？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">非质量问题，不在三包范围内，不给予退换货</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">请尽量亲自签收并当面拆箱验货，如果发现运输途中造成了商品的损坏，请不要签收，可以拒签退回。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">7、如果一件商品很久都没达到总需人次怎么办？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">若某件商品的夺宝号码从开始分配之日起90天未分配完毕，则本公司有权取消该件商品的夺宝活动，并向用户退还金币，所退还夺宝币将在3个工作日内退还至用户账户中。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">8、参与<span style=\"color: rgb(59, 59, 59); font-weight: bold;\">1Shop</span>需要注意什么？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">为了确保在您成为幸运用户后第一时间收到通知，请务必正确填写真实有效的联系电话和收货地址。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">9、网上支付未及时到帐怎么办？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">网上支付未及时到帐可能有以下几个原因造成：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">第一，由于网速或者支付接口等问题，支付数据没有及时传送到支付系统造成的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">第二，网速过慢，数据传输超时使银行后台支付信息不能成功对接，导致银行交易成功而支付后台显示失败；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">第三，如果使用某些防火墙软件，有时会屏蔽银行接口的弹出窗口。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">如果支付过程问题遇到问题，请与我们联系。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">10、什么是夺宝币？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\"><span style=\"color: rgb(59, 59, 59); font-weight: bold;\">金币</span>是<span style=\"color: rgb(59, 59, 59); font-weight: bold;\">1Shop</span>的代币，用户每充值1元，即可获得1个金币；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">1个夺宝币可以直接购买1个夺宝号码。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">11、如何进行金币充值？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">个人中心可以找到入口进行充值；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">需要注意的是，充值之后获得的是夺宝币，可以直接用于参与夺宝。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">12、金币是否可以提现？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">很抱歉，金币无法提现。</p></li><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">13、您付款遇到问题了？看看是不是由于下面的原因。</p></li><ol class=\"custom_num list-paddingleft-1\" style=\"list-style-type: none;\"><li class=\"list-num-1-1 list-num-paddingleft-1\"><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">问题一：支付平台已经扣款，但金币余额没有增加？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">答：请您不用担心，如果是因为银行单边账等原因造成的上述问题，已付款项将会在5-7个工作日内原路退回到您的银行账户；如果是因为银行网络延迟等原因造成的上述问题，则已付款项将会在会在5-7个工作日内以余额形式充值到您的账户。</p></li><li class=\"list-num-1-2 list-num-paddingleft-1\"><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\"><span style=\"color: rgb(59, 59, 59); font-weight: bold;\">问题二</span>：支付平台重复多次付款了该怎么办？</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">答：由于支付平台没有即时传输数据给1Shop，造成您在支付平台被重复扣款。不过请放心，1Shop将在和支付平台对账确认您的付款后，将重复支付款项原路退回到您的支付平台账户。</p></li></ol><li><p class=\"m-helpcenter-list-q\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px; color: rgb(59, 59, 59); font-weight: bold;\">14、建议反馈</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 25px;\">如果您有任何意见或建议，请点击这里与我们联系，谢谢！</p></li></ol><p><br/></p>', '100', '3', '1466568180'), ('3', '7', 'author', '服务协议', '', '', 'a:0:{}', '', '', '<p>	</p><p class=\"Service_em\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">欢迎您访问并使用充满互动乐趣的购物网站-1Shop http://1shopasia.com)，作为为用户提供全新、有趣购物模式的互联网公司，1Shop通过在线网站为您提供各项相关服务。当使用1Shop的各项具体服务时，您和1Shop都将受到本服务协议所产生的制约，1Shop会不断推出新的服务，因此所有服务都将受此服务条款的制约。请您在注册前务必认真阅读此服务协议的内容并确认，如有任何疑问，应向1Shop咨询。一旦您确认本服务协议后，本服务协议即在用户和1Shop之间产生法律效力。您在注册过程中点击“同意以下条款提交注册信息”按钮即表示您完全接受本协议中的全部条款。随后按照页面给予的提示完成全部的注册步骤。</p><p class=\"Service_em\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1Shop将可能不定期的修改本服务协议的有关条款，并保留在必要时对此协议中的所有条款进行随时修改的权利。一旦协议内容有所修改，1Shop将会在网站重要页面或社区的醒目位置第一时间给予通知。如果您继续使用1Shop的服务，则视为您受协议的改动内容。如果不同意本站对协议内容所做的修改，1Shop会及时取消您的服务使用权限。本站保留随时修改或中断服务而不需告知用户的权利。本站行使修改或中断服务的权利，不需对用户或第三方负责。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">一、用户注册</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1、用户注册是指用户登录1Shop，按要求填写相关信息并确认同意本服务协议的过程。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2、1Shop用户必须是具有完全民事行为能力的自然人，或者是具有合法经营资格的实体组织。无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不得注册为1Shop用户或超过其民事权利或行为能力范围与1Shop进行交易，如与1Shop进行交易的，则服务协议自始无效，1Shop有权立即停止与该用户的交易、注销该用户账户，并有权要求其承担相应法律责任。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">二、用户的帐号，密码和安全性</h3><p class=\"Service_em\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">用户一旦注册成功，成为本站的合法用户。用户将对用户名和密码安全负全部责任。此外，每个用户都要对以其用户名进行的所有活动和事件负全责。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通告本站。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">三、1Shop原则</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">平等原则：用户和1Shop在交易过程中具有同等的法律地位。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">自由原则：用户享有自愿向1Shop参与购买商品的权利，任何人不得非法干预。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">公平原则：用户和1Shop行使权利、履行义务应当遵循公平原则。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">诚实信用原则：用户和1Shop行使权利、履行义务应当遵循诚实信用原则。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">履行义务原则：用户向1Shop参与商品分享购买时，用户和1Shop皆有有义务根据本服务协议的约定完成该等交易（法律或本协议禁止的交易除外）</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">四、用户的权利和义务</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1、用户有权拥有其在1Shop的用户名及密码，并用该用户名和密码登录1Shop参与商品购买。用户不得以任何形式转让或授权他人使用自己的1Shop用户名。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2、用户有权根据本协议的规定以及1Shop网站上发布的相关规则在1Shop上查询商品信息、发表使用体验、参与商品讨论、邀请关注好友、上传商品图片、参加1Shop的有关活动，以及享受1Shop提供的其它信息服务</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3、用户有义务在注册时提供自己的真实资料，并保证诸如电子邮件地址、联系电话、联系地址、邮政编码等内容的有效性及真实性，保证1Shop可以通过上述联系方式与用户本人进行联系。同时，用户也有义务在相关资料发生变更时及时更新有关注册资料。用户保证不以他人资料在1Shop进行注册和参与商品分享购买。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">4、用户应当保证在1Shop参与商品分享购买时遵守诚实信用原则，不扰乱网上交易的正常秩序。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">5、用户在成为1Shop的会员后，可按1Shop的银币规则享受银币获得。累积银币可用于银币商城中的相应银币商品兑换。银币规则连同与该规则相关的条款和条件，构成用户与1Shop之间的完整协议。接受本协议，即表明接受银币规则中的条款和条件。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">6、用户享有言论自由权利；并拥有适度修改、删除自己发表的文章的权利用户不得在1Shop发表包含以下内容的言论：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1) 反对宪法所确定的基本原则，煽动、抗拒、破坏宪法和法律、行政法规实施的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2) 煽动颠覆国家政权，推翻社会主义制度，煽动、分裂国家，破坏国家统一的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3) 损害国家荣誉和利益的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">4) 煽动民族仇恨、民族歧视，破坏民族团结的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">5) 任何包含对种族、性别、宗教、地域内容等歧视的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">6) 捏造或者歪曲事实，散布谣言，扰乱社会秩序的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">7) 宣扬封建迷信、邪教、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">8) 公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">9) 损害国家机关信誉的；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">10) 其他违反宪法和法律行政法规的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">7、用户在发表使用体验、讨论图片等，除遵守本条款外，还应遵守该讨论区的相关规定。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">8、未经1Shop同意，禁止用户在网站发布任何形式的广告。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">五、1Shop的权利和义务</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1、1Shop有义务在现有技术上维护整个网上交易平台的正常运行，并努力提升和改进技术，使用户网上交易活动得以顺利进行；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2、对用户在注册和使用1Shop网上交易平台中所遇到的与交易或注册有关的问题及反映的情况，1Shop应及时作出回复；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3、对于用户在1Shop网站上作出下列行为的，1Shop有权作出删除相关信息、终止提供服务等处理，而无须征得用户的同意：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1) 1Shop有权对用户的注册信息及购买行为进行查阅，发现注册信息或购买行为中存在任何问题的，有权向用户发出询问及要求改正的通知或者作出删除等处理；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2) 用户违反本协议规定或有违反法律法规和地方规章的行为的，1Shop有权停止传输并删除其信息，禁止用户发言，注销用户账户并按照相关法律规定向相关主管部门进行披露。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3) 对于用户在1Shop进行的下列行为，1Shop有权对用户采取删除其信息、禁止用户发言、注销用户账户等限制性措施：包括发布或以电子邮件或以其他方式传送存在恶意、虚假和侵犯他人人身财产权利内容的信息，进行与分享购物无关或不是以分享购物为目的的活动，恶意注册、签到、评论等方式试图扰乱正常购物秩序，将有关干扰、破坏或限制任何计算机软件、硬件或通讯设备功能的软件病毒或其他计算机代码、档案和程序之资料，加以上载、发布、发送电子邮件或以其他方式传送，干扰或破坏1Shop网站和服务或与1Shop网站和服务相连的服务器和网络，或发布其他违反公共利益或可能严重损害1Shop和其它用户合法利益的信息。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">4、用户在此免费授予1Shop永久性的独家使用权(并有权对该权利进行再授权)，使1Shop有权在全球范围内(全部或部分地)使用、复制、修订、改写、发布、翻译和展示用户公示于1Shop网站的各类信息，或制作其派生作品，和或以现在已知或日后开发的任何形式、媒体或技术，将上述信息纳入其它作品内。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">5、对于1Shop网络平台已上架商品，1Shop有权根据市场变动修改商品价格，而无需提前通知客户。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">6、1Shop分享购物模式，秉着双方自愿原则，分享购物存在风险，1Shop不对抽取的“幸运夺宝码”结果承担责任，望所有用户谨慎参与。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">7、90天未达到“总需参与人次”的商品，用户可通过客服申请退款，所退款项将在3个工作日内，退还至1Shop账户中。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">六、配送及费用</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1Shop将会把产品送到您所指定的送货地址。全国免费配送。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">请清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成配送延迟或无法配送等，本站将不承担责任：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1、客户提供错误信息和不详细的地址；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2、货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3、不可抗力，例如：自然灾害、交通戒严、突发战争等。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">七、商品缺货规则</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">用户通过参与1Shop所获得的商品如果发生缺货，用户和1Shop皆有权取消该交易，所花费的款1Shop将全部返还。或1Shop对缺货商品进行预售登记，1Shop会尽最大努力在最快时间内满足用户的购买需求，当缺货商品到货，1Shop将第一时间通过邮件、短信或电话通知用户，方便用户进行购买。预售登记并不做交易处理，不构成要约。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">八、责任限制</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">在法律法规所允许的限度内，因使用1Shop服务而引起的任何损害或经济损失，1Shop承担的全部责任均不超过用户所购买的与该索赔有关的商品价格。这些责任限制条款将在法律所允许的最大限度内适用，并在用户资格被撤销或终止后仍继续有效。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">九、网络服务内容的所有权</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">本站定义的网络服务内容包括：文字、软件、声音、图片、录象、图表、广告中的全部内容；电子邮件的全部内容；本站为用户提供的其他信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">十、用户隐私制度</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">我们不会向任何第三方提供，出售，出租，分享和交易用户的个人信息。当在以下情况下，用户的个人信息将部分或全部被善意披露：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1、经用户同意，向第三方披露；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2、如用户是合资格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3、根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">4、如果用户出现违反当地有关法律或者网站政策的情况，需要向第三方披露；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">5、为提供你所要求的产品和服务，而必须和第三方分享用户的个人信息；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">6、其它本站根据法律或者网站政策认为合适的披露。</p><h3 style=\"margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153); white-space: normal;\">十一、法律管辖和适用</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">1、本协议的订立、执行和解释及争议的解决均应适用当地法律。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">2、如发生本站服务条款与当地法律相抵触时，则这些条款将完全按法律规定重新解释，而其它合法条款则依旧保持对用户产生法律效力和影响。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">3、本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; font-family: 微软雅黑; font-size: 12px; color: rgb(153, 153, 153); line-height: 24px; text-indent: 2em; white-space: normal;\">4、如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向本站所在地的法院提起诉讼。</p><h3 style=\"white-space: normal; margin: 0px; padding: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; color: rgb(153, 153, 153);\">十二、退款和退货政策</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(153, 153, 153); font-family: 微软雅黑; font-size: 12px; text-indent: 24px;\">一但货品发送后不可退货，除非有特别理由。</span></p><p class=\"p1\"><br/></p>', '0', '0', '1375862644'), ('6', '7', 'author', '安全支付', '', '', 'a:0:{}', '', '', '', '0', '0', '1375862712'), ('7', '8', 'author', '商品配送', '', '', 'a:0:{}', '', '', '<p>	</p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px;\">在您成为幸运用户后，1Shop会第一时间为您寄出商品。</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(128, 128, 128); font-family: &#39;Microsoft Yahei&#39;, verdana; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">获得商品后，请您尽快提交收货地址，超过7天未确认收货地址，视为自动放弃该商品。</p><p><br/></p>', '0', '0', '1375862725'), ('8', '8', 'author', '配送费用', '', '', 'a:0:{}', '', '', '<p>	</p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px;\">所有商品免费快递。</span><br/></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px;\"><br/></span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px;\"><br/></span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px;\"><br/></span></p>', '0', '0', '1375862737'), ('9', '8', 'author', '商品验货与签收', '', '', 'a:0:{}', '', '', '<p>	</p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px; text-indent: -23px;\">1、签收时请慎重，尽量本人签收，签收时务必仔细检查商品，如：外包装是否被开封，商品是否破损，配件是否缺失，功能是否正常。在确保无误后再签收，以免产生不必要的纠纷。若有任何疑问，请及时拨打客服电话反馈信息，若因用户未仔细检查商品即签收后产生的纠纷，1Shop概不负责，仅承担协调处理的义务；</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 23px; padding: 0px; color: rgb(128, 128, 128); font-family: &#39;Microsoft Yahei&#39;, verdana; font-size: 14px; line-height: 26px; white-space: normal; text-indent: -23px; background-color: rgb(255, 255, 255);\">2、用户所获商品，相关商品质量及保修问题请直接联系生产厂家；</p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 23px; padding: 0px; color: rgb(128, 128, 128); font-family: &#39;Microsoft Yahei&#39;, verdana; font-size: 14px; line-height: 26px; white-space: normal; text-indent: -23px; background-color: rgb(255, 255, 255);\">3、若因您的地址填写错误、联系方式填写有误等情况造成商品无法完成投递或被退回，所产生的额外费用及后果由用户负责；</p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 23px; padding: 0px; color: rgb(128, 128, 128); font-family: &#39;Microsoft Yahei&#39;, verdana; font-size: 14px; line-height: 26px; white-space: normal; text-indent: -23px; background-color: rgb(255, 255, 255);\">4、如因不可抗拒的自然原因，如地震、洪水等，所造成的商品配送延迟，<span style=\"color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px; text-indent: -23px; background-color: rgb(255, 255, 255);\">1Shop</span>不承担责任；</p><p style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 23px; padding: 0px; color: rgb(128, 128, 128); font-family: &#39;Microsoft Yahei&#39;, verdana; font-size: 14px; line-height: 26px; white-space: normal; text-indent: -23px; background-color: rgb(255, 255, 255);\">5、温馨提醒：若商品已签收，则说明商品配送正确无误且不存在影响使用的因素，<span style=\"color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px; text-indent: -23px; background-color: rgb(255, 255, 255);\">1Shop</span>有权不受理换货申请。</p><p><br/></p>', '0', '0', '1375862747'), ('10', '8', 'author', '长时间未收到商品', '', '', 'a:0:{}', '', '', '<p>	</p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(128, 128, 128); font-family: &quot;Microsoft Yahei&quot;, verdana; font-size: 14px;\">1、确保收货地址、邮编、电话、Email、地址等各项信息的准确性；</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(128, 128, 128); font-family: &#39;Microsoft Yahei&#39;, verdana; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">2、配送过程中联系方式畅顺无阻，如果联络您的时间超过7天未得到回复，默认您已经放弃此商品。</p><p><br/></p>', '0', '0', '1375862760'), ('11', '7', 'author', '隐私声明', '', '', 'a:0:{}', '', '', '<p>	</p><p><br/></p><p><br/></p><p>本网站其中一项最重要的资产，就是客户能适当处理其信息的信赖和信任。客户及潜在客户期望我们准确维护其信息，保护信息免遭篡改和错误使用，失窃以及无未经客户授权泄露信息之虞。我们遵行适用的隐私相关法律和规章制度，以期为客户\n及潜在客户的个人资料提供安全保障，并确保员工遵守严格的安全及保密标准。</p><p><br/>本声明旨在您告知您我公司收集您个人资料的原因、资料可能的用途、可能获得您个人资料的第三方，有关您查阅、检查及修订您个人资料的方法，以及我们直接销\n售及使用Cookies（网络跟踪器）的政策。使用本网站即表示您接受本隐私声明中的惯例做法及政策。若您反对本声明中的任何惯例做法及政策，请不要使用本网站将个人资料提交给本网站。</p><p><br/>本网站仅提供一般资料。虽然我们已尽合理努力，确保本网站的资料准确，不保证资料绝对准确，亦概不为资料不准确或因任何错漏所产生的任何损失或损害而承担任何责任。如未得到事前准许，不得复制（作为个人用途例外）或转发本网站所载的任何资料。</p><p><br/>我们承认其负有有关收集、持有、处理或使用私人数据的责任。您提供个人资料，纯属自愿性质。您可选择不向我们提供所需的个人资料，但这样做会影响到我们为您提供服务的能力。我们不会通过本网站收集任何可识别您身份的资料，除非直至您购买我们的产品或服务，登记成为客户或基于申请职位而提供个人资料起为始。</p><p><br/>若您处于限制我们分发资料或使用有关社交媒体平台的司法管辖区内，则不应使用本网站及我们的社交媒体平台。若此规定适用于您，我们建议您自行了解及遵从有关限制，我们不因此而承担任何责任。</p><h1><br/>收集资料的方法</h1><p><br/>我们将会收集及储存您在本网站输入的资料，或通过其他渠道向我们提供的资料。我们亦会从附属公司、商业伙伴及其他独立第三方资料来源，获取与您有关并合法收集的个人或非个人资料。在您到访本网站时，我们亦收集与您所用电脑或其他装置有关的某些资料。</p><p><br/>若您在本网站，我们所提供的应用程序或另行通过社交媒体供应商使用任何社交媒体功能或平台，我们可能通过有关社交媒体供应商，按照其有关政策查阅及收集与\n您有关的资料。在使用社交媒体功能时，我们可能会查阅及收集您于您的社交媒体个人账户选择提供并列入在内的资料，有关资料包括（但不限于）您的姓名、性\n别、出生日期、电邮地址、地址、地点等。您在有关社交媒体供应商所作的隐私设定，可限制或阻止我们对有关资料的查阅。</p><h1><br/>收集您个人资料的原因及可能用途</h1><p><br/>收集个人资料可作以下用途：</p><ul class=\" list-paddingleft-2\"><li><p>处理、实施、执行和实行在本网站上所提供的表格中或您可能不时交予我们的任何其他文件项下的要求或交易；</p></li><li><p>设计全新或加强目前我们所提供的产品及服务；</p></li><li><p>与您保持联系，包括向您寄发有关您在我们公司任何账户或本隐私声明日后变动的通讯；</p></li><li><p>我们的相关监管机构的统计或精算研究之用；</p></li><li><p>供我们作资料匹配，内部业务及管理之用；</p></li><li><p>协助执行法例、警方或其他政府或监管机构调查，以及遵守适用法律及规例所施行的规定，或其他向政府或监管机构承诺之义务；</p></li><li><p>将我们网站的外观个人化，提供相关产品的建议，以及在本网站或通过其他渠道进行目标广告活动；</p></li><li><p>在收集之时所通知的其他用途；</p></li><li><p>与上述任何项目直接有关的其他用途。</p></li></ul><p><br/>若您提供个人资料予我们，即表示您接受，我们将可因所需期限留存资料以履行有关用途，而就该等用途而言，有关资料乃在遵守适用相关法律及规定的情况下\n收集。我们采用合理的保障措施，包括限制亲身查阅我们系统内的数据及在转移敏感数据时进行加密处理，以防止未经许可或意外的查阅、处理、删除、丢\n失或使用情况。若不再需要用作上述任何用途，将会采取合理步骤删除或销毁有关资料。</p><p><br/>有关我们使用您个人资料作宣传或市场推广用途的政策，请参阅「使用个人资料作直接促销用途」一节。</p><h1><br/>谁会取得您的个人资料？</h1><p><br/>个人资料将保密处理，仅在法律许可且就符合收集个人资料用途或直接相关用途而披露是必须时，方可向以下各方提供相关个人资料（有关我们分发您个人资料作宣传或市场推广用途的政策，请参阅「使用个人资料作直接促销用途」一节。）：</p><ul class=\" list-paddingleft-2\"><li><p>获授权担任产品及服务有关的任何人士；</p></li><li><p>就营运以及向您提供服务相关而提供管理、数据处理、电讯、电脑、付款、收债或证券结算、技术外判、电话中心服务、邮寄及印刷服务的任何代理、承包商或第三方服务供应商（无论在内或外）；</p></li><li><p>任何代理、承包商或第三方服务供应商（无论在内或外），包括协助提供服务的公司，例如再保险公司、投资管理公司、索赔调查公司、业界协会或联盟；</p></li><li><p>协助收集您资料或与您联系的其他公司，例如研究调查公司及信贷评级机构，藉以加强我们向您所提供的服务；及</p></li><li><p>政府或监管机构：</p></li><p>(a)根据在该司法管辖区适用于该友邦保险公司的法律及监管义务而必须对其披露的任何人士；</p><p>(b)依据该友邦保险公司与相关政府、监管机构或其他人士协议必须对其披露的任何人士。</p></ul><p><br/>就我们因在提供保险服务而收集的个人资料，该等个人资料将只会提供予上述人士作提供相关保险服务的用途。</p><p><br/>我们可不时购买业务或出售我们一项或多项业务（或其部分），而在法律许可的情况下，您的个人资料可作为该买卖或建议买卖的一部分予以转让或披露。若我们购买一项业务，就该业务所获得的个人资料将在其可行及允许的情况下根据本隐私声明处理。</p><p><br/><strong>若法律法规许可，可将您的个人资料提供予上述任何一方，有关各方可位于境内或境外。</strong>您的资料，将可转移往若您向我们提供个人资料，或使用我们的服务或本网站或应用程式，即表示您同意将有关资料从您的司法管辖区转移至我们在其之外的设施，或如上\n文所载转移至我们与其分享有关资料的第三方。</p><h1><br/>查阅个人资料的权利</h1><p><br/>您有权：</p><ul class=\" list-paddingleft-2\"><li><p>核实我们是否持有您的个人资料，并查阅任何该等资料；</p></li><li><p>要求我们更正任何有关您的错误个人资料；</p></li><li><p>及就有关个人资料的政策及惯例作出查询。</p></li></ul><p><br/></p><h1>使用个人资料作直接销售用途</h1><p><br/>除上述用途外，在法律许可的情况下，我们可使用您的姓名和联络资料作宣传或市场推广用途，包括向您寄发宣传资料及就以下产品、服务、建议、目的作直接\n销售及后续的保险服务然而，就我们因在提供保险服务而收集的个人资料，该等个人资料将只会用作宣传或推广直接与保险相关的产品或服务。</p><p><br/>鉴于直接促销的用途，在法律许可的情况下，除因我们在提供保险服务所收集的个人资料外，我们或会将您的个人资料提供予任何上述描述的促销标的类别、电\n话中心、市场推广或研究服务的提供商（无论在内或外），从而他们可就其所提供的产品及服务向您寄发宣传资料及进行直接促销，有关资料可透过邮寄、\n电邮或其他方式送达予您。在法律许可的情况下，我们或会将您的个人资料提供予任何以上描述的促销标的类别的提供商（无论在内或外）而得益。</p><p><br/>就本节用途使用或向本部分受让方提供您的个人资料前，我们可能受法律所规定要取得您的书面同意，且在该等情况下，仅会在取得有关书面同意后方就任何宣传或市场推广用途使用或提供您的个人资料。</p><p><br/>我们会使用及提供作上述直接促销用途的个人资料为您的姓名和相关联络资料；然而，我们可管有更多的个人资料。</p><p><br/>如要求您同意，而您给予该等同意，您可于其后撤回对我们使用并向第三者提供您的个人资料作直接促销用途的同意；此后，我们须停止使用或提供该等资料作直接促销之用。</p><p><br/>如您已给予同意但又欲将其撤回，请以书面或电邮方式通知我们，书面通知可邮寄至「查阅个人资料的权利」一节所载地址，而电邮可发送至privacy.compliance@aia.com。任何有关请求应清楚列明该要求相关的个人资料详情。</p><h1><br/>使用Cookies</h1><p><br/>Cookies乃网络伺服器放置在您的电脑或其他装置的独一无二标识符，其载有资料，可在其后由向您发Cookies的伺服器解读。友邦保险亦可在其维持\n的网站使用Cookies。所收集的资料（包括（但不限于）您的IP位址（及网域名称）、浏览器软件、浏览器的类别及配置，语言设定、地理位置、作业系\n统、转介网站、所浏览网页及内容及到访期间）将用作编製访客怎样到达及浏览我们网站的总体统计数字，协助我们瞭解如何改善您到访我们网站的体验。有关资料\n将会以不具名方式收集，并不能识别您的身份，除非您以会员身份登入，则作别论。我们只会使用有关资料作增进及优化网站。Cookies亦让我们的网站就您\n及您的喜好留下记录，让我们可按您的需要，为您度身设定网站。广告Cookies亦可让我们的网站提供与您尽可能有关的广告，如为您甄选以兴趣为主的广\n告，或阻止不断向您展现同一广告等。</p><p><br/>大部份网页浏览器在最初已设定为可接受Cookies。若您不愿接收Cookies，可在您的浏览器设定中关闭有关功能。然而，如关闭功能，您将不能尽享我们网站的优点，而若干功能可能不可以正常运作。</p><h1><br/>外部链接</h1><p><br/>若本网站任何部分载有连接其他网站的链接，有关网站可能并非根据本隐私声明运作隐私，藉以瞭解其收集、使用、转移及披露个人资料的政策。</p><h1><br/>本隐私声明的修订</h1><p><br/>我们保留权利可随时且在无须通知的情况下仅凭知会您有关修改、更新或修订，而增添、修改、更新或修订本隐私声明。倘我们决定修改我们的个人资料政策，\n我们将于我们的网站知会您有关修改，从而让您能得悉我们所收集的资料、我们如何使用该资料及在何种情况下会披露该资料。任何有关修改、更新或修订将在刊登\n后即时生效。</p><h1><br/>其他资料</h1><p><br/>如您对本隐私声明的任何部分有任何疑问或如欲知悉有关我们的资料保密惯例的更多资料，请随时通过上述联络途径与我们联络。</p>', '71', '1', '1466572560'), ('12', '9', 'author', '官方微信', '', '', 'a:0:{}', '', '', '', '93', '1', '1456038904'), ('14', '153', 'admin', 'service agreement', '', '', 'a:0:{}', '', '', '<p class=\"p1\">Term of Use</p><p class=\"p1\">These <span class=\"s1\">oneshop.com</span> Terms of Use (&quot;Terms of Use&quot;) informs you as to the terms of use by which each visitor or gamer (&quot;Gamer&quot; our &quot;you&quot;) may use the <span class=\"s1\">oneshop.com</span> website(s) (&quot;Website&quot;) (It also apply to the use of any Mobile Devices), and the services available on the Website (the &quot;Services&quot;), whether as a registered Gamer or as a guest.</p><p class=\"p1\">The Website is owned and operated by <span class=\"s1\">ashdafuiahfajdceru, </span>and registered and a crowdfunding platform (“Platform”).</p><p class=\"p2\"><br/></p><p class=\"p1\">1)<span class=\"Apple-tab-span\">	</span>Responsibilities and Obligations</p><p class=\"p1\">1.1) Please carefully read all of the following content. You may not access or use the Website or the Services if you do not accept the Terms. If you do not agree to these Terms of use, please leave the Website immediately. By signing up and registered with an account which means you and <span class=\"s1\">oneshop.com</span> have reached an agreement, accept the terms of services of all content. Since then, you shall not make any form of defence for not reading the contents of this service.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p2\"><br/></p><p class=\"p1\">1.2) You must not be less than eighteen (18) years of age to access the website. Notwithstanding that you may be eighteen years of age or older, you may not access the website or the services and may not accept the terms if you are not of legal age or capacity to form a binding contract under the laws of the country in which you are resident or from which you intend to access the website or use the services.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.3) If you choose to register and create an account with <span class=\"s1\">oneshop.com</span> (&quot;account&quot;) you will be required to provide your full name, address, date of birth, email address and telephone number.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.4) All information and data that you provide to us either at the time you register for an account or at any subsequent time must be truthful, accurate and verifiable in all respects. By providing such information and data you consent to us submitting it to third party providers of age and identification services to verify that you are who you say you are and that the information you give is true and accurate. We reserve the right to use third party verification services to authenticate your account information and identity, and you expressly acknowledge and agree that we may confirm the accuracy of any information you submit. If you have provided false information or if you are unable or unwilling to provide documentation to confirm your information, as we are unable to confirm your identify, your account may be terminated and any and all activity within the account deemed invalid, including, without limitation, the nullification of potential winnings. By registering an account you grant us the right to disclose your identity and any information that we required.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.5) You are permitted to open only one (1) account. Only one account is allowed per individual person. Multiple accounts held by the same individual are subject to immediate closure and we reserve the right to seize any funds gained as a result of holding multiple accounts. Furthermore you shall not permit another person to access the Website or Software via your account without the express permission of <span class=\"s1\">oneshop.com</span>.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.6) You will be assigned a numerical account ID. You may also be able to log in to your account using your email address. You must treat your user account ID and password as confidential and not disclose any part of them to anyone else. We have the right to disable any user account ID, password whether chosen by you or assigned by us, at any time, if in our opinion you have failed to comply with any of the provisions of these Terms of Service. You are responsible for ensuring that no one else (particularly but without limitation those who may share your internet connection) is able to make use of your account ID (or email address) and password and you shall be responsible for all transactions that take place on your account whether or not you knew or consented to such transactions taking place.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.7)You acknowledge and understand the risks involved on Shoplex, Oneshop does not guarantee to participate in game will win the item.We have the right to inform and send any order information promotional activities through the mail, SMS, telephone, app notification and other forms.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.8)<span class=\"Apple-tab-span\">	</span>If there is any illegal behavior or a violation against the agreement, <span class=\"s1\">oneshop.com</span> have the right regulate for the following one or multiple penalties:</p><ul class=\"ul1 list-paddingleft-2\"><li><p>To be ordered to correct illegal or illegal acts;</p></li><li><p>Termination of the services;</p></li><li><p>Cancel backing and commodity distribution (if backing have access to items), and <span class=\"s1\">onepoint</span> will not be returned;</p></li><li><p>To freeze the account and the <span class=\"s1\">onepoint</span> in the account; or</p></li><li><p>If there is any behaviour caused by any losses and damages, you should bear the liability.</p></li></ul><p class=\"p2\"><br/></p><p class=\"p1\">1.9)<span class=\"Apple-tab-span\">	</span>You are prohibited from making or uploading any posting or other materials on the website and from transmitting or distributing to, from, or on the website and from transmitting or distributing to, from, or on the website.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.10) In addition to other prohibitions as set forth in the Terms, you are prohibited from using our site, its content, or any of the products or services we offer:<span class=\"Apple-converted-space\">&nbsp;</span></p><ul class=\"ul1 list-paddingleft-2\"><li><p>For any unlawful purpose;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>to solicit others to perform or participate in any unlawful acts;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To violate any international, federal, or local laws, regulations, rules, or ordinances;<span class=\"Apple-converted-space\">&nbsp; </span>to infringe upon or violate our intellectual property rights or the intellectual property rights of others;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To submit false or misleading information;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To upload or transmit viruses or any other type of malicious or destructive code;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To collect or track the personal information of others;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To spam, phish, pharm, pretext, spider, crawl, or scrape;<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>For any obscene or immoral purpose; or<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p>To interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p></li></ul><p class=\"p2\"><br/></p><p class=\"p1\">1.11) You agree to provide current, complete and accurate purchase information for all purchases made on our site. In the event that we modify or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address or the phone number you provided at the time the order was made.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.12) You agree to indemnify, defend and hold harmless us and our licensors, service providers, and suppliers from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.13) The prices and quantity of the items on the website may change at any time, Oneshop will not make any special notice. The information displayed on the client side may have a certain lag or error, and you clearly know and understand this situation.We will not be liable for any loss or damage caused by a distributed denial-of-service attack, viruses or other technologically harmful material that may infect your computer equipment, computer programs, data or other proprietary material due to your use of the Website or to your downloading of any material posted on it, or on any website linked to it.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.14) You acknowledge and agree that we provide access to such third party links and services &quot;as is&quot; and &quot;as available&quot; without any warranties, representations or conditions of any kind and without any endorsement. We will have no liability whatsoever arising from or relating to your use of optional third-party links and services, including without limitation any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made with any third party.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.15) Modifications to the services, products and prices</p><p class=\"p1\">a) Prices for our products and services are subject to change without notice. If you completed a purchase prior to a price change, the price change will not apply to that purchase, but will apply to any future purchases of products or services that you might make.</p><p class=\"p1\">b) All product descriptions are subject to change at any time without notice and at our sole discretion. We reserve the right at any time and without notice to modify or discontinue the services (or any part or content thereof) or any of our product or service offers .</p><p class=\"p1\">c) We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the service.</p><p class=\"p2\"><br/></p><p class=\"p1\">1.16) <span class=\"s1\">oneshop.com</span> commits to follow a fair, justice and open principles<span class=\"s2\">，</span>and ensure that all the users on <span class=\"s1\">oneshop.com</span> to obtain the same rights and obligations, all backing results will be publicized.</p><p class=\"p2\"><br/></p><p class=\"p1\">2. The Rules in <span class=\"s1\">Oneshop.com</span></p><p class=\"p1\">2.1) Interpretation:</p><ul class=\"ul1 list-paddingleft-2\"><li><p><span class=\"s1\">Onepoint </span>: A virtual token that represent one backing on <span class=\"s1\">oneshop.com</span>. Onepoint are not transferrable and not refundable.<span class=\"Apple-converted-space\">&nbsp;</span></p></li><li><p><span class=\"s1\">Backing code </span>: A randomly generated code is assigned to Gamaer while Gamer backing a project on oneshop.com.</p></li><li><p><span class=\"s1\">Matching backer</span>: When all the backer have been allocated, the system selects a matching number in accordance with the rules; the user with this share receives the product.</p></li><li><p><span class=\"s1\">Gem </span>: An unmatching backer will be rewarded with a Gem.</p></li><li><p><span class=\"s1\">Direct Purchasing</span>: Refers to Gamer are able to purchase with a book value which determine by <span class=\"s1\">oneshop.com.</span></p></li><li><p><span class=\"s1\">Onecrowdfunding : </span>In order to back a project, Gamer can purchase or participating various activities on <span class=\"s1\">oneshop.com</span>.</p></li></ul><p class=\"p1\">2.2) 2. How to play</p><p class=\"p1\">On <span class=\"s1\">oneshop</span>.com, all items are divided into a number of shares, each of which represents as <span class=\"s1\">backing code</span>.</p><p class=\"p1\"><span class=\"s1\">Backers</span> choose <span class=\"s1\">project</span>, and put it into the cart, spending one or multiple <span class=\"s1\">onepoint</span> in exchange for the same amount of <span class=\"s1\">backing code</span>. Then backers should be patience and wait for the result to announce. <span class=\"s1\">Backers</span> can view the announced results in their <span class=\"s1\">backing</span> record. Once the result has been announced, the <span class=\"s1\">matching backing code</span> will be published, and who owns the backing code wins the item. All <span class=\"s1\">one point.com</span> on the item expire and will not be refunded. The winner should fill in the shopping address immediately after win the item. Then the <span class=\"s1\">matching backers </span>wait for delivery.</p><p class=\"p2\"><br/></p><p class=\"p1\">3. Funding and Cancellation Policies.</p><p class=\"p1\">3.1) Depositing Funds. You may deposit funds into your account using any method that we have approved. By initiating a deposit, you represent and warrant that you:</p><ul class=\"ul1 list-paddingleft-2\"><li><p>Internet Gambling may be illegal in the jurisdiction in which you are located; if so, you are not authorized to use your payment card to complete this transaction.</p></li><li><p>Have authority to use the payment source and method you select.</p></li><li><p>Are not depositing funds derived from any fraudulent or unlawful source.</p></li><li><p>Consent to our sharing your personal information with any third parties that we use to process your requested deposit.</p></li><li><p>Consent to us performing any background check or investigation we deem necessary to ensure that your payment source and method are authorized.</p></li></ul><p class=\"p2\"><br/></p><p class=\"p1\">3.2<span class=\"s2\">）</span> We are not required to examine your authority to use a payment source or method and are entitled to assume you have authority. We may require you to provide additional information, provide copies of documents, or appear in person. We do not guarantee that a deposit will be processed and made available in any specific period of time. We do not guarantee that a deposit will be free from error. We reserve the right to deny any deposit at any time and without notice. We are not liable for any damages or losses resulting from any delay, denial, or error in processing a deposit.</p><p class=\"p2\"><br/></p><p class=\"p1\">3.3<span class=\"s2\">）</span>No withdrawal or transfer of <span class=\"s1\">onepoint.</span></p><p class=\"p5\"><br/></p><p class=\"p1\">3.4) If an item is not completed the distribution within 90 days since the beginning of the distribution date. <span class=\"s1\">Oneshop.com</span> has the right to cancel the backing activities, and return the onepoint to the owners’ account, and it will take not more than 3 working days.</p><p class=\"p2\"><br/></p><p class=\"p1\">3.5) If the following occurs, <span class=\"s1\">oneshop.com</span> has the right to cancel the <span class=\"s1\">backer order and backing activities</span>:</p><ul class=\"ul1 list-paddingleft-2\"><li><p>Our system is malfunction or suffer from the third party attack, or other that <span class=\"s1\">oneshop.com</span> cannot control.</p></li><li><p>According to <span class=\"s1\">oneshop.com</span> may be issued in the future or update all kinds of rules, the notice provisions, <span class=\"s1\">oneshop.com</span> has the right to cancel the backing activity.</p></li></ul><p class=\"p1\">3.6) <span class=\"s1\">oneshop.com</span> holds no responsibility for additional payment fees of any kind issued to the user by the user&#39;s bank.</p><p class=\"p2\"><br/></p><p class=\"p1\">4. Shipping and Delivery</p><p class=\"p1\">4.1) Delivery will be made from Oneshop &#39;s supplier&#39;s warehouse or from Oneshop &#39;s warehouse to the address provided by the user. Oneshop may engage third parties to satisfy its contractual obligations without being required to notify the buyer. Obvious damage to the item from transport or packaging damaged during transport is to be reported to the supplier upon taking delivery.</p><p class=\"p1\">4.2) Shipment will be arranged as soon as possible after you confirm your shipping address. It normally takes not more than seven business days. Tracking number and proof of delivery in your item status.</p><p class=\"p1\">4.3) Should Oneshop not be able to deliver the item ordered for whichever reason, Oneshop is entitled to declare rescission to the user or to substitute the item with a comparable replacement product with similar features. Oneshop may also choose to replace the item ordered with a gift card of the value of the item that the user may choose to use to obtain the same product.</p><p class=\"p2\"><br/></p><p class=\"p1\">5. Waiver and Entire Agreement</p><p class=\"p1\">The failure of us to exercise or enforce any right or provision of these Terms shall not constitute a waiver of such right or provision.</p><p class=\"p1\">These Terms and any policies or operating rules incorporated into these Terms or posted by us on our site or in respect to the Services constitutes the entire agreement and understanding between you and us and govern your use of the Services, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms).</p><p class=\"p1\">We may make changes the Terms from time to time, and will make a new copy of the Terms available at this link. You understand and agree that you are responsible for checking this link to determine whether the Terms have been updated and, in any event, that if you access the Website or use the Services after the date on which the Terms have changed, you agree that you shall be deemed to have affirmatively accepted the updated Terms. When we post changes to the Terms, the Last Revised date to the top of Terms will be updated.</p><p class=\"p1\">Any ambiguities in the interpretation of these Terms shall not be construed against the drafting party.</p><p><br/></p><p>6.Refund and Return Policies</p><p>Strictly no refund except valid reason)</p>', '19', '1', '1515930431');
COMMIT;

-- ----------------------------
--  Table structure for `go_brand`
-- ----------------------------
DROP TABLE IF EXISTS `go_brand`;
CREATE TABLE `go_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned DEFAULT NULL COMMENT '所属栏目ID',
  `status` char(1) DEFAULT 'Y' COMMENT '显示隐藏',
  `name` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `nameen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `order` (`order`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
--  Records of `go_brand`
-- ----------------------------
BEGIN;
INSERT INTO `go_brand` VALUES ('1', '14', 'Y', '联想', '16', 'lenovo'), ('2', '18', 'Y', '诺基亚', '1', 'nokia'), ('3', '18', 'Y', '苹果', '1', 'apple'), ('4', '14', 'Y', '三星', '14', 'samsung'), ('6', '18', 'Y', '小米', '1', 'ximi'), ('7', '18', 'Y', 'oppo', '1', 'oppo'), ('17', '18', 'Y', '联想', '1', 'lenovo'), ('8', '18', 'Y', '苹果', '1', 'apple'), ('9', '18', 'Y', '三星', '1', 'samsung'), ('10', '13', 'Y', '台电', '13', 'TECLAST'), ('11', '13', 'Y', '尼康', '3', 'Nikon'), ('12', '18', 'Y', '台电', '1', 'TECLAST'), ('13', '14', 'Y', '苹果', '1', 'apple'), ('14', '13', 'Y', '小米', '1', 'ximi'), ('19', '13', 'Y', '三星', '111', 'samsung'), ('15', '13', 'Y', '佳能', '10', 'Canon'), ('16', '13', 'Y', '索尼', '100', 'Sony'), ('68', '16', 'Y', 'REMEDY', '1', 'REMEDY'), ('69', '16', 'Y', '探路者', '1', 'pathfinder'), ('70', '16', 'Y', '纽巴伦', '1', 'New balance'), ('71', '16', 'Y', '迪德', '1', 'DIDE');
COMMIT;

-- ----------------------------
--  Table structure for `go_caches`
-- ----------------------------
DROP TABLE IF EXISTS `go_caches`;
CREATE TABLE `go_caches` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_caches`
-- ----------------------------
BEGIN;
INSERT INTO `go_caches` VALUES ('1', 'member_name_key', 'admin,administrator,云购官方'), ('2', 'shopcodes_table', '1'), ('3', 'goods_count_num', '14417'), ('4', 'template_mobile_reg', '尊敬的用户您好,你的注册验证码是:000000,请不要告诉任何人。'), ('5', 'template_mobile_shop', '恭喜您成为商品获得者！请及时在个人中心填写收货地址并拔打服务热线，本次云购码：00000000'), ('6', 'template_email_reg', '你好,请在24小时内激活注册邮件，点击连接激活邮件：{地址}'), ('7', 'template_email_shop', '恭喜您：{用户名}，你在云购网够买的商品：{商品名称} 已中奖，中奖码是:{中奖码}'), ('8', 'pay_bank_type', 'molpay');
COMMIT;

-- ----------------------------
--  Table structure for `go_card_pwd`
-- ----------------------------
DROP TABLE IF EXISTS `go_card_pwd`;
CREATE TABLE `go_card_pwd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pwd` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pwd` (`pwd`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='卡密密码表';

-- ----------------------------
--  Table structure for `go_card_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `go_card_recharge`;
CREATE TABLE `go_card_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `money` int(10) unsigned DEFAULT NULL COMMENT '卡密金额',
  `code` varchar(21) DEFAULT NULL COMMENT '卡号',
  `codepwd` varchar(20) DEFAULT NULL COMMENT '卡号密码',
  `isrepeat` varchar(1) DEFAULT 'N' COMMENT '是否一次性',
  `rechargecount` int(10) DEFAULT '0' COMMENT '充值次数',
  `maxrechargecout` int(10) DEFAULT '0' COMMENT '多最可重复多少次',
  `rechargetime` int(10) DEFAULT NULL COMMENT '充值期限',
  `time` int(10) DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COMMENT='卡密表';

-- ----------------------------
--  Table structure for `go_category`
-- ----------------------------
DROP TABLE IF EXISTS `go_category`;
CREATE TABLE `go_category` (
  `cateid` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `parentid` smallint(6) DEFAULT NULL COMMENT '父ID',
  `channel` tinyint(4) NOT NULL DEFAULT '0',
  `model` tinyint(1) DEFAULT NULL COMMENT '栏目模型',
  `name` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `catdir` char(20) DEFAULT NULL COMMENT '英文名',
  `pic_url` char(200) NOT NULL DEFAULT '' COMMENT '分类图片url',
  `url` varchar(255) DEFAULT NULL,
  `info` text,
  `order` smallint(6) unsigned DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`cateid`),
  KEY `name` (`name`),
  KEY `order` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
--  Records of `go_category`
-- ----------------------------
BEGIN;
INSERT INTO `go_category` VALUES ('1', '0', '0', '2', '中文', 'cn', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('2', '0', '0', '2', '英文', 'English', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('3', '1', '0', '2', '帮助', 'help', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:18:\"关于OneShop\";s:13:\"meta_keywords\";s:18:\"关于OneShop\";s:16:\"meta_description\";s:18:\"关于OneShop\";}', '1'), ('4', '1', '0', '2', '网站公告', 'wangzhangonggao', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:12:\"网站公告\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:18:\"OneShop公告\";s:13:\"meta_keywords\";s:18:\"OneShop公告\";s:16:\"meta_description\";s:42:\"自由购，一元购，OneShop公告\";}', '1'), ('5', '2', '0', '2', 'help', 'help', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('6', '2', '0', '2', 'Website announcement', 'Website announcement', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('7', '3', '0', '2', '1Shop保障', 'yunbaozhang', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('8', '3', '0', '2', '商品配送', 'peisong', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";N;s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('9', '3', '0', '2', '官方媒体', 'guanfangmeiti', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('10', '3', '0', '2', '新手指南', 'xinshouzhinan', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('12', '0', '0', '-1', '邀请注册', 'pleasereg', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:25:\"single_web.pleasereg.html\";s:7:\"content\";s:172:\"PHA+6Ieq55Sx5LmQ6LStPC9wPjxwPjxici8+PC9wPjxwPuS4gOWFg+S5kOi0rTwvcD48cD48YnIvPjwvcD48cD48YnIvPjwvcD48cD7oh6rnlLHotK3vvIzkuIDlhYPotK3vvIzoh6rnlLHkuZDotK08L3A+PHA+PGJyLz48L3A+\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('13', '0', '0', '1', '数码影像', 'Electronic &amp; Acc', 'cateimg/20150821/83980735158378.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/83980735158378.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '3'), ('14', '0', '0', '1', '电脑', 'IT Proucts', 'cateimg/20150821/71565047158359.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/71565047158359.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '5'), ('15', '0', '0', '1', '女性时尚', 'Women\'s Fashion', 'cateimg/20150821/35190822363956.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/35190822363956.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '6'), ('16', '0', '0', '1', '潮流新品', 'New Gadgets', 'cateimg/20150821/77928723158582.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/77928723158582.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '7'), ('17', '0', '0', '1', '综合购物', 'All Products', 'cateimg/20150821/22065264158707.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/22065264158707.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '9'), ('18', '0', '0', '1', '手机平板', 'Mobile &amp; Tablet', 'cateimg/20150821/31372783363997.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/31372783363997.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '2'), ('19', '0', '0', '1', '饮食天地', 'Health &amp; Beauty', 'cateimg/20150821/10514407158491.png', '', 'a:7:{s:5:\"thumb\";s:35:\"cateimg/20150821/10514407158491.png\";s:3:\"des\";s:0:\"\";s:8:\"template\";N;s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '4'), ('153', '5', '0', '2', '1shop security', '1shop security', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('154', '5', '0', '2', 'Commodity distribution', 'Commodity distributi', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('155', '5', '0', '2', 'The official media', 'The official media', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1'), ('156', '5', '0', '2', 'Beginner\'s Guide', 'Beginner\'s Guide', '', '', 'a:7:{s:5:\"thumb\";s:0:\"\";s:3:\"des\";s:0:\"\";s:8:\"template\";s:0:\"\";s:7:\"content\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}', '1');
COMMIT;

-- ----------------------------
--  Table structure for `go_cjcode`
-- ----------------------------
DROP TABLE IF EXISTS `go_cjcode`;
CREATE TABLE `go_cjcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(10) unsigned NOT NULL,
  `scenename` char(50) NOT NULL DEFAULT '' COMMENT '推广员或者渠道名称',
  `ticket` char(255) NOT NULL DEFAULT '' COMMENT '二维码ticket',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总共的关注人数',
  `nownum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '扫描关注人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_cjcode`
-- ----------------------------
BEGIN;
INSERT INTO `go_cjcode` VALUES ('168', '200', '6565656', 'gQFR8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL0VVeEV0UnJsa1R6bzlHb1JjMkF6AAIEpUTJVgMEAAAAAA==', '1456031012', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `go_cjlist`
-- ----------------------------
DROP TABLE IF EXISTS `go_cjlist`;
CREATE TABLE `go_cjlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `wxid` char(255) NOT NULL DEFAULT '' COMMENT '推广员或者渠道名称',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `codeid` char(20) NOT NULL DEFAULT '' COMMENT '场景码',
  `come` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0是关注  1是扫描',
  `sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '扫描或者关注次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=utf8 COMMENT='场景关注报表';

-- ----------------------------
--  Table structure for `go_config`
-- ----------------------------
DROP TABLE IF EXISTS `go_config`;
CREATE TABLE `go_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `value` mediumtext,
  `zhushi` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_config`
-- ----------------------------
BEGIN;
INSERT INTO `go_config` VALUES ('1', 'web_name', '1Shop', '网站名'), ('2', 'web_key', '1Shop|购物|一元购', '网站关键字'), ('3', 'web_des', '是一种全新的购物方式,是时尚、潮流的风向标,能满足个性、年轻消费者的购物需求', '网站介绍'), ('4', 'web_path', 'http://1shopasia.com', '网站地址'), ('5', 'templates_edit', '1', '是否允许在线编辑模板'), ('6', 'templates_name', 'yungou', '当前模板方案'), ('7', 'charset', 'utf-8', '网站字符集'), ('8', 'timezone', 'Asia/Shanghai', '网站时区'), ('9', 'error', '1', '1、保存错误日志到 cache/error_log.php | 0、在页面直接显示'), ('10', 'gzip', '1', '是否Gzip压缩后输出,服务器没有gzip请不要启用'), ('11', 'lang', 'zh-cn', '网站语言包'), ('12', 'cache', '3600', '默认缓存时间'), ('13', 'web_off', '1', '网站是否开启'), ('14', 'web_off_text', '系统维护', '关闭原因'), ('15', 'tablepre', 'QCNf', null), ('16', 'index_name', 'index.php', '隐藏首页文件名'), ('17', 'expstr', '/', 'url分隔符号'), ('18', 'admindir', 'admin', '后台管理文件夹'), ('19', 'qq', '550608418', 'qq'), ('20', 'cell', '604-4959916', '联系电话'), ('21', 'web_logo', 'banner/20160707/27197635870709.jpg', 'logo'), ('22', 'web_copyright', 'Copyright © 1shopasia.com', '版权'), ('23', 'web_name_two', '1Shop', '短网站名'), ('24', 'qq_qun', '', 'QQ群'), ('25', 'goods_end_time', '30', '开奖动画秒数(单位秒)'), ('26', 'xianshi', '0', '手机端限时揭晓是否显示'), ('27', 'web_verify', '1', '验证码是否开启'), ('28', 'sendmobile', '0', '发货微信提醒'), ('29', 'autobuy', '', '正常开奖机器人最大自动购买比例');
COMMIT;

-- ----------------------------
--  Table structure for `go_czk`
-- ----------------------------
DROP TABLE IF EXISTS `go_czk`;
CREATE TABLE `go_czk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `czknum` varchar(12) NOT NULL COMMENT '充值卡号码',
  `password` varchar(12) NOT NULL COMMENT '充值卡密码',
  `mianzhi` int(11) NOT NULL COMMENT '面值',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '使用状态',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '充值类型 1一次性 2永久',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_egglotter_award`
-- ----------------------------
DROP TABLE IF EXISTS `go_egglotter_award`;
CREATE TABLE `go_egglotter_award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(11) DEFAULT NULL COMMENT '用户名字',
  `rule_id` int(11) DEFAULT NULL COMMENT '活动ID',
  `subtime` int(11) DEFAULT NULL COMMENT '中奖时间',
  `spoil_id` int(11) DEFAULT NULL COMMENT '奖品等级',
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_egglotter_rule`
-- ----------------------------
DROP TABLE IF EXISTS `go_egglotter_rule`;
CREATE TABLE `go_egglotter_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(200) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL COMMENT '活动开始时间',
  `endtime` int(11) DEFAULT NULL COMMENT '活动结束时间',
  `subtime` int(11) DEFAULT NULL COMMENT '活动编辑时间',
  `lotterytype` int(11) DEFAULT NULL COMMENT '抽奖按币分类',
  `lotterjb` int(11) DEFAULT NULL COMMENT '每一次抽奖使用的金币',
  `ruledesc` text COMMENT '规则介绍',
  `startusing` tinyint(4) DEFAULT NULL COMMENT '启用',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_egglotter_spoil`
-- ----------------------------
DROP TABLE IF EXISTS `go_egglotter_spoil`;
CREATE TABLE `go_egglotter_spoil` (
  `spoil_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) DEFAULT NULL,
  `spoil_name` text COMMENT '名称',
  `spoil_jl` int(11) DEFAULT NULL COMMENT '机率',
  `spoil_dj` int(11) DEFAULT NULL,
  `urlimg` varchar(200) DEFAULT NULL,
  `subtime` int(11) DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`spoil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_egglotter_spoil`
-- ----------------------------
BEGIN;
INSERT INTO `go_egglotter_spoil` VALUES ('1', '1', '洗衣粉', '20', '1', null, '1457761129'), ('2', '1', '游戏机', '40', '2', null, '1457761129'), ('3', '1', '手机', '40', '3', null, '1457761129');
COMMIT;

-- ----------------------------
--  Table structure for `go_fund`
-- ----------------------------
DROP TABLE IF EXISTS `go_fund`;
CREATE TABLE `go_fund` (
  `id` int(10) unsigned NOT NULL,
  `fund_off` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `fund_money` decimal(10,2) unsigned NOT NULL,
  `fund_count_money` decimal(12,2) DEFAULT NULL COMMENT '云购基金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_fund`
-- ----------------------------
BEGIN;
INSERT INTO `go_fund` VALUES ('1', '1', '1.00', '75659.00');
COMMIT;

-- ----------------------------
--  Table structure for `go_link`
-- ----------------------------
DROP TABLE IF EXISTS `go_link`;
CREATE TABLE `go_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接ID',
  `type` tinyint(1) unsigned NOT NULL COMMENT '链接类型',
  `name` char(20) NOT NULL COMMENT '名称',
  `logo` varchar(250) NOT NULL COMMENT '图片',
  `url` varchar(50) NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_member`
-- ----------------------------
DROP TABLE IF EXISTS `go_member`;
CREATE TABLE `go_member` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '用户手机',
  `password` char(32) DEFAULT NULL COMMENT '密码',
  `user_ip` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'photo/member.jpg' COMMENT '用户头像',
  `qianming` varchar(255) DEFAULT NULL COMMENT '用户签名',
  `groupid` tinyint(4) unsigned DEFAULT '1' COMMENT '用户权限组',
  `addgroup` varchar(255) DEFAULT NULL COMMENT '用户加入的圈子组1|2|3',
  `money` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '账户金额',
  `emailcode` char(21) DEFAULT '-1' COMMENT '邮箱认证码',
  `mobilecode` char(21) DEFAULT '-1' COMMENT '手机认证码',
  `othercode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '其他认证方式 1为认证通过',
  `passcode` char(21) DEFAULT '-1' COMMENT '找会密码认证码-1,1,码',
  `reg_key` varchar(100) DEFAULT NULL COMMENT '注册参数',
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `jingyan` int(10) unsigned DEFAULT '0',
  `yaoqing` int(10) unsigned DEFAULT '0' COMMENT '邀请人',
  `band` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `headimg` char(255) NOT NULL DEFAULT '' COMMENT '用户头像，快捷登陆时候的头像',
  `wxid` char(255) DEFAULT '' COMMENT '微信id',
  `typeid` int(10) unsigned DEFAULT '0' COMMENT '注册来源 0电脑端  1 手机端 2微信关注 3快捷登陆QQ 4 微信快捷',
  `auto_user` tinyint(4) DEFAULT '0',
  `totalrecharge` int(11) DEFAULT '0' COMMENT '总充值金额',
  `totalconsume` int(11) DEFAULT '0' COMMENT '总消费金额',
  `wintime` int(11) DEFAULT '0' COMMENT '中奖次数',
  `lastwintime` int(11) DEFAULT '0' COMMENT '最后中奖时间',
  `province` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `district` varchar(500) DEFAULT NULL,
  `country` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1869 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
--  Records of `go_member`
-- ----------------------------
BEGIN;
INSERT INTO `go_member` VALUES ('1865', '', 'qoyf@vip.qq.com', '', 'e10adc3949ba59abbe56e057f20f883e', '内网IP,127.0.0.1', 'touimg/20171207/19350567614265.jpg', '', '1', null, '99999090.99', '1', '-1', '0', '-1', 'qoyf@vip.qq.com', '17820', '40', '0', null, '1512613808', '', '', '0', '0', '0', '0', '0', '0', null, null, null, null), ('1866', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', null, 'photo/member.jpg', null, '1', null, '0.00', 'YTE4NjUwYW|1513265207', '-1', '0', '-1', '502700156@qq.com', '0', '0', '0', null, '1513264359', '', '', '0', '0', '0', '0', '0', '0', null, null, null, null), ('1867', 'vincentgoh', 'vincentgohxx@qq.com', '', 'e10adc3949ba59abbe56e057f20f883e', '上海市上海市,180.165.97.142', 'touimg/20180111/77024656601200.png', '', '1', '', '99996401.00', '1', '1', '0', '-1', null, '44960', '100000199', '0', null, '1513265544', '', '', '0', '0', '0', '0', '0', '0', null, null, null, null), ('1868', 'test', 'test@test.com', '', 'e10adc3949ba59abbe56e057f20f883e', ',192.228.199.127', 'photo/member.jpg', '', '1', null, '99987363.99', '1', '-1', '0', '-1', null, '1000225539', '1000000119', '0', null, '1513428102', '', '', '0', '0', '0', '0', '0', '0', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `go_member_account`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_account`;
CREATE TABLE `go_member_account` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT NULL COMMENT '充值1/消费-1',
  `pay` char(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '详情',
  `money` mediumint(8) NOT NULL DEFAULT '0' COMMENT '金额',
  `time` char(20) NOT NULL,
  KEY `uid` (`uid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员账户明细';

-- ----------------------------
--  Table structure for `go_member_addmoney_record`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_addmoney_record`;
CREATE TABLE `go_member_addmoney_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `code` char(20) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL,
  `pay_type` char(20) NOT NULL,
  `status` char(20) NOT NULL,
  `time` int(10) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `scookies` text COMMENT '购物车cookie',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_member_band`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_band`;
CREATE TABLE `go_member_band` (
  `b_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `b_uid` int(10) DEFAULT NULL COMMENT '用户ID',
  `b_type` char(10) DEFAULT NULL COMMENT '绑定登陆类型',
  `b_code` varchar(100) DEFAULT NULL COMMENT '返回数据1',
  `b_data` varchar(100) DEFAULT NULL COMMENT '返回数据2',
  `b_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `b_uid` (`b_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_member_cashout`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_cashout`;
CREATE TABLE `go_member_cashout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '开户人',
  `bankname` varchar(255) NOT NULL COMMENT '银行名称',
  `branch` varchar(255) NOT NULL COMMENT '支行',
  `money` decimal(8,0) NOT NULL DEFAULT '0' COMMENT '申请提现金额',
  `time` char(20) NOT NULL COMMENT '申请时间',
  `banknumber` varchar(50) NOT NULL COMMENT '银行帐号',
  `linkphone` varchar(100) NOT NULL COMMENT '联系电话',
  `auditstatus` tinyint(4) NOT NULL COMMENT '1审核通过',
  `procefees` decimal(8,2) NOT NULL COMMENT '手续费',
  `reviewtime` char(20) NOT NULL COMMENT '审核通过时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员账户明细';

-- ----------------------------
--  Table structure for `go_member_del`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_del`;
CREATE TABLE `go_member_del` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL COMMENT '用户名',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '用户手机',
  `password` char(32) DEFAULT NULL COMMENT '密码',
  `user_ip` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'photo/member.jpg' COMMENT '用户头像',
  `qianming` varchar(255) DEFAULT NULL COMMENT '用户签名',
  `groupid` tinyint(4) unsigned DEFAULT '1' COMMENT '用户权限组',
  `addgroup` varchar(255) DEFAULT NULL COMMENT '用户加入的圈子组1|2|3',
  `money` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '账户金额',
  `emailcode` char(21) DEFAULT '-1' COMMENT '邮箱认证码',
  `mobilecode` char(21) DEFAULT '-1' COMMENT '手机认证码',
  `othercode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '其他认证方式 1为认证通过',
  `passcode` char(21) DEFAULT '-1' COMMENT '找会密码认证码-1,1,码',
  `reg_key` varchar(100) DEFAULT NULL COMMENT '注册参数',
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `jingyan` int(10) unsigned DEFAULT '0',
  `yaoqing` int(10) unsigned DEFAULT '0' COMMENT '邀请人数',
  `band` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `headimg` char(255) NOT NULL DEFAULT '' COMMENT '用户头像，快捷登陆时候的头像',
  `wxid` char(100) DEFAULT '' COMMENT '微信id',
  `typeid` int(10) unsigned DEFAULT '0' COMMENT '注册来源 0电脑端  1 手机端 2微信关注 3快捷登陆QQ 4 微信快捷',
  `auto_user` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
--  Table structure for `go_member_dizhi`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_dizhi`;
CREATE TABLE `go_member_dizhi` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(10) NOT NULL COMMENT '用户id',
  `sheng` varchar(500) DEFAULT NULL COMMENT '省',
  `shi` varchar(500) DEFAULT NULL COMMENT '市',
  `xian` varchar(500) DEFAULT NULL COMMENT '县',
  `jiedao` varchar(2000) DEFAULT NULL COMMENT '街道地址',
  `youbian` mediumint(8) DEFAULT NULL COMMENT '邮编',
  `shouhuoren` varchar(255) DEFAULT NULL COMMENT '收货人',
  `mobile` char(20) DEFAULT NULL COMMENT '手机',
  `tell` varchar(20) DEFAULT NULL COMMENT '座机号',
  `default` char(1) DEFAULT 'N' COMMENT '是否默认',
  `time` int(10) unsigned NOT NULL,
  `qq` char(20) NOT NULL DEFAULT '' COMMENT 'QQ 号码',
  `shifoufahuo` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发货！',
  `country` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员地址表';

-- ----------------------------
--  Table structure for `go_member_go_record`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_go_record`;
CREATE TABLE `go_member_go_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(20) DEFAULT NULL COMMENT '订单号',
  `code_tmp` tinyint(3) unsigned DEFAULT NULL COMMENT '相同订单',
  `username` varchar(30) NOT NULL,
  `uphoto` varchar(255) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT '会员id',
  `shopid` int(6) unsigned NOT NULL COMMENT '商品id',
  `shopname` varchar(255) NOT NULL COMMENT '商品名',
  `shopqishu` smallint(6) NOT NULL DEFAULT '0' COMMENT '期数',
  `gonumber` smallint(5) unsigned DEFAULT NULL COMMENT '购买次数',
  `goucode` longtext NOT NULL COMMENT '云购码',
  `moneycount` decimal(10,2) NOT NULL,
  `huode` char(50) NOT NULL DEFAULT '0' COMMENT '中奖码',
  `pay_type` char(10) DEFAULT NULL COMMENT '付款方式',
  `ip` varchar(255) DEFAULT NULL,
  `status` char(30) DEFAULT NULL COMMENT '订单状态',
  `time` char(21) NOT NULL COMMENT '购买时间',
  `company` char(18) NOT NULL COMMENT '快递单位',
  `company_code` char(20) NOT NULL COMMENT '快递单号',
  `company_money` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `shopid` (`shopid`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=9620 DEFAULT CHARSET=utf8 COMMENT='云购记录表';

-- ----------------------------
--  Table structure for `go_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_group`;
CREATE TABLE `go_member_group` (
  `groupid` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL COMMENT '会员组名',
  `jingyan_start` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '需要的经验值',
  `jingyan_end` int(10) NOT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` char(1) NOT NULL DEFAULT 'N' COMMENT '是否是系统组',
  PRIMARY KEY (`groupid`),
  KEY `jingyan` (`jingyan_start`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='会员权限组';

-- ----------------------------
--  Records of `go_member_group`
-- ----------------------------
BEGIN;
INSERT INTO `go_member_group` VALUES ('1', '云购新手', '0', '500', null, 'N'), ('2', '云购小将', '501', '1000', null, 'N'), ('3', '云购中将', '1001', '3000', null, 'N'), ('4', '云购上将', '3001', '6000', null, 'N'), ('5', '云购大将', '6001', '20000', null, 'N'), ('6', '云购将军', '20001', '40000', null, 'N');
COMMIT;

-- ----------------------------
--  Table structure for `go_member_message`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_message`;
CREATE TABLE `go_member_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) DEFAULT '0' COMMENT '消息来源,0系统,1私信',
  `sendid` int(10) unsigned DEFAULT '0' COMMENT '发送人ID',
  `sendname` char(20) DEFAULT NULL COMMENT '发送人名',
  `content` varchar(255) DEFAULT NULL COMMENT '发送内容',
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员消息表';

-- ----------------------------
--  Table structure for `go_member_recodes`
-- ----------------------------
DROP TABLE IF EXISTS `go_member_recodes`;
CREATE TABLE `go_member_recodes` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '收取1//充值-2/提现-3',
  `content` varchar(255) NOT NULL COMMENT '详情',
  `shopid` int(11) DEFAULT NULL COMMENT '商品id',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `time` char(20) NOT NULL,
  `ygmoney` decimal(8,2) NOT NULL COMMENT '云购金额',
  `cashoutid` int(11) DEFAULT NULL COMMENT '申请提现记录表id',
  KEY `uid` (`uid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员账户明细';

-- ----------------------------
--  Table structure for `go_model`
-- ----------------------------
DROP TABLE IF EXISTS `go_model`;
CREATE TABLE `go_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL,
  `table` char(20) NOT NULL,
  PRIMARY KEY (`modelid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='模型表';

-- ----------------------------
--  Records of `go_model`
-- ----------------------------
BEGIN;
INSERT INTO `go_model` VALUES ('1', '商品模型', 'shoplist'), ('2', '文章模型', 'article');
COMMIT;

-- ----------------------------
--  Table structure for `go_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `go_navigation`;
CREATE TABLE `go_navigation` (
  `cid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT 'Y' COMMENT '显示/隐藏',
  `order` smallint(6) unsigned DEFAULT '1',
  `nameen` varchar(255) DEFAULT NULL,
  `urlen` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `status` (`status`),
  KEY `order` (`order`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_navigation`
-- ----------------------------
BEGIN;
INSERT INTO `go_navigation` VALUES ('1', '0', '所有商品', 'index', '/goods_list', 'Y', '5', 'All Products', '/goods_list'), ('2', '0', '新手指南', 'foot', '/single/newbie', 'N', '2', 'Beginner\'s Guide', '/single/newbie'), ('3', '0', '夺宝圈', 'foot', '/group', 'Y', '2', 'moment', '/group'), ('4', '0', '了解1Shop', 'foot', '/help/1', 'Y', '1', 'Understand 1Shop', '/help/1'), ('7', '0', '友情链接', 'foot', '/link', 'Y', '1', 'link', '/link'), ('10', '0', '晒单分享', 'index', '/go/shaidan/', 'Y', '1', 'Feedback &amp; Share', '/go/shaidan/'), ('13', '0', '邀请好友', 'index', '/single/pleasereg', 'Y', '1', 'Invite Friends', '/single/pleasereg'), ('15', '0', '幸运抽奖', 'index', '/api/plugin/get/egglotter', 'N', '1', 'xingyunchoujiang', '/api/plugin/get/egglotter'), ('16', '0', '最新揭晓', 'index', '/goods_lottery', 'Y', '4', 'Latest Announcement', '/goods_lottery');
COMMIT;

-- ----------------------------
--  Table structure for `go_pay`
-- ----------------------------
DROP TABLE IF EXISTS `go_pay`;
CREATE TABLE `go_pay` (
  `pay_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pay_name` char(20) NOT NULL,
  `pay_class` char(20) NOT NULL,
  `pay_type` tinyint(3) NOT NULL,
  `pay_thumb` varchar(255) DEFAULT NULL,
  `pay_des` text,
  `pay_start` tinyint(4) NOT NULL,
  `pay_key` text,
  `pay_mobile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_pay`
-- ----------------------------
BEGIN;
INSERT INTO `go_pay` VALUES ('12', 'MolPay', 'molpay', '1', 'photo/molpay-logo.png', 'MolPay', '1', 'a:3:{s:2:\"id\";a:2:{s:4:\"name\";s:9:\"商户号\";s:3:\"val\";s:4:\"1111\";}s:3:\"key\";a:2:{s:4:\"name\";s:6:\"密匙\";s:3:\"val\";s:18:\"djusoaiudjoasdjaso\";}s:8:\"currency\";a:2:{s:4:\"name\";s:6:\"币制\";s:3:\"val\";s:3:\"CNY\";}}', '1');
COMMIT;

-- ----------------------------
--  Table structure for `go_position`
-- ----------------------------
DROP TABLE IF EXISTS `go_position`;
CREATE TABLE `go_position` (
  `pos_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pos_model` tinyint(3) unsigned NOT NULL,
  `pos_name` varchar(30) NOT NULL,
  `pos_num` tinyint(3) unsigned NOT NULL,
  `pos_maxnum` tinyint(3) unsigned NOT NULL,
  `pos_this_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pos_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pos_id`),
  KEY `pos_id` (`pos_id`),
  KEY `pos_model` (`pos_model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `go_position_data`;
CREATE TABLE `go_position_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `con_id` int(10) unsigned NOT NULL,
  `mod_id` tinyint(3) unsigned NOT NULL,
  `mod_name` char(20) NOT NULL,
  `pos_id` int(10) unsigned NOT NULL,
  `pos_data` mediumtext NOT NULL,
  `pos_order` int(10) unsigned NOT NULL DEFAULT '1',
  `pos_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_qiandao`
-- ----------------------------
DROP TABLE IF EXISTS `go_qiandao`;
CREATE TABLE `go_qiandao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id ֵ',
  `lianxu` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '����ǩ������',
  `sum` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '�ܼ�ǩ������',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ǩ��ʱ��',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�û�id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
--  Table structure for `go_qqset`
-- ----------------------------
DROP TABLE IF EXISTS `go_qqset`;
CREATE TABLE `go_qqset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qq` text CHARACTER SET utf8,
  `name` text CHARACTER SET utf8,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `qqurl` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `full` char(10) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '???????',
  `province` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `county` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `subtime` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `go_qqset`
-- ----------------------------
BEGIN;
INSERT INTO `go_qqset` VALUES ('14', '890890', '90???', '???', 'http://qun.qq.com/', '??', '??', '???', '?????', '1440475051'), ('15', '89890890', '80????', '???', 'http://qun.qq.com/', '??', '??', '???', '?????', '1440475061'), ('16', '8908089', '70?QQ???', '???', 'http://qun.qq.com/', '??', '??', '???', '?????', '1440475055');
COMMIT;

-- ----------------------------
--  Table structure for `go_quanzi`
-- ----------------------------
DROP TABLE IF EXISTS `go_quanzi`;
CREATE TABLE `go_quanzi` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` char(15) NOT NULL COMMENT '标题',
  `img` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `chengyuan` mediumint(8) unsigned DEFAULT '0' COMMENT '成员数',
  `tiezi` mediumint(8) unsigned DEFAULT '0' COMMENT '帖子数',
  `guanli` mediumint(8) unsigned NOT NULL COMMENT '管理员',
  `jinhua` smallint(5) unsigned DEFAULT NULL COMMENT '精华帖',
  `jianjie` varchar(255) DEFAULT '暂无介绍' COMMENT '简介',
  `gongao` varchar(255) DEFAULT '暂无' COMMENT '公告',
  `jiaru` char(1) DEFAULT 'Y' COMMENT '申请加入',
  `glfatie` char(1) DEFAULT 'N' COMMENT '发帖权限',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_quanzi_hueifu`
-- ----------------------------
DROP TABLE IF EXISTS `go_quanzi_hueifu`;
CREATE TABLE `go_quanzi_hueifu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tzid` int(11) DEFAULT NULL COMMENT '帖子ID匹配',
  `hueifu` text COMMENT '回复内容',
  `hueiyuan` varchar(255) DEFAULT NULL COMMENT '会员',
  `hftime` int(11) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_quanzi_tiezi`
-- ----------------------------
DROP TABLE IF EXISTS `go_quanzi_tiezi`;
CREATE TABLE `go_quanzi_tiezi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `qzid` int(10) unsigned DEFAULT NULL COMMENT '圈子ID匹配',
  `hueiyuan` varchar(255) DEFAULT NULL COMMENT '会员信息',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `neirong` text COMMENT '内容',
  `hueifu` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '回复',
  `dianji` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `zhiding` char(1) DEFAULT 'N' COMMENT '置顶',
  `jinghua` char(1) DEFAULT 'N' COMMENT '精华',
  `zuihou` varchar(255) DEFAULT NULL COMMENT '最后回复',
  `time` int(10) unsigned DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_recom`
-- ----------------------------
DROP TABLE IF EXISTS `go_recom`;
CREATE TABLE `go_recom` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `img` varchar(50) DEFAULT NULL COMMENT '推荐位图片',
  `title` varchar(30) DEFAULT NULL COMMENT '推荐位标题',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_send`
-- ----------------------------
DROP TABLE IF EXISTS `go_send`;
CREATE TABLE `go_send` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `gid` int(11) unsigned DEFAULT '0' COMMENT '商品ID',
  `username` char(50) CHARACTER SET gbk DEFAULT '' COMMENT '用户名',
  `shoptitle` char(120) CHARACTER SET gbk DEFAULT '' COMMENT '商品名称',
  `send_type` tinyint(4) unsigned DEFAULT '0' COMMENT '发送类型',
  `send_time` int(10) unsigned DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='中奖信息发送列表';

-- ----------------------------
--  Table structure for `go_shaidan`
-- ----------------------------
DROP TABLE IF EXISTS `go_shaidan`;
CREATE TABLE `go_shaidan` (
  `sd_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '晒单id',
  `sd_userid` int(10) unsigned DEFAULT NULL COMMENT '用户ID',
  `sd_shopid` int(10) unsigned DEFAULT NULL COMMENT '商品ID',
  `sd_qishu` int(10) DEFAULT NULL COMMENT '商品期数',
  `sd_ip` varchar(255) DEFAULT NULL,
  `sd_title` varchar(255) DEFAULT '' COMMENT '晒单标题',
  `sd_thumbs` varchar(255) DEFAULT '' COMMENT '缩略图',
  `sd_content` text COMMENT '晒单内容',
  `sd_photolist` text COMMENT '晒单图片',
  `sd_zhan` int(10) unsigned DEFAULT '0' COMMENT '点赞',
  `sd_ping` int(10) unsigned DEFAULT '0' COMMENT '评论',
  `sd_time` int(10) unsigned DEFAULT NULL COMMENT '晒单时间',
  PRIMARY KEY (`sd_id`),
  KEY `sd_userid` (`sd_userid`),
  KEY `sd_shopid` (`sd_shopid`),
  KEY `sd_zhan` (`sd_zhan`),
  KEY `sd_ping` (`sd_ping`),
  KEY `sd_time` (`sd_time`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='晒单';

-- ----------------------------
--  Table structure for `go_shaidan_hueifu`
-- ----------------------------
DROP TABLE IF EXISTS `go_shaidan_hueifu`;
CREATE TABLE `go_shaidan_hueifu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sdhf_id` int(11) NOT NULL COMMENT '晒单ID',
  `sdhf_userid` int(11) DEFAULT NULL COMMENT '晒单回复会员ID',
  `sdhf_content` text COMMENT '晒单回复内容',
  `sdhf_time` int(11) DEFAULT NULL,
  `sdhf_username` char(20) DEFAULT NULL,
  `sdhf_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_share`
-- ----------------------------
DROP TABLE IF EXISTS `go_share`;
CREATE TABLE `go_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_shopcodes_1`
-- ----------------------------
DROP TABLE IF EXISTS `go_shopcodes_1`;
CREATE TABLE `go_shopcodes_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` int(10) unsigned NOT NULL,
  `s_cid` smallint(5) unsigned NOT NULL,
  `s_len` smallint(5) DEFAULT NULL,
  `s_codes` text,
  `s_codes_tmp` text,
  PRIMARY KEY (`id`),
  KEY `s_id` (`s_id`),
  KEY `s_cid` (`s_cid`),
  KEY `s_len` (`s_len`)
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_shopcodes_1`
-- ----------------------------
BEGIN;
INSERT INTO `go_shopcodes_1` VALUES ('684', '567', '1', '168', 'a:168:{i:0;i:10000095;i:1;i:10000087;i:2;i:10000079;i:3;i:10000133;i:4;i:10000046;i:5;i:10000139;i:6;i:10000141;i:7;i:10000121;i:8;i:10000047;i:9;i:10000005;i:10;i:10000096;i:11;i:10000127;i:12;i:10000099;i:13;i:10000050;i:14;i:10000074;i:15;i:10000040;i:16;i:10000130;i:17;i:10000015;i:18;i:10000109;i:19;i:10000083;i:20;i:10000098;i:21;i:10000157;i:22;i:10000100;i:23;i:10000161;i:24;i:10000112;i:25;i:10000049;i:26;i:10000066;i:27;i:10000149;i:28;i:10000022;i:29;i:10000075;i:30;i:10000013;i:31;i:10000028;i:32;i:10000135;i:33;i:10000034;i:34;i:10000120;i:35;i:10000038;i:36;i:10000020;i:37;i:10000152;i:38;i:10000115;i:39;i:10000117;i:40;i:10000158;i:41;i:10000154;i:42;i:10000054;i:43;i:10000042;i:44;i:10000146;i:45;i:10000084;i:46;i:10000032;i:47;i:10000108;i:48;i:10000081;i:49;i:10000061;i:50;i:10000144;i:51;i:10000153;i:52;i:10000039;i:53;i:10000072;i:54;i:10000107;i:55;i:10000051;i:56;i:10000010;i:57;i:10000151;i:58;i:10000056;i:59;i:10000053;i:60;i:10000119;i:61;i:10000026;i:62;i:10000164;i:63;i:10000001;i:64;i:10000167;i:65;i:10000132;i:66;i:10000126;i:67;i:10000019;i:68;i:10000078;i:69;i:10000009;i:70;i:10000111;i:71;i:10000068;i:72;i:10000063;i:73;i:10000142;i:74;i:10000131;i:75;i:10000093;i:76;i:10000043;i:77;i:10000148;i:78;i:10000089;i:79;i:10000036;i:80;i:10000104;i:81;i:10000150;i:82;i:10000077;i:83;i:10000091;i:84;i:10000162;i:85;i:10000118;i:86;i:10000085;i:87;i:10000025;i:88;i:10000045;i:89;i:10000048;i:90;i:10000165;i:91;i:10000163;i:92;i:10000116;i:93;i:10000004;i:94;i:10000138;i:95;i:10000018;i:96;i:10000137;i:97;i:10000071;i:98;i:10000102;i:99;i:10000082;i:100;i:10000110;i:101;i:10000044;i:102;i:10000069;i:103;i:10000024;i:104;i:10000090;i:105;i:10000065;i:106;i:10000155;i:107;i:10000012;i:108;i:10000041;i:109;i:10000027;i:110;i:10000129;i:111;i:10000147;i:112;i:10000017;i:113;i:10000037;i:114;i:10000140;i:115;i:10000105;i:116;i:10000011;i:117;i:10000052;i:118;i:10000064;i:119;i:10000062;i:120;i:10000070;i:121;i:10000125;i:122;i:10000101;i:123;i:10000097;i:124;i:10000088;i:125;i:10000057;i:126;i:10000094;i:127;i:10000160;i:128;i:10000159;i:129;i:10000003;i:130;i:10000021;i:131;i:10000006;i:132;i:10000076;i:133;i:10000008;i:134;i:10000023;i:135;i:10000103;i:136;i:10000145;i:137;i:10000113;i:138;i:10000080;i:139;i:10000124;i:140;i:10000014;i:141;i:10000031;i:142;i:10000092;i:143;i:10000035;i:144;i:10000033;i:145;i:10000168;i:146;i:10000055;i:147;i:10000086;i:148;i:10000128;i:149;i:10000123;i:150;i:10000106;i:151;i:10000122;i:152;i:10000002;i:153;i:10000058;i:154;i:10000007;i:155;i:10000029;i:156;i:10000156;i:157;i:10000114;i:158;i:10000166;i:159;i:10000067;i:160;i:10000073;i:161;i:10000016;i:162;i:10000143;i:163;i:10000134;i:164;i:10000136;i:165;i:10000059;i:166;i:10000030;i:167;i:10000060;}', 'a:168:{i:0;i:10000095;i:1;i:10000087;i:2;i:10000079;i:3;i:10000133;i:4;i:10000046;i:5;i:10000139;i:6;i:10000141;i:7;i:10000121;i:8;i:10000047;i:9;i:10000005;i:10;i:10000096;i:11;i:10000127;i:12;i:10000099;i:13;i:10000050;i:14;i:10000074;i:15;i:10000040;i:16;i:10000130;i:17;i:10000015;i:18;i:10000109;i:19;i:10000083;i:20;i:10000098;i:21;i:10000157;i:22;i:10000100;i:23;i:10000161;i:24;i:10000112;i:25;i:10000049;i:26;i:10000066;i:27;i:10000149;i:28;i:10000022;i:29;i:10000075;i:30;i:10000013;i:31;i:10000028;i:32;i:10000135;i:33;i:10000034;i:34;i:10000120;i:35;i:10000038;i:36;i:10000020;i:37;i:10000152;i:38;i:10000115;i:39;i:10000117;i:40;i:10000158;i:41;i:10000154;i:42;i:10000054;i:43;i:10000042;i:44;i:10000146;i:45;i:10000084;i:46;i:10000032;i:47;i:10000108;i:48;i:10000081;i:49;i:10000061;i:50;i:10000144;i:51;i:10000153;i:52;i:10000039;i:53;i:10000072;i:54;i:10000107;i:55;i:10000051;i:56;i:10000010;i:57;i:10000151;i:58;i:10000056;i:59;i:10000053;i:60;i:10000119;i:61;i:10000026;i:62;i:10000164;i:63;i:10000001;i:64;i:10000167;i:65;i:10000132;i:66;i:10000126;i:67;i:10000019;i:68;i:10000078;i:69;i:10000009;i:70;i:10000111;i:71;i:10000068;i:72;i:10000063;i:73;i:10000142;i:74;i:10000131;i:75;i:10000093;i:76;i:10000043;i:77;i:10000148;i:78;i:10000089;i:79;i:10000036;i:80;i:10000104;i:81;i:10000150;i:82;i:10000077;i:83;i:10000091;i:84;i:10000162;i:85;i:10000118;i:86;i:10000085;i:87;i:10000025;i:88;i:10000045;i:89;i:10000048;i:90;i:10000165;i:91;i:10000163;i:92;i:10000116;i:93;i:10000004;i:94;i:10000138;i:95;i:10000018;i:96;i:10000137;i:97;i:10000071;i:98;i:10000102;i:99;i:10000082;i:100;i:10000110;i:101;i:10000044;i:102;i:10000069;i:103;i:10000024;i:104;i:10000090;i:105;i:10000065;i:106;i:10000155;i:107;i:10000012;i:108;i:10000041;i:109;i:10000027;i:110;i:10000129;i:111;i:10000147;i:112;i:10000017;i:113;i:10000037;i:114;i:10000140;i:115;i:10000105;i:116;i:10000011;i:117;i:10000052;i:118;i:10000064;i:119;i:10000062;i:120;i:10000070;i:121;i:10000125;i:122;i:10000101;i:123;i:10000097;i:124;i:10000088;i:125;i:10000057;i:126;i:10000094;i:127;i:10000160;i:128;i:10000159;i:129;i:10000003;i:130;i:10000021;i:131;i:10000006;i:132;i:10000076;i:133;i:10000008;i:134;i:10000023;i:135;i:10000103;i:136;i:10000145;i:137;i:10000113;i:138;i:10000080;i:139;i:10000124;i:140;i:10000014;i:141;i:10000031;i:142;i:10000092;i:143;i:10000035;i:144;i:10000033;i:145;i:10000168;i:146;i:10000055;i:147;i:10000086;i:148;i:10000128;i:149;i:10000123;i:150;i:10000106;i:151;i:10000122;i:152;i:10000002;i:153;i:10000058;i:154;i:10000007;i:155;i:10000029;i:156;i:10000156;i:157;i:10000114;i:158;i:10000166;i:159;i:10000067;i:160;i:10000073;i:161;i:10000016;i:162;i:10000143;i:163;i:10000134;i:164;i:10000136;i:165;i:10000059;i:166;i:10000030;i:167;i:10000060;}'), ('685', '568', '1', '168', 'a:168:{i:0;i:10000086;i:1;i:10000059;i:2;i:10000122;i:3;i:10000031;i:4;i:10000041;i:5;i:10000112;i:6;i:10000036;i:7;i:10000142;i:8;i:10000005;i:9;i:10000148;i:10;i:10000126;i:11;i:10000032;i:12;i:10000153;i:13;i:10000068;i:14;i:10000078;i:15;i:10000033;i:16;i:10000052;i:17;i:10000100;i:18;i:10000099;i:19;i:10000057;i:20;i:10000065;i:21;i:10000146;i:22;i:10000125;i:23;i:10000007;i:24;i:10000138;i:25;i:10000053;i:26;i:10000128;i:27;i:10000155;i:28;i:10000080;i:29;i:10000130;i:30;i:10000064;i:31;i:10000084;i:32;i:10000002;i:33;i:10000117;i:34;i:10000079;i:35;i:10000048;i:36;i:10000141;i:37;i:10000088;i:38;i:10000140;i:39;i:10000092;i:40;i:10000151;i:41;i:10000090;i:42;i:10000104;i:43;i:10000149;i:44;i:10000017;i:45;i:10000042;i:46;i:10000071;i:47;i:10000111;i:48;i:10000161;i:49;i:10000154;i:50;i:10000058;i:51;i:10000019;i:52;i:10000051;i:53;i:10000097;i:54;i:10000049;i:55;i:10000087;i:56;i:10000165;i:57;i:10000054;i:58;i:10000102;i:59;i:10000025;i:60;i:10000132;i:61;i:10000076;i:62;i:10000023;i:63;i:10000118;i:64;i:10000013;i:65;i:10000167;i:66;i:10000029;i:67;i:10000166;i:68;i:10000067;i:69;i:10000107;i:70;i:10000014;i:71;i:10000043;i:72;i:10000156;i:73;i:10000021;i:74;i:10000016;i:75;i:10000114;i:76;i:10000037;i:77;i:10000098;i:78;i:10000136;i:79;i:10000082;i:80;i:10000124;i:81;i:10000006;i:82;i:10000103;i:83;i:10000026;i:84;i:10000035;i:85;i:10000083;i:86;i:10000095;i:87;i:10000121;i:88;i:10000108;i:89;i:10000110;i:90;i:10000129;i:91;i:10000096;i:92;i:10000162;i:93;i:10000168;i:94;i:10000157;i:95;i:10000150;i:96;i:10000045;i:97;i:10000030;i:98;i:10000105;i:99;i:10000127;i:100;i:10000028;i:101;i:10000094;i:102;i:10000120;i:103;i:10000008;i:104;i:10000085;i:105;i:10000089;i:106;i:10000145;i:107;i:10000164;i:108;i:10000047;i:109;i:10000070;i:110;i:10000066;i:111;i:10000073;i:112;i:10000075;i:113;i:10000152;i:114;i:10000044;i:115;i:10000046;i:116;i:10000055;i:117;i:10000018;i:118;i:10000116;i:119;i:10000040;i:120;i:10000001;i:121;i:10000012;i:122;i:10000143;i:123;i:10000077;i:124;i:10000061;i:125;i:10000069;i:126;i:10000144;i:127;i:10000011;i:128;i:10000004;i:129;i:10000123;i:130;i:10000131;i:131;i:10000027;i:132;i:10000159;i:133;i:10000074;i:134;i:10000160;i:135;i:10000137;i:136;i:10000158;i:137;i:10000147;i:138;i:10000113;i:139;i:10000109;i:140;i:10000139;i:141;i:10000010;i:142;i:10000039;i:143;i:10000038;i:144;i:10000009;i:145;i:10000163;i:146;i:10000062;i:147;i:10000020;i:148;i:10000022;i:149;i:10000133;i:150;i:10000003;i:151;i:10000060;i:152;i:10000093;i:153;i:10000119;i:154;i:10000050;i:155;i:10000063;i:156;i:10000081;i:157;i:10000056;i:158;i:10000015;i:159;i:10000134;i:160;i:10000135;i:161;i:10000072;i:162;i:10000034;i:163;i:10000115;i:164;i:10000024;i:165;i:10000091;i:166;i:10000101;i:167;i:10000106;}', 'a:168:{i:0;i:10000086;i:1;i:10000059;i:2;i:10000122;i:3;i:10000031;i:4;i:10000041;i:5;i:10000112;i:6;i:10000036;i:7;i:10000142;i:8;i:10000005;i:9;i:10000148;i:10;i:10000126;i:11;i:10000032;i:12;i:10000153;i:13;i:10000068;i:14;i:10000078;i:15;i:10000033;i:16;i:10000052;i:17;i:10000100;i:18;i:10000099;i:19;i:10000057;i:20;i:10000065;i:21;i:10000146;i:22;i:10000125;i:23;i:10000007;i:24;i:10000138;i:25;i:10000053;i:26;i:10000128;i:27;i:10000155;i:28;i:10000080;i:29;i:10000130;i:30;i:10000064;i:31;i:10000084;i:32;i:10000002;i:33;i:10000117;i:34;i:10000079;i:35;i:10000048;i:36;i:10000141;i:37;i:10000088;i:38;i:10000140;i:39;i:10000092;i:40;i:10000151;i:41;i:10000090;i:42;i:10000104;i:43;i:10000149;i:44;i:10000017;i:45;i:10000042;i:46;i:10000071;i:47;i:10000111;i:48;i:10000161;i:49;i:10000154;i:50;i:10000058;i:51;i:10000019;i:52;i:10000051;i:53;i:10000097;i:54;i:10000049;i:55;i:10000087;i:56;i:10000165;i:57;i:10000054;i:58;i:10000102;i:59;i:10000025;i:60;i:10000132;i:61;i:10000076;i:62;i:10000023;i:63;i:10000118;i:64;i:10000013;i:65;i:10000167;i:66;i:10000029;i:67;i:10000166;i:68;i:10000067;i:69;i:10000107;i:70;i:10000014;i:71;i:10000043;i:72;i:10000156;i:73;i:10000021;i:74;i:10000016;i:75;i:10000114;i:76;i:10000037;i:77;i:10000098;i:78;i:10000136;i:79;i:10000082;i:80;i:10000124;i:81;i:10000006;i:82;i:10000103;i:83;i:10000026;i:84;i:10000035;i:85;i:10000083;i:86;i:10000095;i:87;i:10000121;i:88;i:10000108;i:89;i:10000110;i:90;i:10000129;i:91;i:10000096;i:92;i:10000162;i:93;i:10000168;i:94;i:10000157;i:95;i:10000150;i:96;i:10000045;i:97;i:10000030;i:98;i:10000105;i:99;i:10000127;i:100;i:10000028;i:101;i:10000094;i:102;i:10000120;i:103;i:10000008;i:104;i:10000085;i:105;i:10000089;i:106;i:10000145;i:107;i:10000164;i:108;i:10000047;i:109;i:10000070;i:110;i:10000066;i:111;i:10000073;i:112;i:10000075;i:113;i:10000152;i:114;i:10000044;i:115;i:10000046;i:116;i:10000055;i:117;i:10000018;i:118;i:10000116;i:119;i:10000040;i:120;i:10000001;i:121;i:10000012;i:122;i:10000143;i:123;i:10000077;i:124;i:10000061;i:125;i:10000069;i:126;i:10000144;i:127;i:10000011;i:128;i:10000004;i:129;i:10000123;i:130;i:10000131;i:131;i:10000027;i:132;i:10000159;i:133;i:10000074;i:134;i:10000160;i:135;i:10000137;i:136;i:10000158;i:137;i:10000147;i:138;i:10000113;i:139;i:10000109;i:140;i:10000139;i:141;i:10000010;i:142;i:10000039;i:143;i:10000038;i:144;i:10000009;i:145;i:10000163;i:146;i:10000062;i:147;i:10000020;i:148;i:10000022;i:149;i:10000133;i:150;i:10000003;i:151;i:10000060;i:152;i:10000093;i:153;i:10000119;i:154;i:10000050;i:155;i:10000063;i:156;i:10000081;i:157;i:10000056;i:158;i:10000015;i:159;i:10000134;i:160;i:10000135;i:161;i:10000072;i:162;i:10000034;i:163;i:10000115;i:164;i:10000024;i:165;i:10000091;i:166;i:10000101;i:167;i:10000106;}'), ('686', '569', '1', '168', 'a:168:{i:0;i:10000045;i:1;i:10000134;i:2;i:10000053;i:3;i:10000098;i:4;i:10000160;i:5;i:10000136;i:6;i:10000167;i:7;i:10000148;i:8;i:10000113;i:9;i:10000118;i:10;i:10000100;i:11;i:10000009;i:12;i:10000107;i:13;i:10000037;i:14;i:10000078;i:15;i:10000034;i:16;i:10000080;i:17;i:10000019;i:18;i:10000151;i:19;i:10000031;i:20;i:10000036;i:21;i:10000028;i:22;i:10000157;i:23;i:10000168;i:24;i:10000104;i:25;i:10000146;i:26;i:10000057;i:27;i:10000041;i:28;i:10000069;i:29;i:10000064;i:30;i:10000161;i:31;i:10000014;i:32;i:10000046;i:33;i:10000071;i:34;i:10000018;i:35;i:10000162;i:36;i:10000035;i:37;i:10000021;i:38;i:10000129;i:39;i:10000070;i:40;i:10000005;i:41;i:10000152;i:42;i:10000032;i:43;i:10000056;i:44;i:10000017;i:45;i:10000142;i:46;i:10000155;i:47;i:10000055;i:48;i:10000130;i:49;i:10000096;i:50;i:10000052;i:51;i:10000012;i:52;i:10000156;i:53;i:10000137;i:54;i:10000128;i:55;i:10000153;i:56;i:10000006;i:57;i:10000067;i:58;i:10000086;i:59;i:10000114;i:60;i:10000105;i:61;i:10000132;i:62;i:10000059;i:63;i:10000058;i:64;i:10000011;i:65;i:10000065;i:66;i:10000060;i:67;i:10000099;i:68;i:10000030;i:69;i:10000077;i:70;i:10000102;i:71;i:10000158;i:72;i:10000015;i:73;i:10000126;i:74;i:10000127;i:75;i:10000044;i:76;i:10000091;i:77;i:10000094;i:78;i:10000047;i:79;i:10000085;i:80;i:10000164;i:81;i:10000143;i:82;i:10000159;i:83;i:10000101;i:84;i:10000076;i:85;i:10000026;i:86;i:10000133;i:87;i:10000062;i:88;i:10000097;i:89;i:10000073;i:90;i:10000093;i:91;i:10000120;i:92;i:10000043;i:93;i:10000090;i:94;i:10000002;i:95;i:10000003;i:96;i:10000124;i:97;i:10000027;i:98;i:10000010;i:99;i:10000068;i:100;i:10000121;i:101;i:10000004;i:102;i:10000039;i:103;i:10000108;i:104;i:10000050;i:105;i:10000048;i:106;i:10000149;i:107;i:10000066;i:108;i:10000072;i:109;i:10000038;i:110;i:10000049;i:111;i:10000135;i:112;i:10000131;i:113;i:10000024;i:114;i:10000145;i:115;i:10000144;i:116;i:10000082;i:117;i:10000007;i:118;i:10000029;i:119;i:10000084;i:120;i:10000042;i:121;i:10000063;i:122;i:10000150;i:123;i:10000054;i:124;i:10000051;i:125;i:10000095;i:126;i:10000119;i:127;i:10000112;i:128;i:10000111;i:129;i:10000008;i:130;i:10000040;i:131;i:10000103;i:132;i:10000075;i:133;i:10000125;i:134;i:10000088;i:135;i:10000117;i:136;i:10000109;i:137;i:10000089;i:138;i:10000025;i:139;i:10000123;i:140;i:10000147;i:141;i:10000033;i:142;i:10000020;i:143;i:10000163;i:144;i:10000074;i:145;i:10000087;i:146;i:10000141;i:147;i:10000166;i:148;i:10000106;i:149;i:10000110;i:150;i:10000122;i:151;i:10000139;i:152;i:10000016;i:153;i:10000022;i:154;i:10000079;i:155;i:10000083;i:156;i:10000140;i:157;i:10000138;i:158;i:10000092;i:159;i:10000013;i:160;i:10000081;i:161;i:10000061;i:162;i:10000165;i:163;i:10000116;i:164;i:10000023;i:165;i:10000001;i:166;i:10000115;i:167;i:10000154;}', 'a:168:{i:0;i:10000045;i:1;i:10000134;i:2;i:10000053;i:3;i:10000098;i:4;i:10000160;i:5;i:10000136;i:6;i:10000167;i:7;i:10000148;i:8;i:10000113;i:9;i:10000118;i:10;i:10000100;i:11;i:10000009;i:12;i:10000107;i:13;i:10000037;i:14;i:10000078;i:15;i:10000034;i:16;i:10000080;i:17;i:10000019;i:18;i:10000151;i:19;i:10000031;i:20;i:10000036;i:21;i:10000028;i:22;i:10000157;i:23;i:10000168;i:24;i:10000104;i:25;i:10000146;i:26;i:10000057;i:27;i:10000041;i:28;i:10000069;i:29;i:10000064;i:30;i:10000161;i:31;i:10000014;i:32;i:10000046;i:33;i:10000071;i:34;i:10000018;i:35;i:10000162;i:36;i:10000035;i:37;i:10000021;i:38;i:10000129;i:39;i:10000070;i:40;i:10000005;i:41;i:10000152;i:42;i:10000032;i:43;i:10000056;i:44;i:10000017;i:45;i:10000142;i:46;i:10000155;i:47;i:10000055;i:48;i:10000130;i:49;i:10000096;i:50;i:10000052;i:51;i:10000012;i:52;i:10000156;i:53;i:10000137;i:54;i:10000128;i:55;i:10000153;i:56;i:10000006;i:57;i:10000067;i:58;i:10000086;i:59;i:10000114;i:60;i:10000105;i:61;i:10000132;i:62;i:10000059;i:63;i:10000058;i:64;i:10000011;i:65;i:10000065;i:66;i:10000060;i:67;i:10000099;i:68;i:10000030;i:69;i:10000077;i:70;i:10000102;i:71;i:10000158;i:72;i:10000015;i:73;i:10000126;i:74;i:10000127;i:75;i:10000044;i:76;i:10000091;i:77;i:10000094;i:78;i:10000047;i:79;i:10000085;i:80;i:10000164;i:81;i:10000143;i:82;i:10000159;i:83;i:10000101;i:84;i:10000076;i:85;i:10000026;i:86;i:10000133;i:87;i:10000062;i:88;i:10000097;i:89;i:10000073;i:90;i:10000093;i:91;i:10000120;i:92;i:10000043;i:93;i:10000090;i:94;i:10000002;i:95;i:10000003;i:96;i:10000124;i:97;i:10000027;i:98;i:10000010;i:99;i:10000068;i:100;i:10000121;i:101;i:10000004;i:102;i:10000039;i:103;i:10000108;i:104;i:10000050;i:105;i:10000048;i:106;i:10000149;i:107;i:10000066;i:108;i:10000072;i:109;i:10000038;i:110;i:10000049;i:111;i:10000135;i:112;i:10000131;i:113;i:10000024;i:114;i:10000145;i:115;i:10000144;i:116;i:10000082;i:117;i:10000007;i:118;i:10000029;i:119;i:10000084;i:120;i:10000042;i:121;i:10000063;i:122;i:10000150;i:123;i:10000054;i:124;i:10000051;i:125;i:10000095;i:126;i:10000119;i:127;i:10000112;i:128;i:10000111;i:129;i:10000008;i:130;i:10000040;i:131;i:10000103;i:132;i:10000075;i:133;i:10000125;i:134;i:10000088;i:135;i:10000117;i:136;i:10000109;i:137;i:10000089;i:138;i:10000025;i:139;i:10000123;i:140;i:10000147;i:141;i:10000033;i:142;i:10000020;i:143;i:10000163;i:144;i:10000074;i:145;i:10000087;i:146;i:10000141;i:147;i:10000166;i:148;i:10000106;i:149;i:10000110;i:150;i:10000122;i:151;i:10000139;i:152;i:10000016;i:153;i:10000022;i:154;i:10000079;i:155;i:10000083;i:156;i:10000140;i:157;i:10000138;i:158;i:10000092;i:159;i:10000013;i:160;i:10000081;i:161;i:10000061;i:162;i:10000165;i:163;i:10000116;i:164;i:10000023;i:165;i:10000001;i:166;i:10000115;i:167;i:10000154;}'), ('687', '570', '1', '147', 'a:147:{i:0;i:10000087;i:1;i:10000141;i:2;i:10000109;i:3;i:10000011;i:4;i:10000020;i:5;i:10000024;i:6;i:10000075;i:7;i:10000019;i:8;i:10000073;i:9;i:10000105;i:10;i:10000078;i:11;i:10000110;i:12;i:10000125;i:13;i:10000063;i:14;i:10000049;i:15;i:10000074;i:16;i:10000005;i:17;i:10000053;i:18;i:10000030;i:19;i:10000103;i:20;i:10000096;i:21;i:10000031;i:22;i:10000070;i:23;i:10000071;i:24;i:10000086;i:25;i:10000089;i:26;i:10000123;i:27;i:10000062;i:28;i:10000100;i:29;i:10000026;i:30;i:10000130;i:31;i:10000119;i:32;i:10000088;i:33;i:10000056;i:34;i:10000104;i:35;i:10000084;i:36;i:10000139;i:37;i:10000021;i:38;i:10000007;i:39;i:10000051;i:40;i:10000045;i:41;i:10000008;i:42;i:10000043;i:43;i:10000135;i:44;i:10000101;i:45;i:10000138;i:46;i:10000129;i:47;i:10000085;i:48;i:10000112;i:49;i:10000038;i:50;i:10000046;i:51;i:10000134;i:52;i:10000117;i:53;i:10000091;i:54;i:10000022;i:55;i:10000113;i:56;i:10000004;i:57;i:10000066;i:58;i:10000054;i:59;i:10000025;i:60;i:10000055;i:61;i:10000064;i:62;i:10000082;i:63;i:10000035;i:64;i:10000003;i:65;i:10000116;i:66;i:10000018;i:67;i:10000068;i:68;i:10000010;i:69;i:10000069;i:70;i:10000072;i:71;i:10000067;i:72;i:10000145;i:73;i:10000014;i:74;i:10000012;i:75;i:10000036;i:76;i:10000061;i:77;i:10000133;i:78;i:10000081;i:79;i:10000039;i:80;i:10000126;i:81;i:10000095;i:82;i:10000136;i:83;i:10000015;i:84;i:10000044;i:85;i:10000079;i:86;i:10000115;i:87;i:10000106;i:88;i:10000052;i:89;i:10000032;i:90;i:10000090;i:91;i:10000033;i:92;i:10000143;i:93;i:10000002;i:94;i:10000097;i:95;i:10000099;i:96;i:10000120;i:97;i:10000114;i:98;i:10000128;i:99;i:10000147;i:100;i:10000017;i:101;i:10000077;i:102;i:10000080;i:103;i:10000111;i:104;i:10000042;i:105;i:10000059;i:106;i:10000050;i:107;i:10000034;i:108;i:10000065;i:109;i:10000076;i:110;i:10000122;i:111;i:10000094;i:112;i:10000092;i:113;i:10000146;i:114;i:10000058;i:115;i:10000098;i:116;i:10000040;i:117;i:10000037;i:118;i:10000083;i:119;i:10000027;i:120;i:10000102;i:121;i:10000118;i:122;i:10000009;i:123;i:10000057;i:124;i:10000093;i:125;i:10000001;i:126;i:10000127;i:127;i:10000006;i:128;i:10000016;i:129;i:10000041;i:130;i:10000060;i:131;i:10000108;i:132;i:10000047;i:133;i:10000029;i:134;i:10000121;i:135;i:10000142;i:136;i:10000132;i:137;i:10000144;i:138;i:10000137;i:139;i:10000107;i:140;i:10000124;i:141;i:10000013;i:142;i:10000048;i:143;i:10000140;i:144;i:10000131;i:145;i:10000028;i:146;i:10000023;}', 'a:147:{i:0;i:10000087;i:1;i:10000141;i:2;i:10000109;i:3;i:10000011;i:4;i:10000020;i:5;i:10000024;i:6;i:10000075;i:7;i:10000019;i:8;i:10000073;i:9;i:10000105;i:10;i:10000078;i:11;i:10000110;i:12;i:10000125;i:13;i:10000063;i:14;i:10000049;i:15;i:10000074;i:16;i:10000005;i:17;i:10000053;i:18;i:10000030;i:19;i:10000103;i:20;i:10000096;i:21;i:10000031;i:22;i:10000070;i:23;i:10000071;i:24;i:10000086;i:25;i:10000089;i:26;i:10000123;i:27;i:10000062;i:28;i:10000100;i:29;i:10000026;i:30;i:10000130;i:31;i:10000119;i:32;i:10000088;i:33;i:10000056;i:34;i:10000104;i:35;i:10000084;i:36;i:10000139;i:37;i:10000021;i:38;i:10000007;i:39;i:10000051;i:40;i:10000045;i:41;i:10000008;i:42;i:10000043;i:43;i:10000135;i:44;i:10000101;i:45;i:10000138;i:46;i:10000129;i:47;i:10000085;i:48;i:10000112;i:49;i:10000038;i:50;i:10000046;i:51;i:10000134;i:52;i:10000117;i:53;i:10000091;i:54;i:10000022;i:55;i:10000113;i:56;i:10000004;i:57;i:10000066;i:58;i:10000054;i:59;i:10000025;i:60;i:10000055;i:61;i:10000064;i:62;i:10000082;i:63;i:10000035;i:64;i:10000003;i:65;i:10000116;i:66;i:10000018;i:67;i:10000068;i:68;i:10000010;i:69;i:10000069;i:70;i:10000072;i:71;i:10000067;i:72;i:10000145;i:73;i:10000014;i:74;i:10000012;i:75;i:10000036;i:76;i:10000061;i:77;i:10000133;i:78;i:10000081;i:79;i:10000039;i:80;i:10000126;i:81;i:10000095;i:82;i:10000136;i:83;i:10000015;i:84;i:10000044;i:85;i:10000079;i:86;i:10000115;i:87;i:10000106;i:88;i:10000052;i:89;i:10000032;i:90;i:10000090;i:91;i:10000033;i:92;i:10000143;i:93;i:10000002;i:94;i:10000097;i:95;i:10000099;i:96;i:10000120;i:97;i:10000114;i:98;i:10000128;i:99;i:10000147;i:100;i:10000017;i:101;i:10000077;i:102;i:10000080;i:103;i:10000111;i:104;i:10000042;i:105;i:10000059;i:106;i:10000050;i:107;i:10000034;i:108;i:10000065;i:109;i:10000076;i:110;i:10000122;i:111;i:10000094;i:112;i:10000092;i:113;i:10000146;i:114;i:10000058;i:115;i:10000098;i:116;i:10000040;i:117;i:10000037;i:118;i:10000083;i:119;i:10000027;i:120;i:10000102;i:121;i:10000118;i:122;i:10000009;i:123;i:10000057;i:124;i:10000093;i:125;i:10000001;i:126;i:10000127;i:127;i:10000006;i:128;i:10000016;i:129;i:10000041;i:130;i:10000060;i:131;i:10000108;i:132;i:10000047;i:133;i:10000029;i:134;i:10000121;i:135;i:10000142;i:136;i:10000132;i:137;i:10000144;i:138;i:10000137;i:139;i:10000107;i:140;i:10000124;i:141;i:10000013;i:142;i:10000048;i:143;i:10000140;i:144;i:10000131;i:145;i:10000028;i:146;i:10000023;}'), ('688', '571', '1', '699', 'a:699:{i:0;i:10000057;i:1;i:10000342;i:2;i:10000372;i:3;i:10000425;i:4;i:10000589;i:5;i:10000035;i:6;i:10000688;i:7;i:10000522;i:8;i:10000362;i:9;i:10000649;i:10;i:10000647;i:11;i:10000626;i:12;i:10000469;i:13;i:10000654;i:14;i:10000226;i:15;i:10000633;i:16;i:10000065;i:17;i:10000550;i:18;i:10000262;i:19;i:10000256;i:20;i:10000098;i:21;i:10000027;i:22;i:10000509;i:23;i:10000620;i:24;i:10000314;i:25;i:10000309;i:26;i:10000665;i:27;i:10000324;i:28;i:10000659;i:29;i:10000597;i:30;i:10000018;i:31;i:10000110;i:32;i:10000146;i:33;i:10000438;i:34;i:10000470;i:35;i:10000015;i:36;i:10000077;i:37;i:10000173;i:38;i:10000045;i:39;i:10000521;i:40;i:10000538;i:41;i:10000003;i:42;i:10000645;i:43;i:10000401;i:44;i:10000595;i:45;i:10000267;i:46;i:10000292;i:47;i:10000451;i:48;i:10000698;i:49;i:10000681;i:50;i:10000126;i:51;i:10000607;i:52;i:10000253;i:53;i:10000560;i:54;i:10000066;i:55;i:10000460;i:56;i:10000319;i:57;i:10000284;i:58;i:10000508;i:59;i:10000156;i:60;i:10000564;i:61;i:10000465;i:62;i:10000251;i:63;i:10000360;i:64;i:10000603;i:65;i:10000001;i:66;i:10000498;i:67;i:10000670;i:68;i:10000400;i:69;i:10000192;i:70;i:10000021;i:71;i:10000405;i:72;i:10000323;i:73;i:10000113;i:74;i:10000301;i:75;i:10000676;i:76;i:10000386;i:77;i:10000123;i:78;i:10000575;i:79;i:10000393;i:80;i:10000579;i:81;i:10000495;i:82;i:10000115;i:83;i:10000078;i:84;i:10000501;i:85;i:10000017;i:86;i:10000371;i:87;i:10000484;i:88;i:10000190;i:89;i:10000200;i:90;i:10000281;i:91;i:10000445;i:92;i:10000019;i:93;i:10000548;i:94;i:10000155;i:95;i:10000160;i:96;i:10000243;i:97;i:10000293;i:98;i:10000248;i:99;i:10000002;i:100;i:10000336;i:101;i:10000272;i:102;i:10000327;i:103;i:10000091;i:104;i:10000606;i:105;i:10000669;i:106;i:10000482;i:107;i:10000375;i:108;i:10000510;i:109;i:10000666;i:110;i:10000641;i:111;i:10000023;i:112;i:10000136;i:113;i:10000028;i:114;i:10000605;i:115;i:10000222;i:116;i:10000643;i:117;i:10000689;i:118;i:10000208;i:119;i:10000444;i:120;i:10000574;i:121;i:10000116;i:122;i:10000587;i:123;i:10000299;i:124;i:10000154;i:125;i:10000536;i:126;i:10000554;i:127;i:10000338;i:128;i:10000409;i:129;i:10000223;i:130;i:10000194;i:131;i:10000599;i:132;i:10000318;i:133;i:10000442;i:134;i:10000416;i:135;i:10000012;i:136;i:10000529;i:137;i:10000582;i:138;i:10000476;i:139;i:10000671;i:140;i:10000231;i:141;i:10000096;i:142;i:10000378;i:143;i:10000632;i:144;i:10000345;i:145;i:10000485;i:146;i:10000313;i:147;i:10000079;i:148;i:10000428;i:149;i:10000519;i:150;i:10000269;i:151;i:10000137;i:152;i:10000246;i:153;i:10000450;i:154;i:10000391;i:155;i:10000054;i:156;i:10000343;i:157;i:10000612;i:158;i:10000085;i:159;i:10000651;i:160;i:10000252;i:161;i:10000420;i:162;i:10000101;i:163;i:10000166;i:164;i:10000481;i:165;i:10000686;i:166;i:10000533;i:167;i:10000504;i:168;i:10000150;i:169;i:10000571;i:170;i:10000432;i:171;i:10000230;i:172;i:10000081;i:173;i:10000348;i:174;i:10000235;i:175;i:10000457;i:176;i:10000512;i:177;i:10000031;i:178;i:10000604;i:179;i:10000053;i:180;i:10000274;i:181;i:10000361;i:182;i:10000283;i:183;i:10000176;i:184;i:10000557;i:185;i:10000228;i:186;i:10000540;i:187;i:10000546;i:188;i:10000668;i:189;i:10000449;i:190;i:10000036;i:191;i:10000206;i:192;i:10000661;i:193;i:10000559;i:194;i:10000259;i:195;i:10000506;i:196;i:10000568;i:197;i:10000171;i:198;i:10000417;i:199;i:10000694;i:200;i:10000164;i:201;i:10000602;i:202;i:10000280;i:203;i:10000216;i:204;i:10000232;i:205;i:10000055;i:206;i:10000500;i:207;i:10000619;i:208;i:10000072;i:209;i:10000591;i:210;i:10000640;i:211;i:10000414;i:212;i:10000119;i:213;i:10000341;i:214;i:10000337;i:215;i:10000566;i:216;i:10000183;i:217;i:10000210;i:218;i:10000352;i:219;i:10000674;i:220;i:10000553;i:221;i:10000147;i:222;i:10000073;i:223;i:10000543;i:224;i:10000071;i:225;i:10000382;i:226;i:10000285;i:227;i:10000562;i:228;i:10000238;i:229;i:10000692;i:230;i:10000195;i:231;i:10000412;i:232;i:10000265;i:233;i:10000127;i:234;i:10000584;i:235;i:10000321;i:236;i:10000312;i:237;i:10000011;i:238;i:10000175;i:239;i:10000112;i:240;i:10000308;i:241;i:10000008;i:242;i:10000315;i:243;i:10000271;i:244;i:10000247;i:245;i:10000276;i:246;i:10000108;i:247;i:10000069;i:248;i:10000614;i:249;i:10000440;i:250;i:10000505;i:251;i:10000617;i:252;i:10000088;i:253;i:10000390;i:254;i:10000682;i:255;i:10000572;i:256;i:10000258;i:257;i:10000407;i:258;i:10000187;i:259;i:10000006;i:260;i:10000294;i:261;i:10000675;i:262;i:10000569;i:263;i:10000494;i:264;i:10000667;i:265;i:10000430;i:266;i:10000374;i:267;i:10000124;i:268;i:10000471;i:269;i:10000644;i:270;i:10000586;i:271;i:10000014;i:272;i:10000161;i:273;i:10000331;i:274;i:10000513;i:275;i:10000507;i:276;i:10000497;i:277;i:10000221;i:278;i:10000541;i:279;i:10000233;i:280;i:10000441;i:281;i:10000349;i:282;i:10000330;i:283;i:10000351;i:284;i:10000570;i:285;i:10000479;i:286;i:10000288;i:287;i:10000009;i:288;i:10000530;i:289;i:10000121;i:290;i:10000093;i:291;i:10000225;i:292;i:10000691;i:293;i:10000395;i:294;i:10000419;i:295;i:10000046;i:296;i:10000600;i:297;i:10000167;i:298;i:10000218;i:299;i:10000623;i:300;i:10000556;i:301;i:10000056;i:302;i:10000611;i:303;i:10000679;i:304;i:10000013;i:305;i:10000180;i:306;i:10000532;i:307;i:10000209;i:308;i:10000486;i:309;i:10000005;i:310;i:10000517;i:311;i:10000219;i:312;i:10000263;i:313;i:10000365;i:314;i:10000178;i:315;i:10000048;i:316;i:10000389;i:317;i:10000196;i:318;i:10000227;i:319;i:10000697;i:320;i:10000234;i:321;i:10000455;i:322;i:10000103;i:323;i:10000174;i:324;i:10000537;i:325;i:10000291;i:326;i:10000140;i:327;i:10000320;i:328;i:10000148;i:329;i:10000613;i:330;i:10000408;i:331;i:10000229;i:332;i:10000049;i:333;i:10000413;i:334;i:10000403;i:335;i:10000662;i:336;i:10000454;i:337;i:10000452;i:338;i:10000502;i:339;i:10000270;i:340;i:10000061;i:341;i:10000629;i:342;i:10000047;i:343;i:10000544;i:344;i:10000297;i:345;i:10000373;i:346;i:10000153;i:347;i:10000462;i:348;i:10000310;i:349;i:10000364;i:350;i:10000170;i:351;i:10000660;i:352;i:10000203;i:353;i:10000672;i:354;i:10000038;i:355;i:10000429;i:356;i:10000158;i:357;i:10000596;i:358;i:10000563;i:359;i:10000396;i:360;i:10000491;i:361;i:10000134;i:362;i:10000516;i:363;i:10000286;i:364;i:10000363;i:365;i:10000624;i:366;i:10000421;i:367;i:10000581;i:368;i:10000347;i:369;i:10000466;i:370;i:10000496;i:371;i:10000182;i:372;i:10000436;i:373;i:10000664;i:374;i:10000094;i:375;i:10000577;i:376;i:10000024;i:377;i:10000236;i:378;i:10000680;i:379;i:10000524;i:380;i:10000480;i:381;i:10000427;i:382;i:10000034;i:383;i:10000087;i:384;i:10000380;i:385;i:10000086;i:386;i:10000520;i:387;i:10000264;i:388;i:10000511;i:389;i:10000398;i:390;i:10000515;i:391;i:10000241;i:392;i:10000149;i:393;i:10000090;i:394;i:10000356;i:395;i:10000275;i:396;i:10000608;i:397;i:10000422;i:398;i:10000257;i:399;i:10000181;i:400;i:10000634;i:401;i:10000189;i:402;i:10000097;i:403;i:10000332;i:404;i:10000050;i:405;i:10000255;i:406;i:10000305;i:407;i:10000433;i:408;i:10000157;i:409;i:10000106;i:410;i:10000250;i:411;i:10000007;i:412;i:10000029;i:413;i:10000685;i:414;i:10000163;i:415;i:10000128;i:416;i:10000306;i:417;i:10000287;i:418;i:10000133;i:419;i:10000646;i:420;i:10000325;i:421;i:10000576;i:422;i:10000610;i:423;i:10000290;i:424;i:10000683;i:425;i:10000545;i:426;i:10000022;i:427;i:10000334;i:428;i:10000125;i:429;i:10000075;i:430;i:10000092;i:431;i:10000016;i:432;i:10000151;i:433;i:10000266;i:434;i:10000032;i:435;i:10000677;i:436;i:10000552;i:437;i:10000528;i:438;i:10000526;i:439;i:10000162;i:440;i:10000653;i:441;i:10000503;i:442;i:10000464;i:443;i:10000636;i:444;i:10000060;i:445;i:10000487;i:446;i:10000443;i:447;i:10000384;i:448;i:10000468;i:449;i:10000082;i:450;i:10000074;i:451;i:10000040;i:452;i:10000064;i:453;i:10000474;i:454;i:10000473;i:455;i:10000099;i:456;i:10000213;i:457;i:10000618;i:458;i:10000261;i:459;i:10000117;i:460;i:10000598;i:461;i:10000565;i:462;i:10000446;i:463;i:10000277;i:464;i:10000172;i:465;i:10000273;i:466;i:10000463;i:467;i:10000411;i:468;i:10000657;i:469;i:10000010;i:470;i:10000350;i:471;i:10000201;i:472;i:10000289;i:473;i:10000435;i:474;i:10000621;i:475;i:10000132;i:476;i:10000590;i:477;i:10000387;i:478;i:10000648;i:479;i:10000397;i:480;i:10000020;i:481;i:10000609;i:482;i:10000220;i:483;i:10000448;i:484;i:10000239;i:485;i:10000369;i:486;i:10000316;i:487;i:10000104;i:488;i:10000025;i:489;i:10000475;i:490;i:10000144;i:491;i:10000493;i:492;i:10000114;i:493;i:10000527;i:494;i:10000300;i:495;i:10000244;i:496;i:10000678;i:497;i:10000483;i:498;i:10000068;i:499;i:10000439;i:500;i:10000207;i:501;i:10000695;i:502;i:10000523;i:503;i:10000168;i:504;i:10000062;i:505;i:10000489;i:506;i:10000296;i:507;i:10000492;i:508;i:10000392;i:509;i:10000249;i:510;i:10000191;i:511;i:10000059;i:512;i:10000585;i:513;i:10000359;i:514;i:10000143;i:515;i:10000145;i:516;i:10000366;i:517;i:10000588;i:518;i:10000478;i:519;i:10000426;i:520;i:10000385;i:521;i:10000477;i:522;i:10000328;i:523;i:10000388;i:524;i:10000658;i:525;i:10000335;i:526;i:10000188;i:527;i:10000628;i:528;i:10000622;i:529;i:10000165;i:530;i:10000120;i:531;i:10000042;i:532;i:10000376;i:533;i:10000542;i:534;i:10000594;i:535;i:10000083;i:536;i:10000105;i:537;i:10000052;i:538;i:10000652;i:539;i:10000354;i:540;i:10000418;i:541;i:10000367;i:542;i:10000456;i:543;i:10000237;i:544;i:10000539;i:545;i:10000326;i:546;i:10000198;i:547;i:10000488;i:548;i:10000518;i:549;i:10000656;i:550;i:10000107;i:551;i:10000699;i:552;i:10000453;i:553;i:10000638;i:554;i:10000214;i:555;i:10000615;i:556;i:10000044;i:557;i:10000026;i:558;i:10000102;i:559;i:10000687;i:560;i:10000340;i:561;i:10000304;i:562;i:10000186;i:563;i:10000311;i:564;i:10000278;i:565;i:10000696;i:566;i:10000317;i:567;i:10000663;i:568;i:10000185;i:569;i:10000525;i:570;i:10000467;i:571;i:10000616;i:572;i:10000394;i:573;i:10000693;i:574;i:10000043;i:575;i:10000058;i:576;i:10000377;i:577;i:10000205;i:578;i:10000404;i:579;i:10000549;i:580;i:10000111;i:581;i:10000650;i:582;i:10000358;i:583;i:10000076;i:584;i:10000534;i:585;i:10000199;i:586;i:10000690;i:587;i:10000353;i:588;i:10000260;i:589;i:10000379;i:590;i:10000089;i:591;i:10000033;i:592;i:10000030;i:593;i:10000402;i:594;i:10000592;i:595;i:10000567;i:596;i:10000197;i:597;i:10000381;i:598;i:10000434;i:599;i:10000593;i:600;i:10000141;i:601;i:10000346;i:602;i:10000159;i:603;i:10000637;i:604;i:10000357;i:605;i:10000437;i:606;i:10000245;i:607;i:10000431;i:608;i:10000100;i:609;i:10000302;i:610;i:10000204;i:611;i:10000037;i:612;i:10000179;i:613;i:10000169;i:614;i:10000383;i:615;i:10000193;i:616;i:10000555;i:617;i:10000535;i:618;i:10000279;i:619;i:10000639;i:620;i:10000368;i:621;i:10000295;i:622;i:10000642;i:623;i:10000063;i:624;i:10000217;i:625;i:10000224;i:626;i:10000142;i:627;i:10000215;i:628;i:10000254;i:629;i:10000095;i:630;i:10000458;i:631;i:10000410;i:632;i:10000625;i:633;i:10000344;i:634;i:10000118;i:635;i:10000561;i:636;i:10000355;i:637;i:10000580;i:638;i:10000240;i:639;i:10000067;i:640;i:10000131;i:641;i:10000039;i:642;i:10000282;i:643;i:10000631;i:644;i:10000242;i:645;i:10000490;i:646;i:10000558;i:647;i:10000333;i:648;i:10000177;i:649;i:10000635;i:650;i:10000212;i:651;i:10000322;i:652;i:10000684;i:653;i:10000673;i:654;i:10000573;i:655;i:10000004;i:656;i:10000627;i:657;i:10000051;i:658;i:10000406;i:659;i:10000499;i:660;i:10000109;i:661;i:10000122;i:662;i:10000307;i:663;i:10000070;i:664;i:10000655;i:665;i:10000184;i:666;i:10000339;i:667;i:10000303;i:668;i:10000472;i:669;i:10000211;i:670;i:10000447;i:671;i:10000152;i:672;i:10000461;i:673;i:10000459;i:674;i:10000080;i:675;i:10000583;i:676;i:10000329;i:677;i:10000601;i:678;i:10000129;i:679;i:10000531;i:680;i:10000578;i:681;i:10000423;i:682;i:10000424;i:683;i:10000084;i:684;i:10000514;i:685;i:10000547;i:686;i:10000268;i:687;i:10000138;i:688;i:10000630;i:689;i:10000298;i:690;i:10000202;i:691;i:10000041;i:692;i:10000139;i:693;i:10000130;i:694;i:10000415;i:695;i:10000370;i:696;i:10000399;i:697;i:10000135;i:698;i:10000551;}', 'a:699:{i:0;i:10000057;i:1;i:10000342;i:2;i:10000372;i:3;i:10000425;i:4;i:10000589;i:5;i:10000035;i:6;i:10000688;i:7;i:10000522;i:8;i:10000362;i:9;i:10000649;i:10;i:10000647;i:11;i:10000626;i:12;i:10000469;i:13;i:10000654;i:14;i:10000226;i:15;i:10000633;i:16;i:10000065;i:17;i:10000550;i:18;i:10000262;i:19;i:10000256;i:20;i:10000098;i:21;i:10000027;i:22;i:10000509;i:23;i:10000620;i:24;i:10000314;i:25;i:10000309;i:26;i:10000665;i:27;i:10000324;i:28;i:10000659;i:29;i:10000597;i:30;i:10000018;i:31;i:10000110;i:32;i:10000146;i:33;i:10000438;i:34;i:10000470;i:35;i:10000015;i:36;i:10000077;i:37;i:10000173;i:38;i:10000045;i:39;i:10000521;i:40;i:10000538;i:41;i:10000003;i:42;i:10000645;i:43;i:10000401;i:44;i:10000595;i:45;i:10000267;i:46;i:10000292;i:47;i:10000451;i:48;i:10000698;i:49;i:10000681;i:50;i:10000126;i:51;i:10000607;i:52;i:10000253;i:53;i:10000560;i:54;i:10000066;i:55;i:10000460;i:56;i:10000319;i:57;i:10000284;i:58;i:10000508;i:59;i:10000156;i:60;i:10000564;i:61;i:10000465;i:62;i:10000251;i:63;i:10000360;i:64;i:10000603;i:65;i:10000001;i:66;i:10000498;i:67;i:10000670;i:68;i:10000400;i:69;i:10000192;i:70;i:10000021;i:71;i:10000405;i:72;i:10000323;i:73;i:10000113;i:74;i:10000301;i:75;i:10000676;i:76;i:10000386;i:77;i:10000123;i:78;i:10000575;i:79;i:10000393;i:80;i:10000579;i:81;i:10000495;i:82;i:10000115;i:83;i:10000078;i:84;i:10000501;i:85;i:10000017;i:86;i:10000371;i:87;i:10000484;i:88;i:10000190;i:89;i:10000200;i:90;i:10000281;i:91;i:10000445;i:92;i:10000019;i:93;i:10000548;i:94;i:10000155;i:95;i:10000160;i:96;i:10000243;i:97;i:10000293;i:98;i:10000248;i:99;i:10000002;i:100;i:10000336;i:101;i:10000272;i:102;i:10000327;i:103;i:10000091;i:104;i:10000606;i:105;i:10000669;i:106;i:10000482;i:107;i:10000375;i:108;i:10000510;i:109;i:10000666;i:110;i:10000641;i:111;i:10000023;i:112;i:10000136;i:113;i:10000028;i:114;i:10000605;i:115;i:10000222;i:116;i:10000643;i:117;i:10000689;i:118;i:10000208;i:119;i:10000444;i:120;i:10000574;i:121;i:10000116;i:122;i:10000587;i:123;i:10000299;i:124;i:10000154;i:125;i:10000536;i:126;i:10000554;i:127;i:10000338;i:128;i:10000409;i:129;i:10000223;i:130;i:10000194;i:131;i:10000599;i:132;i:10000318;i:133;i:10000442;i:134;i:10000416;i:135;i:10000012;i:136;i:10000529;i:137;i:10000582;i:138;i:10000476;i:139;i:10000671;i:140;i:10000231;i:141;i:10000096;i:142;i:10000378;i:143;i:10000632;i:144;i:10000345;i:145;i:10000485;i:146;i:10000313;i:147;i:10000079;i:148;i:10000428;i:149;i:10000519;i:150;i:10000269;i:151;i:10000137;i:152;i:10000246;i:153;i:10000450;i:154;i:10000391;i:155;i:10000054;i:156;i:10000343;i:157;i:10000612;i:158;i:10000085;i:159;i:10000651;i:160;i:10000252;i:161;i:10000420;i:162;i:10000101;i:163;i:10000166;i:164;i:10000481;i:165;i:10000686;i:166;i:10000533;i:167;i:10000504;i:168;i:10000150;i:169;i:10000571;i:170;i:10000432;i:171;i:10000230;i:172;i:10000081;i:173;i:10000348;i:174;i:10000235;i:175;i:10000457;i:176;i:10000512;i:177;i:10000031;i:178;i:10000604;i:179;i:10000053;i:180;i:10000274;i:181;i:10000361;i:182;i:10000283;i:183;i:10000176;i:184;i:10000557;i:185;i:10000228;i:186;i:10000540;i:187;i:10000546;i:188;i:10000668;i:189;i:10000449;i:190;i:10000036;i:191;i:10000206;i:192;i:10000661;i:193;i:10000559;i:194;i:10000259;i:195;i:10000506;i:196;i:10000568;i:197;i:10000171;i:198;i:10000417;i:199;i:10000694;i:200;i:10000164;i:201;i:10000602;i:202;i:10000280;i:203;i:10000216;i:204;i:10000232;i:205;i:10000055;i:206;i:10000500;i:207;i:10000619;i:208;i:10000072;i:209;i:10000591;i:210;i:10000640;i:211;i:10000414;i:212;i:10000119;i:213;i:10000341;i:214;i:10000337;i:215;i:10000566;i:216;i:10000183;i:217;i:10000210;i:218;i:10000352;i:219;i:10000674;i:220;i:10000553;i:221;i:10000147;i:222;i:10000073;i:223;i:10000543;i:224;i:10000071;i:225;i:10000382;i:226;i:10000285;i:227;i:10000562;i:228;i:10000238;i:229;i:10000692;i:230;i:10000195;i:231;i:10000412;i:232;i:10000265;i:233;i:10000127;i:234;i:10000584;i:235;i:10000321;i:236;i:10000312;i:237;i:10000011;i:238;i:10000175;i:239;i:10000112;i:240;i:10000308;i:241;i:10000008;i:242;i:10000315;i:243;i:10000271;i:244;i:10000247;i:245;i:10000276;i:246;i:10000108;i:247;i:10000069;i:248;i:10000614;i:249;i:10000440;i:250;i:10000505;i:251;i:10000617;i:252;i:10000088;i:253;i:10000390;i:254;i:10000682;i:255;i:10000572;i:256;i:10000258;i:257;i:10000407;i:258;i:10000187;i:259;i:10000006;i:260;i:10000294;i:261;i:10000675;i:262;i:10000569;i:263;i:10000494;i:264;i:10000667;i:265;i:10000430;i:266;i:10000374;i:267;i:10000124;i:268;i:10000471;i:269;i:10000644;i:270;i:10000586;i:271;i:10000014;i:272;i:10000161;i:273;i:10000331;i:274;i:10000513;i:275;i:10000507;i:276;i:10000497;i:277;i:10000221;i:278;i:10000541;i:279;i:10000233;i:280;i:10000441;i:281;i:10000349;i:282;i:10000330;i:283;i:10000351;i:284;i:10000570;i:285;i:10000479;i:286;i:10000288;i:287;i:10000009;i:288;i:10000530;i:289;i:10000121;i:290;i:10000093;i:291;i:10000225;i:292;i:10000691;i:293;i:10000395;i:294;i:10000419;i:295;i:10000046;i:296;i:10000600;i:297;i:10000167;i:298;i:10000218;i:299;i:10000623;i:300;i:10000556;i:301;i:10000056;i:302;i:10000611;i:303;i:10000679;i:304;i:10000013;i:305;i:10000180;i:306;i:10000532;i:307;i:10000209;i:308;i:10000486;i:309;i:10000005;i:310;i:10000517;i:311;i:10000219;i:312;i:10000263;i:313;i:10000365;i:314;i:10000178;i:315;i:10000048;i:316;i:10000389;i:317;i:10000196;i:318;i:10000227;i:319;i:10000697;i:320;i:10000234;i:321;i:10000455;i:322;i:10000103;i:323;i:10000174;i:324;i:10000537;i:325;i:10000291;i:326;i:10000140;i:327;i:10000320;i:328;i:10000148;i:329;i:10000613;i:330;i:10000408;i:331;i:10000229;i:332;i:10000049;i:333;i:10000413;i:334;i:10000403;i:335;i:10000662;i:336;i:10000454;i:337;i:10000452;i:338;i:10000502;i:339;i:10000270;i:340;i:10000061;i:341;i:10000629;i:342;i:10000047;i:343;i:10000544;i:344;i:10000297;i:345;i:10000373;i:346;i:10000153;i:347;i:10000462;i:348;i:10000310;i:349;i:10000364;i:350;i:10000170;i:351;i:10000660;i:352;i:10000203;i:353;i:10000672;i:354;i:10000038;i:355;i:10000429;i:356;i:10000158;i:357;i:10000596;i:358;i:10000563;i:359;i:10000396;i:360;i:10000491;i:361;i:10000134;i:362;i:10000516;i:363;i:10000286;i:364;i:10000363;i:365;i:10000624;i:366;i:10000421;i:367;i:10000581;i:368;i:10000347;i:369;i:10000466;i:370;i:10000496;i:371;i:10000182;i:372;i:10000436;i:373;i:10000664;i:374;i:10000094;i:375;i:10000577;i:376;i:10000024;i:377;i:10000236;i:378;i:10000680;i:379;i:10000524;i:380;i:10000480;i:381;i:10000427;i:382;i:10000034;i:383;i:10000087;i:384;i:10000380;i:385;i:10000086;i:386;i:10000520;i:387;i:10000264;i:388;i:10000511;i:389;i:10000398;i:390;i:10000515;i:391;i:10000241;i:392;i:10000149;i:393;i:10000090;i:394;i:10000356;i:395;i:10000275;i:396;i:10000608;i:397;i:10000422;i:398;i:10000257;i:399;i:10000181;i:400;i:10000634;i:401;i:10000189;i:402;i:10000097;i:403;i:10000332;i:404;i:10000050;i:405;i:10000255;i:406;i:10000305;i:407;i:10000433;i:408;i:10000157;i:409;i:10000106;i:410;i:10000250;i:411;i:10000007;i:412;i:10000029;i:413;i:10000685;i:414;i:10000163;i:415;i:10000128;i:416;i:10000306;i:417;i:10000287;i:418;i:10000133;i:419;i:10000646;i:420;i:10000325;i:421;i:10000576;i:422;i:10000610;i:423;i:10000290;i:424;i:10000683;i:425;i:10000545;i:426;i:10000022;i:427;i:10000334;i:428;i:10000125;i:429;i:10000075;i:430;i:10000092;i:431;i:10000016;i:432;i:10000151;i:433;i:10000266;i:434;i:10000032;i:435;i:10000677;i:436;i:10000552;i:437;i:10000528;i:438;i:10000526;i:439;i:10000162;i:440;i:10000653;i:441;i:10000503;i:442;i:10000464;i:443;i:10000636;i:444;i:10000060;i:445;i:10000487;i:446;i:10000443;i:447;i:10000384;i:448;i:10000468;i:449;i:10000082;i:450;i:10000074;i:451;i:10000040;i:452;i:10000064;i:453;i:10000474;i:454;i:10000473;i:455;i:10000099;i:456;i:10000213;i:457;i:10000618;i:458;i:10000261;i:459;i:10000117;i:460;i:10000598;i:461;i:10000565;i:462;i:10000446;i:463;i:10000277;i:464;i:10000172;i:465;i:10000273;i:466;i:10000463;i:467;i:10000411;i:468;i:10000657;i:469;i:10000010;i:470;i:10000350;i:471;i:10000201;i:472;i:10000289;i:473;i:10000435;i:474;i:10000621;i:475;i:10000132;i:476;i:10000590;i:477;i:10000387;i:478;i:10000648;i:479;i:10000397;i:480;i:10000020;i:481;i:10000609;i:482;i:10000220;i:483;i:10000448;i:484;i:10000239;i:485;i:10000369;i:486;i:10000316;i:487;i:10000104;i:488;i:10000025;i:489;i:10000475;i:490;i:10000144;i:491;i:10000493;i:492;i:10000114;i:493;i:10000527;i:494;i:10000300;i:495;i:10000244;i:496;i:10000678;i:497;i:10000483;i:498;i:10000068;i:499;i:10000439;i:500;i:10000207;i:501;i:10000695;i:502;i:10000523;i:503;i:10000168;i:504;i:10000062;i:505;i:10000489;i:506;i:10000296;i:507;i:10000492;i:508;i:10000392;i:509;i:10000249;i:510;i:10000191;i:511;i:10000059;i:512;i:10000585;i:513;i:10000359;i:514;i:10000143;i:515;i:10000145;i:516;i:10000366;i:517;i:10000588;i:518;i:10000478;i:519;i:10000426;i:520;i:10000385;i:521;i:10000477;i:522;i:10000328;i:523;i:10000388;i:524;i:10000658;i:525;i:10000335;i:526;i:10000188;i:527;i:10000628;i:528;i:10000622;i:529;i:10000165;i:530;i:10000120;i:531;i:10000042;i:532;i:10000376;i:533;i:10000542;i:534;i:10000594;i:535;i:10000083;i:536;i:10000105;i:537;i:10000052;i:538;i:10000652;i:539;i:10000354;i:540;i:10000418;i:541;i:10000367;i:542;i:10000456;i:543;i:10000237;i:544;i:10000539;i:545;i:10000326;i:546;i:10000198;i:547;i:10000488;i:548;i:10000518;i:549;i:10000656;i:550;i:10000107;i:551;i:10000699;i:552;i:10000453;i:553;i:10000638;i:554;i:10000214;i:555;i:10000615;i:556;i:10000044;i:557;i:10000026;i:558;i:10000102;i:559;i:10000687;i:560;i:10000340;i:561;i:10000304;i:562;i:10000186;i:563;i:10000311;i:564;i:10000278;i:565;i:10000696;i:566;i:10000317;i:567;i:10000663;i:568;i:10000185;i:569;i:10000525;i:570;i:10000467;i:571;i:10000616;i:572;i:10000394;i:573;i:10000693;i:574;i:10000043;i:575;i:10000058;i:576;i:10000377;i:577;i:10000205;i:578;i:10000404;i:579;i:10000549;i:580;i:10000111;i:581;i:10000650;i:582;i:10000358;i:583;i:10000076;i:584;i:10000534;i:585;i:10000199;i:586;i:10000690;i:587;i:10000353;i:588;i:10000260;i:589;i:10000379;i:590;i:10000089;i:591;i:10000033;i:592;i:10000030;i:593;i:10000402;i:594;i:10000592;i:595;i:10000567;i:596;i:10000197;i:597;i:10000381;i:598;i:10000434;i:599;i:10000593;i:600;i:10000141;i:601;i:10000346;i:602;i:10000159;i:603;i:10000637;i:604;i:10000357;i:605;i:10000437;i:606;i:10000245;i:607;i:10000431;i:608;i:10000100;i:609;i:10000302;i:610;i:10000204;i:611;i:10000037;i:612;i:10000179;i:613;i:10000169;i:614;i:10000383;i:615;i:10000193;i:616;i:10000555;i:617;i:10000535;i:618;i:10000279;i:619;i:10000639;i:620;i:10000368;i:621;i:10000295;i:622;i:10000642;i:623;i:10000063;i:624;i:10000217;i:625;i:10000224;i:626;i:10000142;i:627;i:10000215;i:628;i:10000254;i:629;i:10000095;i:630;i:10000458;i:631;i:10000410;i:632;i:10000625;i:633;i:10000344;i:634;i:10000118;i:635;i:10000561;i:636;i:10000355;i:637;i:10000580;i:638;i:10000240;i:639;i:10000067;i:640;i:10000131;i:641;i:10000039;i:642;i:10000282;i:643;i:10000631;i:644;i:10000242;i:645;i:10000490;i:646;i:10000558;i:647;i:10000333;i:648;i:10000177;i:649;i:10000635;i:650;i:10000212;i:651;i:10000322;i:652;i:10000684;i:653;i:10000673;i:654;i:10000573;i:655;i:10000004;i:656;i:10000627;i:657;i:10000051;i:658;i:10000406;i:659;i:10000499;i:660;i:10000109;i:661;i:10000122;i:662;i:10000307;i:663;i:10000070;i:664;i:10000655;i:665;i:10000184;i:666;i:10000339;i:667;i:10000303;i:668;i:10000472;i:669;i:10000211;i:670;i:10000447;i:671;i:10000152;i:672;i:10000461;i:673;i:10000459;i:674;i:10000080;i:675;i:10000583;i:676;i:10000329;i:677;i:10000601;i:678;i:10000129;i:679;i:10000531;i:680;i:10000578;i:681;i:10000423;i:682;i:10000424;i:683;i:10000084;i:684;i:10000514;i:685;i:10000547;i:686;i:10000268;i:687;i:10000138;i:688;i:10000630;i:689;i:10000298;i:690;i:10000202;i:691;i:10000041;i:692;i:10000139;i:693;i:10000130;i:694;i:10000415;i:695;i:10000370;i:696;i:10000399;i:697;i:10000135;i:698;i:10000551;}'), ('689', '572', '1', '146', 'a:146:{i:0;i:10000112;i:1;i:10000099;i:2;i:10000008;i:3;i:10000064;i:4;i:10000101;i:5;i:10000017;i:6;i:10000105;i:7;i:10000062;i:8;i:10000110;i:9;i:10000130;i:10;i:10000075;i:11;i:10000072;i:12;i:10000074;i:13;i:10000079;i:14;i:10000080;i:15;i:10000035;i:16;i:10000102;i:17;i:10000042;i:18;i:10000065;i:19;i:10000066;i:20;i:10000021;i:21;i:10000019;i:22;i:10000120;i:23;i:10000022;i:24;i:10000097;i:25;i:10000142;i:26;i:10000104;i:27;i:10000058;i:28;i:10000023;i:29;i:10000078;i:30;i:10000109;i:31;i:10000135;i:32;i:10000139;i:33;i:10000141;i:34;i:10000039;i:35;i:10000129;i:36;i:10000113;i:37;i:10000007;i:38;i:10000071;i:39;i:10000060;i:40;i:10000055;i:41;i:10000011;i:42;i:10000088;i:43;i:10000045;i:44;i:10000059;i:45;i:10000121;i:46;i:10000013;i:47;i:10000067;i:48;i:10000117;i:49;i:10000015;i:50;i:10000115;i:51;i:10000004;i:52;i:10000037;i:53;i:10000108;i:54;i:10000028;i:55;i:10000107;i:56;i:10000076;i:57;i:10000068;i:58;i:10000027;i:59;i:10000128;i:60;i:10000009;i:61;i:10000057;i:62;i:10000020;i:63;i:10000144;i:64;i:10000084;i:65;i:10000001;i:66;i:10000002;i:67;i:10000134;i:68;i:10000087;i:69;i:10000050;i:70;i:10000106;i:71;i:10000126;i:72;i:10000122;i:73;i:10000089;i:74;i:10000145;i:75;i:10000116;i:76;i:10000032;i:77;i:10000111;i:78;i:10000010;i:79;i:10000041;i:80;i:10000048;i:81;i:10000030;i:82;i:10000091;i:83;i:10000073;i:84;i:10000138;i:85;i:10000051;i:86;i:10000140;i:87;i:10000118;i:88;i:10000069;i:89;i:10000132;i:90;i:10000090;i:91;i:10000070;i:92;i:10000016;i:93;i:10000029;i:94;i:10000143;i:95;i:10000127;i:96;i:10000052;i:97;i:10000031;i:98;i:10000124;i:99;i:10000040;i:100;i:10000005;i:101;i:10000063;i:102;i:10000077;i:103;i:10000012;i:104;i:10000054;i:105;i:10000038;i:106;i:10000047;i:107;i:10000098;i:108;i:10000044;i:109;i:10000085;i:110;i:10000103;i:111;i:10000081;i:112;i:10000061;i:113;i:10000114;i:114;i:10000119;i:115;i:10000043;i:116;i:10000125;i:117;i:10000100;i:118;i:10000056;i:119;i:10000003;i:120;i:10000046;i:121;i:10000136;i:122;i:10000049;i:123;i:10000024;i:124;i:10000096;i:125;i:10000006;i:126;i:10000146;i:127;i:10000018;i:128;i:10000036;i:129;i:10000082;i:130;i:10000086;i:131;i:10000123;i:132;i:10000014;i:133;i:10000053;i:134;i:10000093;i:135;i:10000083;i:136;i:10000131;i:137;i:10000092;i:138;i:10000137;i:139;i:10000095;i:140;i:10000033;i:141;i:10000133;i:142;i:10000034;i:143;i:10000025;i:144;i:10000026;i:145;i:10000094;}', 'a:146:{i:0;i:10000112;i:1;i:10000099;i:2;i:10000008;i:3;i:10000064;i:4;i:10000101;i:5;i:10000017;i:6;i:10000105;i:7;i:10000062;i:8;i:10000110;i:9;i:10000130;i:10;i:10000075;i:11;i:10000072;i:12;i:10000074;i:13;i:10000079;i:14;i:10000080;i:15;i:10000035;i:16;i:10000102;i:17;i:10000042;i:18;i:10000065;i:19;i:10000066;i:20;i:10000021;i:21;i:10000019;i:22;i:10000120;i:23;i:10000022;i:24;i:10000097;i:25;i:10000142;i:26;i:10000104;i:27;i:10000058;i:28;i:10000023;i:29;i:10000078;i:30;i:10000109;i:31;i:10000135;i:32;i:10000139;i:33;i:10000141;i:34;i:10000039;i:35;i:10000129;i:36;i:10000113;i:37;i:10000007;i:38;i:10000071;i:39;i:10000060;i:40;i:10000055;i:41;i:10000011;i:42;i:10000088;i:43;i:10000045;i:44;i:10000059;i:45;i:10000121;i:46;i:10000013;i:47;i:10000067;i:48;i:10000117;i:49;i:10000015;i:50;i:10000115;i:51;i:10000004;i:52;i:10000037;i:53;i:10000108;i:54;i:10000028;i:55;i:10000107;i:56;i:10000076;i:57;i:10000068;i:58;i:10000027;i:59;i:10000128;i:60;i:10000009;i:61;i:10000057;i:62;i:10000020;i:63;i:10000144;i:64;i:10000084;i:65;i:10000001;i:66;i:10000002;i:67;i:10000134;i:68;i:10000087;i:69;i:10000050;i:70;i:10000106;i:71;i:10000126;i:72;i:10000122;i:73;i:10000089;i:74;i:10000145;i:75;i:10000116;i:76;i:10000032;i:77;i:10000111;i:78;i:10000010;i:79;i:10000041;i:80;i:10000048;i:81;i:10000030;i:82;i:10000091;i:83;i:10000073;i:84;i:10000138;i:85;i:10000051;i:86;i:10000140;i:87;i:10000118;i:88;i:10000069;i:89;i:10000132;i:90;i:10000090;i:91;i:10000070;i:92;i:10000016;i:93;i:10000029;i:94;i:10000143;i:95;i:10000127;i:96;i:10000052;i:97;i:10000031;i:98;i:10000124;i:99;i:10000040;i:100;i:10000005;i:101;i:10000063;i:102;i:10000077;i:103;i:10000012;i:104;i:10000054;i:105;i:10000038;i:106;i:10000047;i:107;i:10000098;i:108;i:10000044;i:109;i:10000085;i:110;i:10000103;i:111;i:10000081;i:112;i:10000061;i:113;i:10000114;i:114;i:10000119;i:115;i:10000043;i:116;i:10000125;i:117;i:10000100;i:118;i:10000056;i:119;i:10000003;i:120;i:10000046;i:121;i:10000136;i:122;i:10000049;i:123;i:10000024;i:124;i:10000096;i:125;i:10000006;i:126;i:10000146;i:127;i:10000018;i:128;i:10000036;i:129;i:10000082;i:130;i:10000086;i:131;i:10000123;i:132;i:10000014;i:133;i:10000053;i:134;i:10000093;i:135;i:10000083;i:136;i:10000131;i:137;i:10000092;i:138;i:10000137;i:139;i:10000095;i:140;i:10000033;i:141;i:10000133;i:142;i:10000034;i:143;i:10000025;i:144;i:10000026;i:145;i:10000094;}');
COMMIT;

-- ----------------------------
--  Table structure for `go_shoplist`
-- ----------------------------
DROP TABLE IF EXISTS `go_shoplist`;
CREATE TABLE `go_shoplist` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cateid` smallint(6) unsigned DEFAULT NULL COMMENT '所属栏目ID',
  `brandid` smallint(6) unsigned DEFAULT NULL COMMENT '所属品牌ID',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `title_style` varchar(100) DEFAULT NULL,
  `title2` varchar(100) DEFAULT NULL COMMENT '副标题',
  `keywords` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `yunjiage` decimal(4,2) unsigned DEFAULT '1.00' COMMENT '云购人次价格',
  `maxqishu` smallint(5) unsigned DEFAULT '1' COMMENT ' 最大期数',
  `thumb` varchar(255) DEFAULT NULL,
  `picarr` text COMMENT '商品图片',
  `content` mediumtext COMMENT '商品内容详情',
  `g_xsjx_time` int(10) unsigned DEFAULT NULL,
  `pos` tinyint(4) unsigned DEFAULT NULL COMMENT '是否推荐',
  `renqi` tinyint(4) unsigned DEFAULT '0' COMMENT '是否人气商品0否1是',
  `order` int(10) unsigned DEFAULT '1',
  `robot_buy_ratio` int(11) DEFAULT NULL COMMENT '机器人最大购买比例',
  `robot_win` int(11) DEFAULT '0' COMMENT '机器人必中',
  `recharge` tinyint(1) DEFAULT '0' COMMENT '是否为充值类虚拟商品，0-否1-是',
  PRIMARY KEY (`gid`),
  KEY `renqi` (`renqi`),
  KEY `order` (`yunjiage`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
--  Records of `go_shoplist`
-- ----------------------------
BEGIN;
INSERT INTO `go_shoplist` VALUES ('549', '16', '68', 'Remedy原创潮牌 2017秋冬帽衫趣味印花宽松日系加绒 连帽卫衣男', '', 'Remedy原创潮牌', '', '', '168.00', '1.00', '100', 'shopimg/20180114/50830885940365.jpg', 'a:1:{i:0;s:35:\"shopimg/20180114/55575049940387.jpg\";}', '<p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/99919393940239.png\" title=\"1.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/26576477940241.png\" title=\"2.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/42656501940241.png\" title=\"3.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/21158258940243.png\" title=\"4.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/42875880940244.png\" title=\"5.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/29543284940246.png\" title=\"6.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/75209630940248.png\" title=\"7.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/63627602940249.png\" title=\"8.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/42249959940251.png\" title=\"9.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/89876139940252.png\" title=\"10.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/90579779940254.png\" title=\"11.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/97347166940256.png\" title=\"12.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/27456142940256.png\" title=\"13.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/83543057940256.png\" title=\"14.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/33293513940258.png\" title=\"15.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/80021807940260.png\" title=\"16.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/10916021940261.png\" title=\"17.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/82987222940261.png\" title=\"18.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/84037436940262.png\" title=\"19.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/44070572940262.png\" title=\"20.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><br/></p><p><br/></p>', '0', '1', '1', '1', '20', '0', '0'), ('550', '16', '69', '探路者17秋冬新款 户外保暖透气弹力 男女情侣款长袖T恤HAJF91005', '', '探路者17秋冬新款 户外保暖透气弹力 男女情侣款长袖T恤HAJF91005', '', '', '147.00', '1.00', '100', 'shopimg/20180114/24718186942638.jpg', 'a:5:{i:0;s:35:\"shopimg/20180114/41665450942647.jpg\";i:1;s:35:\"shopimg/20180114/45788478942647.jpg\";i:2;s:35:\"shopimg/20180114/19910160942647.jpg\";i:3;s:35:\"shopimg/20180114/98048193942648.png\";i:4;s:35:\"shopimg/20180114/96177886942648.jpg\";}', '<p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/33896633942662.jpg\" style=\"float:none;\" title=\"1.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/63944560942662.jpg\" style=\"float:none;\" title=\"2.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/34444364942664.jpg\" style=\"float:none;\" title=\"3.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/37059783942666.jpg\" style=\"float:none;\" title=\"4.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/48652532942667.jpg\" style=\"float:none;\" title=\"5.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/39724737942667.jpg\" style=\"float:none;\" title=\"6.jpg\"/></p><p><br/></p>', '0', '1', '0', '1', '0', '0', '0'), ('551', '16', '70', '纽巴伦旗舰店官网方574运动鞋女鞋冬季男鞋子男士休闲跑步鞋情侣', '', '纽巴伦旗舰店官网方574运动鞋女鞋冬季男鞋子男士休闲跑步鞋情侣', '', '', '699.00', '1.00', '100', 'shopimg/20180114/51290271942988.jpg', 'a:4:{i:0;s:35:\"shopimg/20180114/51290271942988.jpg\";i:1;s:35:\"shopimg/20180114/21315574943013.jpg\";i:2;s:35:\"shopimg/20180114/27449548943013.jpg\";i:3;s:35:\"shopimg/20180114/47579079943013.jpg\";}', '<p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/71024394943029.jpg\" style=\"float:none;\" title=\"2.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/86089457943029.jpg\" style=\"float:none;\" title=\"3.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/10171100943029.jpg\" style=\"float:none;\" title=\"4.jpg\"/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/22258471943029.jpg\" style=\"float:none;\" title=\"5.jpg\"/></p><p><br/></p>', '0', '0', '0', '1', '0', '0', '0'), ('552', '16', '71', '迪德男士钱包短款复古真皮头层牛皮正品钱夹青年拉链驾驶证皮夹潮', '', '迪德男士钱包短款复古真皮头层牛皮正品钱夹青年拉链驾驶证皮夹潮', '', '', '146.00', '1.00', '100', 'shopimg/20180114/33275172943393.jpg', 'a:2:{i:0;s:35:\"shopimg/20180114/33275172943393.jpg\";i:1;s:35:\"shopimg/20180114/58332506943393.jpg\";}', '<p><br/></p><p><img src=\"http://1shopasia.com/uploads/shopimg/20180114/44336899943417.jpg\" style=\"float:none;\" title=\"1.jpg\"/><img src=\"http://1shopasia.com/uploads/shopimg/20180114/49656482943418.jpg\" title=\"2.jpg\" style=\"white-space: normal; float: none;\"/><img src=\"http://1shopasia.com/uploads/shopimg/20180114/11957940943419.jpg\" style=\"float:none;\" title=\"3.jpg\"/> <img src=\"http://1shopasia.com/uploads/shopimg/20180114/74492490943421.jpg\" style=\"float:none;\" title=\"4.jpg\"/></p><p><br/></p>', '0', '0', '0', '1', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `go_shoplist1`
-- ----------------------------
DROP TABLE IF EXISTS `go_shoplist1`;
CREATE TABLE `go_shoplist1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `sid` int(10) unsigned NOT NULL COMMENT '同一个商品',
  `cateid` smallint(6) unsigned DEFAULT NULL COMMENT '所属栏目ID',
  `brandid` smallint(6) unsigned DEFAULT NULL COMMENT '所属品牌ID',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `title_style` varchar(100) DEFAULT NULL,
  `title2` varchar(100) DEFAULT NULL COMMENT '副标题',
  `keywords` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `yunjiage` decimal(4,2) unsigned DEFAULT '1.00' COMMENT '云购人次价格',
  `zongrenshu` int(10) unsigned DEFAULT '0' COMMENT '总需人数',
  `canyurenshu` int(10) unsigned DEFAULT '0' COMMENT '已参与人数',
  `shenyurenshu` int(10) unsigned DEFAULT NULL,
  `def_renshu` int(10) unsigned DEFAULT '0',
  `qishu` smallint(6) unsigned DEFAULT '0' COMMENT '期数',
  `maxqishu` smallint(5) unsigned DEFAULT '1' COMMENT ' 最大期数',
  `thumb` varchar(255) DEFAULT NULL,
  `picarr` text COMMENT '商品图片',
  `content` mediumtext COMMENT '商品内容详情',
  `codes_table` char(20) DEFAULT NULL,
  `xsjx_time` int(10) unsigned DEFAULT NULL,
  `pos` tinyint(4) unsigned DEFAULT NULL COMMENT '是否推荐',
  `renqi` tinyint(4) unsigned DEFAULT '0' COMMENT '是否人气商品0否1是',
  `time` int(10) unsigned DEFAULT NULL COMMENT '时间',
  `order` int(10) unsigned DEFAULT '1',
  `q_uid` int(10) unsigned DEFAULT NULL COMMENT '中奖人ID',
  `q_user` text NOT NULL COMMENT '中奖人信息',
  `q_user_code` char(20) DEFAULT NULL COMMENT '中奖码',
  `q_content` mediumtext COMMENT '揭晓内容',
  `q_counttime` char(20) DEFAULT NULL COMMENT '总时间相加',
  `q_end_time` char(20) DEFAULT NULL COMMENT '揭晓时间',
  `q_showtime` char(1) DEFAULT 'N' COMMENT 'Y/N揭晓动画',
  `zhiding` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '指定中奖人',
  PRIMARY KEY (`id`),
  KEY `renqi` (`renqi`),
  KEY `order` (`yunjiage`),
  KEY `q_uid` (`q_uid`),
  KEY `sid` (`sid`),
  KEY `shenyurenshu` (`shenyurenshu`),
  KEY `q_showtime` (`q_showtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
--  Table structure for `go_shoplist_del`
-- ----------------------------
DROP TABLE IF EXISTS `go_shoplist_del`;
CREATE TABLE `go_shoplist_del` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `sid` int(10) unsigned NOT NULL COMMENT '同一个商品',
  `cateid` smallint(6) unsigned DEFAULT NULL COMMENT '所属栏目ID',
  `brandid` smallint(6) unsigned DEFAULT NULL COMMENT '所属品牌ID',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `title_style` varchar(100) DEFAULT NULL,
  `title2` varchar(100) DEFAULT NULL COMMENT '副标题',
  `keywords` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `yunjiage` decimal(4,2) unsigned DEFAULT '1.00' COMMENT 'OneShop人次价格',
  `zongrenshu` int(10) unsigned DEFAULT '0' COMMENT '总需人数',
  `canyurenshu` int(10) unsigned DEFAULT '0' COMMENT '已参与人数',
  `shenyurenshu` int(10) unsigned DEFAULT NULL,
  `def_renshu` int(10) unsigned DEFAULT '0',
  `qishu` smallint(6) unsigned DEFAULT '0' COMMENT '期数',
  `maxqishu` smallint(5) unsigned DEFAULT '1' COMMENT ' 最大期数',
  `thumb` varchar(255) DEFAULT NULL,
  `picarr` text COMMENT '商品图片',
  `content` mediumtext COMMENT '商品内容详情',
  `codes_table` char(20) DEFAULT NULL,
  `xsjx_time` int(10) unsigned DEFAULT NULL,
  `pos` tinyint(4) unsigned DEFAULT NULL COMMENT '是否推荐',
  `renqi` tinyint(4) unsigned DEFAULT '0' COMMENT '是否人气商品0否1是',
  `time` int(10) unsigned DEFAULT NULL COMMENT '时间',
  `order` int(10) unsigned DEFAULT '1',
  `q_uid` int(10) unsigned DEFAULT NULL COMMENT '中奖人ID',
  `q_user` text NOT NULL COMMENT '中奖人信息',
  `q_user_code` char(20) DEFAULT NULL COMMENT '中奖码',
  `q_content` mediumtext COMMENT '揭晓内容',
  `q_counttime` char(20) DEFAULT NULL COMMENT '总时间相加',
  `q_end_time` char(20) DEFAULT NULL COMMENT '揭晓时间',
  `q_showtime` char(1) DEFAULT 'N' COMMENT 'Y/N揭晓动画',
  `zhiding` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '指定中奖人',
  PRIMARY KEY (`id`),
  KEY `renqi` (`renqi`),
  KEY `order` (`yunjiage`),
  KEY `q_uid` (`q_uid`),
  KEY `sid` (`sid`),
  KEY `shenyurenshu` (`shenyurenshu`),
  KEY `q_showtime` (`q_showtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
--  Table structure for `go_shoplist_en`
-- ----------------------------
DROP TABLE IF EXISTS `go_shoplist_en`;
CREATE TABLE `go_shoplist_en` (
  `enid` int(11) NOT NULL AUTO_INCREMENT,
  `egid` int(11) DEFAULT NULL,
  `titleen` varchar(255) DEFAULT NULL,
  `title2en` varchar(255) DEFAULT NULL,
  `keywordsen` varchar(255) DEFAULT NULL,
  `descriptionen` varchar(500) DEFAULT NULL,
  `contenten` mediumtext,
  PRIMARY KEY (`enid`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_shoplist_en`
-- ----------------------------
BEGIN;
INSERT INTO `go_shoplist_en` VALUES ('487', '549', 'Remedy original popular logo 2017 autumn/winter hat shirt fun printed loose day with a velvet hooded man.', 'Remedy original popular logo', '', '', '<p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/99919393940239.png\" title=\"1.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/26576477940241.png\" title=\"2.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/42656501940241.png\" title=\"3.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/21158258940243.png\" title=\"4.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/42875880940244.png\" title=\"5.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/29543284940246.png\" title=\"6.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/75209630940248.png\" title=\"7.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/63627602940249.png\" title=\"8.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/42249959940251.png\" title=\"9.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/89876139940252.png\" title=\"10.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/90579779940254.png\" title=\"11.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/97347166940256.png\" title=\"12.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/27456142940256.png\" title=\"13.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/83543057940256.png\" title=\"14.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/33293513940258.png\" title=\"15.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/80021807940260.png\" title=\"16.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/10916021940261.png\" title=\"17.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/82987222940261.png\" title=\"18.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/84037436940262.png\" title=\"19.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/44070572940262.png\" title=\"20.png\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><br/></p><p><br/></p>'), ('488', '550', 'A long-sleeved T-shirt, HAJF91005, for both men and women.', 'A long-sleeved T-shirt, HAJF91005, for both men and women.', '', '', '<p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/33896633942662.jpg\" title=\"1.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/63944560942662.jpg\" title=\"2.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/34444364942664.jpg\" title=\"3.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/37059783942666.jpg\" title=\"4.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/48652532942667.jpg\" title=\"5.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/39724737942667.jpg\" title=\"6.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><br/></p><p><br/></p>'), ('489', '551', 'New barron flagship store on the official website of 574 sneaker women\'s shoes winter men\'s casual running shoes lovers.', 'New barron flagship store on the official website of 574 sneaker women\'s shoes winter men\'s casual running shoes lovers.', '', '', '<p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/71024394943029.jpg\" title=\"2.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/86089457943029.jpg\" title=\"3.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/10171100943029.jpg\" title=\"4.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/22258471943029.jpg\" title=\"5.jpg\" style=\"float: none;\"/></p><p style=\"white-space: normal;\"><br/></p><p><br/></p>'), ('490', '552', 'Dede man wallet short style vintage leather head leather genuine leather wallet young zipper driver\'s driver\'s license.', 'Dede man wallet short style vintage leather head leather genuine leather wallet young zipper driver\'s driver\'s license.', '', '', '<p style=\"white-space: normal;\"><img src=\"http://1shopasia.com/uploads/shopimg/20180114/44336899943417.jpg\" title=\"1.jpg\" style=\"float: none;\"/><img src=\"http://1shopasia.com/uploads/shopimg/20180114/49656482943418.jpg\" title=\"2.jpg\" style=\"float: none;\"/><img src=\"http://1shopasia.com/uploads/shopimg/20180114/11957940943419.jpg\" title=\"3.jpg\" style=\"float: none;\"/>&nbsp;<img src=\"http://1shopasia.com/uploads/shopimg/20180114/74492490943421.jpg\" title=\"4.jpg\" style=\"float: none;\"/></p><p><br/></p>');
COMMIT;

-- ----------------------------
--  Table structure for `go_shoplist_term`
-- ----------------------------
DROP TABLE IF EXISTS `go_shoplist_term`;
CREATE TABLE `go_shoplist_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `q_uid` int(11) DEFAULT NULL COMMENT '中奖人ID',
  `q_user` text,
  `q_user_code` varchar(255) DEFAULT NULL,
  `q_content` mediumtext,
  `q_counttime` varchar(100) DEFAULT NULL COMMENT '总时间相加',
  `q_end_time` varchar(100) DEFAULT NULL COMMENT '揭晓时间',
  `q_showtime` char(1) DEFAULT 'N',
  `zhiding` int(11) DEFAULT '0',
  `zongrenshu` int(11) DEFAULT NULL,
  `canyurenshu` int(11) DEFAULT NULL,
  `shenyurenshu` int(11) DEFAULT NULL,
  `def_renshu` int(11) DEFAULT NULL,
  `term_num` varchar(200) DEFAULT NULL,
  `qishu` smallint(6) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `codes_table` char(20) DEFAULT NULL,
  `xsjx_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_shoplist_term`
-- ----------------------------
BEGIN;
INSERT INTO `go_shoplist_term` VALUES ('567', '547', null, null, null, null, null, null, 'N', '0', '168', '0', '168', null, '20180114547001', '1', '1515940031', 'shopcodes_1', '0'), ('568', '548', null, null, null, null, null, null, 'N', '0', '168', '0', '168', null, '20180114548001', '1', '1515940031', 'shopcodes_1', '0'), ('569', '549', null, null, null, null, null, null, 'N', '0', '168', '0', '168', null, '20180114549001', '1', '1515940407', 'shopcodes_1', '0'), ('570', '550', null, null, null, null, null, null, 'N', '0', '147', '0', '147', null, '20180114550001', '1', '1515942700', 'shopcodes_1', '0'), ('571', '551', null, null, null, null, null, null, 'N', '0', '699', '0', '699', null, '20180114551001', '1', '1515943045', 'shopcodes_1', '0'), ('572', '552', null, null, null, null, null, null, 'N', '0', '146', '0', '146', null, '20180114552001', '1', '1515943506', 'shopcodes_1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `go_shoplist_term_del`
-- ----------------------------
DROP TABLE IF EXISTS `go_shoplist_term_del`;
CREATE TABLE `go_shoplist_term_del` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `q_uid` int(11) DEFAULT NULL COMMENT '中奖人ID',
  `q_user` text,
  `q_user_code` varchar(255) DEFAULT NULL,
  `q_content` mediumtext,
  `q_counttime` varchar(100) DEFAULT NULL COMMENT '总时间相加',
  `q_end_time` varchar(100) DEFAULT NULL COMMENT '揭晓时间',
  `q_showtime` char(1) DEFAULT NULL COMMENT 'Y/N揭晓动画',
  `zhiding` int(11) DEFAULT '0',
  `zongrenshu` int(11) DEFAULT NULL,
  `canyurenshu` int(11) DEFAULT NULL,
  `shenyurenshu` int(11) DEFAULT NULL,
  `def_renshu` int(11) DEFAULT NULL,
  `term_num` varchar(200) DEFAULT NULL,
  `qishu` smallint(6) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `codes_table` char(20) DEFAULT NULL,
  `xsjx_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_slide`
-- ----------------------------
DROP TABLE IF EXISTS `go_slide`;
CREATE TABLE `go_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(50) DEFAULT NULL COMMENT '幻灯片',
  `title` varchar(30) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `way` int(1) unsigned DEFAULT '0' COMMENT '手机端的轮播图',
  `titleen` varchar(255) DEFAULT NULL,
  `linken` varchar(255) DEFAULT NULL,
  `imgen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `img` (`img`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
--  Records of `go_slide`
-- ----------------------------
BEGIN;
INSERT INTO `go_slide` VALUES ('6', 'banner/20171206/29648413566842.jpg', '测试', 'http://www.baidu.com', '0', 'test', 'http://news.163.com', 'banneren/20171206/74011327567219.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `go_template`
-- ----------------------------
DROP TABLE IF EXISTS `go_template`;
CREATE TABLE `go_template` (
  `template_name` char(25) NOT NULL,
  `template` char(25) NOT NULL,
  `des` varchar(100) DEFAULT NULL,
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `go_template`
-- ----------------------------
BEGIN;
INSERT INTO `go_template` VALUES ('cart.cartlist.html', 'yungou', '购物车列表'), ('cart.pay.html', 'yungou', '购物车付款'), ('cart.paysuccess.html', 'yungou', '购物车支付成功页面'), ('group.index.html', 'yungou', '圈子首页'), ('group.list.html', 'yungou', '圈子列表页'), ('group.nei.html', 'yungou', '圈子内容'), ('group.right.html', 'yungou', '圈子右边'), ('help.help.html', 'yungou', '帮助页面'), ('index.autolottery.html', 'yungou', '限时揭晓'), ('index.buyrecord.html', 'yungou', '夺宝记录'), ('index.buyrecordbai.html', 'yungou', '最新夺宝记录'), ('index.dataserver.html', 'yungou', '已揭晓商品'), ('index.detail.html', 'yungou', '晒单详情'), ('index.footer.html', 'yungou', '底部'), ('index.glist.html', 'yungou', '所有商品'), ('index.header.html', 'yungou', '头部'), ('index.index.html', 'yungou', '首页'), ('index.item.html', 'yungou', '商品展示页'), ('index.lottery.html', 'yungou', '最新揭晓'), ('index.shaidan.html', 'yungou', '晒单页面'), ('link.link.html', 'yungou', '友情链接'), ('member.address.html', 'yungou', '会员地址添加'), ('member.cashout.html', 'yungou', '提现申请'), ('member.commissions.html', 'yungou', '佣金明细'), ('member.index.html', 'yungou', '会员首页'), ('member.invitefriends.html', 'yungou', '邀请好友'), ('member.joingroup.html', 'yungou', '加入的圈子'), ('member.left.html', 'yungou', '会员中心左边页面'), ('member.mailchecking.html', 'yungou', '邮箱认证'), ('member.mobilechecking.htm', 'yungou', '手机认证'), ('member.mobilesuccess.html', 'yungou', '手机认证成功'), ('member.modify.html', 'yungou', '会员'), ('member.orderlist.html', 'yungou', '会员资料'), ('member.password.html', 'yungou', '会员修改密码'), ('member.photo.html', 'yungou', '会员修改头像'), ('member.qqclock.html', 'yungou', '会员QQ绑定'), ('member.record.html', 'yungou', '提现记录'), ('member.sendsuccess.html', 'yungou', '邮箱验证发送'), ('member.sendsuccess2.html', 'yungou', '邮箱验证发送2'), ('member.shezhi.html', 'yungou', '资料选项卡'), ('member.singleinsert.html', 'yungou', '会员添加晒单'), ('member.singlelist.html', 'yungou', '会员晒单'), ('member.singleupdate.html', 'yungou', '晒单修改'), ('member.topic.html', 'yungou', '圈子话题'), ('member.userbalance.html', 'yungou', '账户明细'), ('member.userbuydetail.html', 'yungou', '夺宝记录'), ('member.userbuylist.html', 'yungou', '夺宝记录'), ('member.userfufen.html', 'yungou', '会员福分'), ('member.userrecharge.html', 'yungou', '账户充值'), ('search.search.html', 'yungou', '搜索'), ('single_web.business.html', 'yungou', '单页_合作专区'), ('single_web.fund.html', 'yungou', '单页_云购基金'), ('single_web.newbie.html', 'yungou', '单页_新手指南'), ('single_web.pleasereg.html', 'yungou', '单页_邀请'), ('single_web.qqgroup.html', 'yungou', '单页_QQ'), ('system.message.html', 'yungou', '系统消息提示'), ('us.index.html', 'yungou', '个人主页'), ('us.left.html', 'yungou', '个人主页左边'), ('us.tab.html', 'yungou', '个人主页选项'), ('us.userbuy.html', 'yungou', '个人主页夺宝记录'), ('us.userpost.html', 'yungou', '个人主页夺宝记录'), ('us.userraffle.html', 'yungou', '个人主页夺宝记录'), ('user.emailcheck.html', 'yungou', '邮箱验证'), ('user.emailok.html', 'yungou', '邮箱验证成功'), ('user.findemailcheck.html', 'yungou', '找回密码'), ('user.finderror.html', 'yungou', '邮箱验证已过期'), ('user.findmobilecheck.html', 'yungou', '手机验证'), ('user.findok.html', 'yungou', '手机验证成功'), ('user.findpassword.html', 'yungou', '重置密码'), ('user.login.html', 'yungou', '会员登录'), ('user.mobilecheck.html', 'yungou', '手机验证'), ('user.register.html', 'yungou', '会员注册'), ('vote.show.html', 'yungou', '投票内容页'), ('vote.show_total.html', 'yungou', '投票列表'), ('vote.vote.html', 'yungou', '投票主页'), ('cart.payend.html', 'yungou', ''), ('index.header1.html', 'yungou', ''), ('index.item_animation.html', 'yungou', ''), ('index.item_contents.html', 'yungou', ''), ('index.itemifram.html', 'yungou', ''), ('index.itemiframstory.html', 'yungou', ''), ('index.qq.html', 'yungou', ''), ('index.shaidan123.html', 'yungou', ''), ('member.mobilechecking.htm', 'yungou', ''), ('mobile', 'yungou', '');
COMMIT;

-- ----------------------------
--  Table structure for `go_vote_activer`
-- ----------------------------
DROP TABLE IF EXISTS `go_vote_activer`;
CREATE TABLE `go_vote_activer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `vote_id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL,
  `subtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `go_vote_option`;
CREATE TABLE `go_vote_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL,
  `option_title` varchar(100) DEFAULT NULL,
  `option_number` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_vote_subject`
-- ----------------------------
DROP TABLE IF EXISTS `go_vote_subject`;
CREATE TABLE `go_vote_subject` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_title` varchar(100) DEFAULT NULL,
  `vote_starttime` int(11) DEFAULT NULL,
  `vote_endtime` int(11) DEFAULT NULL,
  `vote_sendtime` int(11) DEFAULT NULL,
  `vote_description` text,
  `vote_allowview` tinyint(1) DEFAULT NULL,
  `vote_allowguest` tinyint(1) DEFAULT NULL,
  `vote_interval` int(11) DEFAULT '0',
  `vote_enabled` tinyint(1) DEFAULT NULL,
  `vote_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_wap`
-- ----------------------------
DROP TABLE IF EXISTS `go_wap`;
CREATE TABLE `go_wap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '����',
  `title` char(100) DEFAULT '' COMMENT '�������',
  `link` char(255) DEFAULT '' COMMENT '���ӵ�ַ',
  `img` text COMMENT 'ͼƬ��ַ',
  `color` text COMMENT '��Ҳ��֪��',
  `titleen` varchar(255) DEFAULT NULL,
  `linken` varchar(255) DEFAULT NULL,
  `imgen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
--  Records of `go_wap`
-- ----------------------------
BEGIN;
INSERT INTO `go_wap` VALUES ('8', '自由购，一元购，自由乐购', '', 'banner/20171216/40023369425429.jpg', '', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `go_wechat_config`
-- ----------------------------
DROP TABLE IF EXISTS `go_wechat_config`;
CREATE TABLE `go_wechat_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `menu` text NOT NULL COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_weixin_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_bonus`;
CREATE TABLE `go_weixin_bonus` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_weixin_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_bonus_type`;
CREATE TABLE `go_weixin_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '红包总数',
  `getnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '领取数量',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_weixin_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_keywords`;
CREATE TABLE `go_weixin_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '消息类型',
  `contents` text NOT NULL,
  `pic` varchar(80) NOT NULL,
  `pic_tit` varchar(80) NOT NULL,
  `desc` text NOT NULL,
  `pic_url` varchar(80) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_weixin_point`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_point`;
CREATE TABLE `go_weixin_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_weixin_point_record`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_point_record`;
CREATE TABLE `go_weixin_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  `total` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '总共签到次数',
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_weixin_sign`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_sign`;
CREATE TABLE `go_weixin_sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '����',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�û�id\r\n',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '�Ƿ���ȡ��',
  `input_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '��ȡʱ��',
  `typeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�������',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=gbk COMMENT='“”';

-- ----------------------------
--  Table structure for `go_weixin_user`
-- ----------------------------
DROP TABLE IF EXISTS `go_weixin_user`;
CREATE TABLE `go_weixin_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '领取时间',
  `typeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '红包的类型id',
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `go_wxch_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `go_wxch_cfg`;
CREATE TABLE `go_wxch_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` text NOT NULL COMMENT '参数值',
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tangtan`
-- ----------------------------
DROP TABLE IF EXISTS `tangtan`;
CREATE TABLE `tangtan` (
  `/*` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

SET FOREIGN_KEY_CHECKS = 1;
