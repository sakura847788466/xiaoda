/*
Navicat MySQL Data Transfer

Source Server         : goodlist
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : goodslist

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-28 18:00:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shoptietle` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stroe` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', 'https://d3.soolife.cn/images/57167b27667f310c405c77a19e9e6adf.jpg', '达到', '134.00', '广州');
INSERT INTO `car` VALUES ('2', 'www.baidu.com', 'akhd', '234.00', '杭州');

-- ----------------------------
-- Table structure for maingoods
-- ----------------------------
DROP TABLE IF EXISTS `maingoods`;
CREATE TABLE `maingoods` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) NOT NULL,
  `shoptietle` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maingoods
-- ----------------------------
INSERT INTO `maingoods` VALUES ('1', 'https://img105.soolife.cn/goods/17e59ba1156365bc0c9be010256ff350.jpg', '熊猫有礼 锋味茶香鸡500g半只装无添加即食卤味 谢霆锋十二道锋味推荐 松嫩爽口 回味无穷【产地发货，全国包邮】', '58.00');
INSERT INTO `maingoods` VALUES ('2', 'https://img101.soolife.cn/goods/78d47dbe8e63e9a770c432245b5a9946.jpg', '丹尼尔惠灵顿 (DanielWellington) 手表DW女表32mm金色边黑盘皮带女士手表学生手表 DW00100168', '335.00');
INSERT INTO `maingoods` VALUES ('3', 'https://img108.soolife.cn/goods/13cf9a61da188a98dba24f85a4184941.jpg', '时语一方新款不规则条纹衬衫S17SS044', '289.00');
INSERT INTO `maingoods` VALUES ('4', 'https://img103.soolife.cn/goods/9155682e3e1c7273f04a5fce10c9ce9a.jpg', '督洋美腿摩力靴TF-657 抖动舒压按摩护脚', '2100.00');
INSERT INTO `maingoods` VALUES ('5', 'https://img106.soolife.cn/goods/4f5850dc88c0987965d476d00f458be5.jpg', '儿忒丝像素公仔雾霾防护口罩（KF80）', '16.00');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shoptietle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `where` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', 'https://d3.soolife.cn/images/57167b27667f310c405c77a19e9e6adf.jpg', 'oleana优雅蕾丝铅笔裙55%棉45%锦纶 85F', '2205.00', 'Oleana旗舰店');
INSERT INTO `shangpin` VALUES ('2', 'https://d2.soolife.cn/images/d390a419f1e44a235eb110c3770259e5.jpg', 'oleana精美真丝绸缎复古褶裥裙100%桑蚕丝 86O', '4410.00', 'Oleana旗舰店');
INSERT INTO `shangpin` VALUES ('3', 'https://d2.soolife.cn/images/63669e32d823b91bd17beba2f52f9d02.jpg', '糊涂', '107.00', '测试商家的店铺');
INSERT INTO `shangpin` VALUES ('4', 'https://d3.soolife.cn/images/ee21f2c61d3a5a6bbcf56c5e13b8b497.jpg', 'oleana腰部褶皱侧翼口袋麻裙100%亚麻 88QG', '3555.00', 'Oleana旗舰店');
INSERT INTO `shangpin` VALUES ('5', 'https://d2.soolife.cn/images/22b9dd286cbb6b8c74c9544de146cda4.jpg', 'elleozhang 半身鱼尾短裙2301704026001', '119.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('6', 'https://d3.soolife.cn/images/f77280fcc60afb7fdc22754804ce0bc5.jpg', 'oleana真丝羊毛立体花色铅笔裙 306C', '2456.00', 'Oleana旗舰店');
INSERT INTO `shangpin` VALUES ('7', 'https://d1.soolife.cn/images/acba1aca028587618de46dcc975d23ba.jpg', 'MAKOI RYU 灰色高腰半身裙 2017SK01', '888.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('8', 'https://d2.soolife.cn/images/ea08ab6abb01d40c05e08f8ef2c7fe64.jpg', '韩都衣舍2018新款女装春装韩版显瘦短裙a字裙半身裙女IG8083僥', '136.00', '韩都衣舍旗舰店');
INSERT INTO `shangpin` VALUES ('9', 'https://d2.soolife.cn/images/0a61e8327d02330caac7fb032f018ee6.jpg', 'elleozhang 无缝半身长裙2301704018002', '209.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('10', 'https://d3.soolife.cn/images/677f0ac3ced3d984734241bfaf8c84f8.jpg', 'Elleozhang女装短款鱼尾裙2301704014002', '179.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('11', 'https://d3.soolife.cn/images/d6d1e0b615cad83d1006be8823898bc4.jpg', '时语一方新款网纱半裙S17SS011', '167.00', 'Shiyu品牌旗舰店');
INSERT INTO `shangpin` VALUES ('12', 'https://d3.soolife.cn/images/cd911e96cc641d3d7f9fcfcd2bd49e49.jpg', 'Elleozhang 修身细背带裤 22002219007 黑色', '145.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('13', 'https://d3.soolife.cn/images/9a7e147c10da022f3cd584926add3ccf.jpg', 'Misazal蕾丝双层礼服包臀半裙MSS18008-BK', '134.00', 'Misazal米莲莎官方旗舰店');
INSERT INTO `shangpin` VALUES ('14', 'https://d1.soolife.cn/images/0628a863236e66eba395f312021c6a54.jpg', '半身裙夏季欧美女装鱼尾短裙时尚百搭荷叶边包臀裙2301704038001', '178.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('15', 'https://d1.soolife.cn/images/67b94daf78a2b42e405bb2f12c461f4b.jpg', '雪花修型包臀半身裙', '189.00', 'Misazal米莲莎官方旗舰店');
INSERT INTO `shangpin` VALUES ('16', 'https://d3.soolife.cn/images/cd911e96cc641d3d7f9fcfcd2bd49e49.jpg', 'Elleozhang 修身细背带裤 22002219007 黑色', '197.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('17', 'https://d1.soolife.cn/images/b823a2e6e10c863462c1b54b71faba27.jpg', '时语一方新款牛仔短裙S17SS033', '156.00', 'Shiyu品牌旗舰店');
INSERT INTO `shangpin` VALUES ('18', 'https://d2.soolife.cn/images/f13218363eff24dba9d752093d13cf2d.jpg', '时语一方新款中长款半身裙S17SS006', '235.00', 'Shiyu品牌旗舰店');
INSERT INTO `shangpin` VALUES ('19', 'https://d3.soolife.cn/images/677f0ac3ced3d984734241bfaf8c84f8.jpg', 'Elleozhang女装短款鱼尾裙2301704014002', '245.00', '红人衣橱');
INSERT INTO `shangpin` VALUES ('20', 'https://d1.soolife.cn/images/2741270c0c0831a15778d494d89ddb77.jpg', 'MAKOI RYU 灰色高腰半身裙 2017SK01', '213.00', '红人衣橱');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) NOT NULL,
  `shoptietle` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `settime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1', 'images/22.jpg', '汇仁 汇仁  肾宝片 126片', '158.00', '2018-10-16 20:55:31');
INSERT INTO `shangpinxinxi` VALUES ('8', 'images/23.jpg', '扬子鳄鱼肉 一片800', '800.00', '2018-10-16 21:17:02');
INSERT INTO `shangpinxinxi` VALUES ('2', 'images/23.jpg', '海正 来利 奥利司他片 24片', '145.00', '2018-10-16 20:55:34');
INSERT INTO `shangpinxinxi` VALUES ('7', 'images/22.jpg', '汇仁 汇仁 肾补片  176片', '198.00', '2018-10-16 21:16:10');
INSERT INTO `shangpinxinxi` VALUES ('3', 'https://img01.j1.com/upload/gs/20170321/46716_5_200x200.jpg', '开浦兰  左乙拉西坦片 30片', '166.00', '2018-10-15 19:35:44');
INSERT INTO `shangpinxinxi` VALUES ('4', 'https://img01.j1.com/upload/goods/200-200/46259/46259_0.jpg', '信谊 泰尔丝 异维A酸软胶囊 20粒', '346.00', '2018-10-15 19:36:21');
INSERT INTO `shangpinxinxi` VALUES ('5', 'https://img01.j1.com/upload/gs/20151220/49573_0_200x200.jpg', '东泰 华蟾素胶囊 18粒', '178.00', '2018-10-15 19:38:56');
INSERT INTO `shangpinxinxi` VALUES ('6', 'https://img01.j1.com/upload/gs/20170103/108625_0_200x200.jpg', '扬子江 兰迪 苯磺酸氨氯地平片 28片', '145.00', '2018-10-15 19:51:39');
INSERT INTO `shangpinxinxi` VALUES ('9', 'images/24.jpg', '越南打野肉  10盒装 100克', '399.00', '2018-10-16 21:18:08');
INSERT INTO `shangpinxinxi` VALUES ('10', 'images/25.jpg', '麻辣香锅 蛤蟆炖小鸡300', '466.00', '2018-10-16 21:18:57');
INSERT INTO `shangpinxinxi` VALUES ('11', 'images/26.jpg', '老字号鳄鱼肉 一片599', '599.00', '2018-11-06 09:01:59');

-- ----------------------------
-- Table structure for zuce
-- ----------------------------
DROP TABLE IF EXISTS `zuce`;
CREATE TABLE `zuce` (
  `unname` varchar(55) CHARACTER SET latin1 NOT NULL,
  `password2` varchar(255) NOT NULL,
  `yonghuming` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuce
-- ----------------------------
INSERT INTO `zuce` VALUES ('11111111111', '11111111', '1');
INSERT INTO `zuce` VALUES ('14144444444', '44444444', 'qie');
INSERT INTO `zuce` VALUES ('15078097896', '11111111', 'xiaoda');
INSERT INTO `zuce` VALUES ('18888888888', '33333333', '1');
INSERT INTO `zuce` VALUES ('19191919191', '11111111', '1');
INSERT INTO `zuce` VALUES ('13131313131', '111111111', '11');
INSERT INTO `zuce` VALUES ('11111111111', '111111111', '111111111');
INSERT INTO `zuce` VALUES ('15078097896', '11111111', 'xiaoda');
SET FOREIGN_KEY_CHECKS=1;
