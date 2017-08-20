/*
Navicat MySQL Data Transfer

Source Server         : lyf
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : sourongindex

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-08-20 22:45:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aboutsourong`
-- ----------------------------
DROP TABLE IF EXISTS `aboutsourong`;
CREATE TABLE `aboutsourong` (
  `SouRongId` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(255) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `specificDescribe` varchar(500) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SouRongId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aboutsourong
-- ----------------------------
INSERT INTO `aboutsourong` VALUES ('1', 'a3e741d6-fcaf-42d7-a6d8-3acd4f26ec57.jpg', '关于搜融', '龙岗金融唯一授权社区综合金融服务店。安心贷款，专业服务，透明收费，拒绝套路我们就是您家附近的靠谱金融专家地图导航搜索[搜融到家]即可到达。', '2017-08-18 19:16:32', '2017-08-20 19:34:00');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `bannerID` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(255) DEFAULT NULL,
  `picIntro` varchar(255) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bannerID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'slide_simple_bg1.png', '搜融到家，龙岗金融商会指定社区金融服务品牌', '2017-08-18 19:41:47', '2017-08-19 14:32:47');
INSERT INTO `banner` VALUES ('2', '2.jpg', '安心贷款，透明收费，拒绝套路', '2017-08-19 14:33:07', '2017-08-19 14:33:22');
INSERT INTO `banner` VALUES ('3', '23a1ebbb-03f4-4017-b999-f59f39eea2f7.jpg', '搜融专注各类贷款产品及渠道整合研究，专业帮助客户设计最合适的贷款方案', '2017-08-19 14:33:51', '2017-08-20 18:46:49');

-- ----------------------------
-- Table structure for `companyinfom`
-- ----------------------------
DROP TABLE IF EXISTS `companyinfom`;
CREATE TABLE `companyinfom` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(32) DEFAULT NULL,
  `servicePhone` varchar(128) DEFAULT NULL,
  `serviceTime` varchar(128) DEFAULT NULL,
  `companyaddress` varchar(64) DEFAULT NULL,
  `companylogo` varchar(255) DEFAULT NULL,
  `companyQR` varchar(255) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `detailaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyinfom
-- ----------------------------
INSERT INTO `companyinfom` VALUES ('1', '搜融到家', '0755-8522 9067', '周一~周五8:00~20:00', '深圳市龙岗区回龙路宝能悦澜山', '19a19456-42a5-43d3-9b1b-dfc675e09395.png', 'ewm.jpeg', '2017-08-18 17:57:16', '2017-08-20 18:48:46', '1栋C-01号铺');

-- ----------------------------
-- Table structure for `consultant`
-- ----------------------------
DROP TABLE IF EXISTS `consultant`;
CREATE TABLE `consultant` (
  `consultantId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `company` varchar(128) DEFAULT NULL,
  `consultantPic` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `jobTitle` varchar(20) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`consultantId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consultant
-- ----------------------------
INSERT INTO `consultant` VALUES ('1', '甘瑞婷', '18823842528', '搜融', 'xz.jpeg', '123', '1', '哈哈哈哈或', '2017-08-18 15:37:13', '2017-08-19 14:21:39');
INSERT INTO `consultant` VALUES ('2', '林立基', '18823842528', 'company', 'rt.jpeg', 'remarks', '1', 'jobtitle', '2017-08-18 15:45:55', '2017-08-19 14:21:44');
INSERT INTO `consultant` VALUES ('3', '刘金仓', '18823842528', 'company', 'jg.jpeg', 'remarks', '3', 'jobtitle', '2017-08-18 15:46:04', '2017-08-19 14:22:41');
INSERT INTO `consultant` VALUES ('4', '张正钧', '18823842528', 'company', 'ljc.jpeg', 'remarks', '1', 'jobtitle', '2017-08-18 15:46:21', '2017-08-19 14:22:36');
INSERT INTO `consultant` VALUES ('6', '何俊', '18823842528', 'company', 'zzj.png', 'remarks', '1', 'jobtitle', '2017-08-18 15:49:25', '2017-08-19 14:22:50');

-- ----------------------------
-- Table structure for `demo`
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES ('1', '张三', '男', '22', '1353554355');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(225) DEFAULT NULL,
  `productIntro` varchar(1000) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '房产抵押贷款', '利息低至3厘98，年限长达30年', '9939eeb9-acd9-4f6d-820a-ecc59052d27f.png', '2017-07-24 16:23:06', '2017-08-20 18:04:26');
INSERT INTO `product` VALUES ('2', '房产信用贷款', '利息低至4厘，最高可达50万', 'QQ图片20170820002420.png', '2017-07-24 16:35:57', '2017-08-20 17:34:05');
INSERT INTO `product` VALUES ('3', '纯信用无抵押', '社保贷、工薪贷、公积金贷，利息低至4厘起', '42a5811e-231b-44eb-a92d-814ba70ba999.png', '2017-07-24 16:37:16', '2017-08-20 18:03:53');
INSERT INTO `product` VALUES ('4', '押车押证', '押证低至9厘9，押车低至1分5', 'a3459a7e-9f45-4379-9e47-e91c89a7103d.png', '2017-07-24 16:38:25', '2017-08-20 18:04:07');
INSERT INTO `product` VALUES ('5', '零首付购车', '搜融0首付购车独家渠道，利息低至3厘多', 'f6f21568-621b-471d-b057-12699fc58f5c.png', '2017-07-24 16:44:11', '2017-08-20 18:03:20');
INSERT INTO `product` VALUES ('6', '征信不良贷款', '针对征信逾期、查超等客户制定瑕疵贷方案', '6cb808e5-5e64-4812-9686-85d6a55af112.png', '2017-07-24 16:45:12', '2017-08-20 18:04:44');
INSERT INTO `product` VALUES ('7', '征信不良贷款', '针对征信逾期、查超等客户制定瑕疵贷方案', '0af614de-7913-415b-8ead-c244d676eeac.png', '2017-08-19 14:03:33', '2017-08-20 18:05:22');
INSERT INTO `product` VALUES ('10', '赎楼过桥', '个人赎楼万7，企业赎楼万8', '101b8e7b-d713-4e59-b781-3e4352d8060b.png', '2017-08-20 19:20:08', '2017-08-20 19:20:08');

-- ----------------------------
-- Table structure for `serviceidea`
-- ----------------------------
DROP TABLE IF EXISTS `serviceidea`;
CREATE TABLE `serviceidea` (
  `serviceideaId` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(255) DEFAULT NULL,
  `Ideadescribe` varchar(1000) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceideaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceidea
-- ----------------------------
INSERT INTO `serviceidea` VALUES ('1', 'f1.png', '专业融资顾问一对一全程服务，搜融到家没有销售员，只有贴心的融资贷款顾问。', '2017-08-18 17:48:54', '2017-08-20 18:34:04');
INSERT INTO `serviceidea` VALUES ('2', 'f1.png', '专业融资顾问一对一全程服务，搜融到家没有销售员，只有贴心的融资贷款顾问。', '2017-08-19 00:30:42', '2017-08-20 18:34:09');
INSERT INTO `serviceidea` VALUES ('3', 'f1.png', '专业融资顾问一对一全程服务，搜融到家没有销售员，只有贴心的融资贷款顾问。', '2017-08-19 00:32:41', '2017-08-20 18:34:11');
INSERT INTO `serviceidea` VALUES ('4', 'f1.png', '专业融资顾问一对一全程服务，搜融到家没有销售员，只有贴心的融资贷款顾问。', '2017-08-19 00:32:57', '2017-08-20 18:34:13');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lasttime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '11', 'admin', '3cccc4a5-3b16-454d-aa7f-9e28b2b3ed13', '0a35d763f2c21ceb0c4407ede0ad4a42', '2017-07-21 17:54:14', null);
INSERT INTO `user` VALUES ('2', 'aa', 'lyf', '3cccc4a5-3b16-454d-aa7f-9e28b2b3ed13', '060ef1a179b9a21ca574122946b12b39', '2017-08-18 15:34:26', '2017-08-18 15:34:26');
INSERT INTO `user` VALUES ('80e7470d-4633-4712-b926-00a453ab3855', '12', '11', 'e9428f8c-4326-44a7-b392-07e9365b404e', '752b8bfa5f3a6f1f0805764ad1ab5546', '2017-05-12 17:35:10', null);
INSERT INTO `user` VALUES ('a8de6820-2d21-4081-b5af-8771fa152c18', '12', '11', '000d188c-0aac-444d-8df9-a3662e6c9be6', 'b4fb623ba5dd264a5b06e2638c259455', '2017-05-12 14:59:23', null);
INSERT INTO `user` VALUES ('c594ca3f-d571-4558-8508-4a994201e699', '张三', '11', '4931950c-b995-4cc6-ba02-ede79a9ead1b', '3962087ef4ccf53d7a15b884dd733fda', '2017-05-22 17:58:55', null);
INSERT INTO `user` VALUES ('c6f1df2a-ac95-4b6e-947f-908b4ce789d1', 'datwai', 'datwai', '3800af1f-81fb-4f2a-b663-53dff52b100a', 'b64c2d433e28c69eb5ff70b98a9ab7cc', '2017-05-23 09:51:42', null);
INSERT INTO `user` VALUES ('e4040c44-d970-4b5f-bada-267517c7f400', '1112222', '1112222', '753c67e6-8b86-485a-bd9e-879397466bd1', 'db4a1e4da5336038421259d4cf94746b', '2017-05-16 10:25:40', null);
