/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : db01

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-11-06 15:09:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `authority_content` varchar(50) NOT NULL COMMENT '权限详情',
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('1', '修改会员密码');
INSERT INTO `authority` VALUES ('2', '浏览所有商品信息');
INSERT INTO `authority` VALUES ('3', '购买商品');
INSERT INTO `authority` VALUES ('4', '浏览自己的订单信息 ');
INSERT INTO `authority` VALUES ('5', '退出');
INSERT INTO `authority` VALUES ('6', '浏览所有订单信息');
INSERT INTO `authority` VALUES ('7', '浏览未处理的订单');
INSERT INTO `authority` VALUES ('8', '处理订单');
INSERT INTO `authority` VALUES ('9', '添加商品');
INSERT INTO `authority` VALUES ('10', '修改商品状态');
INSERT INTO `authority` VALUES ('11', '修改会员密码');
INSERT INTO `authority` VALUES ('12', '浏览所有商品信息');
INSERT INTO `authority` VALUES ('13', '购买商品');
INSERT INTO `authority` VALUES ('14', '浏览自己的订单信息');
INSERT INTO `authority` VALUES ('15', '管理用户');
INSERT INTO `authority` VALUES ('16', '修改管理员信息');

-- ----------------------------
-- Table structure for huihui
-- ----------------------------
DROP TABLE IF EXISTS `huihui`;
CREATE TABLE `huihui` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) DEFAULT NULL,
  `book_picture_url` text,
  `book_price` float(20,2) DEFAULT NULL,
  `book_url` varchar(255) DEFAULT NULL,
  `mall_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huihui
-- ----------------------------
INSERT INTO `huihui` VALUES ('1', '53五三初中历史七年级下册人教版2019版初中同步5年中考3年模拟', 'http://img3m6.ddimg.cn/31/35/26481046-1_b_4.jpg', '31.80', 'http://product.dangdang.com/26481046.html', '1');
INSERT INTO `huihui` VALUES ('2', '雪国（唯美诺贝尔奖作品，教育部推荐大学生必读书目，全新精装版）', 'http://img3m4.ddimg.cn/8/35/23301044-1_b_2.jpg', '32.00', 'http://product.dangdang.com/23301044.html', '1');
INSERT INTO `huihui` VALUES ('3', '53五三初中地理七年级下册人教版2019版初中同步5年中考3年模拟适用于2019春', 'http://img3m1.ddimg.cn/33/4/26317401-1_b_2.jpg', '31.80', 'http://product.dangdang.com/26317401.html', '1');
INSERT INTO `huihui` VALUES ('4', '牛津英汉双解小词典(第9版)——英国小学生几乎人手一册的词典，软皮便携', 'http://img3m9.ddimg.cn/14/31/20305409-1_b_1.jpg', '31.90', 'http://product.dangdang.com/20305409.html', '1');
INSERT INTO `huihui` VALUES ('5', '冒险大迷宫(共4册)(日)香川元太郎著;杨柳译【文轩正版图书】', 'http://img3m7.ddimg.cn/89/11/1084767047-1_b_8.jpg', '64.00', 'http://product.dangdang.com/1084767047.html', '1');
INSERT INTO `huihui` VALUES ('6', '光与影（荣获第63届直木文学奖，松本清张、水上勉、海音寺潮五郎好评力荐）渡边淳一文学的原点之作日本*文学奖直木奖获奖作品关于命运和与人性关于死亡与热爱关于病痛与尊严关于爱情与复仇', 'http://img3m1.ddimg.cn/20/25/25283531-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25283531.html', '1');
INSERT INTO `huihui` VALUES ('7', '挪威的森林（精装，村上春树影响几代读者的畅销青春名作，特有的感伤和孤独）村上新作《刺杀骑士团长》2月5日开启预售！村上春树影响几代读者的畅销青春名作。一个离乡背井的大学生，在两个少女间徘徊。彻头彻尾的现实笔法，特有的感伤和孤独气氛，回顾逝去的青春风景。', 'http://img3m2.ddimg.cn/92/10/23484872-1_b_0.jpg', '48.00', 'http://product.dangdang.com/23484872.html', '1');
INSERT INTO `huihui` VALUES ('8', '荷花镇的早市（2018版丰子恺儿童图画书奖“优秀儿童图画书奖”）“这是一本具有中国风格的绘本，它是中国绘本的优美开端。”——著名儿童文学作家曹文轩', 'http://img3m3.ddimg.cn/32/33/25304333-1_b_3.jpg', '42.80', 'http://product.dangdang.com/25304333.html', '1');
INSERT INTO `huihui` VALUES ('9', '53五三初中道德与法治八年级下册人教版2019版初中同步5年中考3年模拟适用于2019春', 'http://img3m0.ddimg.cn/56/11/25858460-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25858460.html', '1');
INSERT INTO `huihui` VALUES ('12', '53天天练同步试卷53全优卷小学语文一年级下RJ（人教版）2019年春因教材变动而引起的部分出处详见内容简介', 'http://img3m8.ddimg.cn/44/36/25858448-1_b_2.jpg', '32.00', 'http://product.dangdang.com/25858448.html', '1');
INSERT INTO `huihui` VALUES ('13', '知行合一王阳明（1472-1529）道破天机！深入解读知行合一及其创始人王阳明的通俗全传！通过讲述王阳明的辉煌传奇，为您剖析知行合一的无边威力。读客熊猫君出品', 'http://img3m3.ddimg.cn/93/13/23492793-1_b_6.jpg', '36.00', 'http://product.dangdang.com/23492793.html', '1');
INSERT INTO `huihui` VALUES ('14', '53天天练同步试卷53全优卷小学语文三年级下RJ（人教版）2019年春', 'http://img3m8.ddimg.cn/30/1/26317398-1_b_2.jpg', '32.00', 'http://product.dangdang.com/26317398.html', '1');
INSERT INTO `huihui` VALUES ('15', '零售的哲学:7-Eleven便利店创始人自述(团购电话4001066666转6)消费即是心理战，零售更是与消费者面对面的心理肉搏战。7-Eleven便利店创始人、日本“新经营之神”铃木敏文，结合40多年零售经验，为你讲述无论卖什么都能大卖的零售哲学。读客熊猫君出品', 'http://img3m0.ddimg.cn/95/22/23612090-1_b_1.jpg', '36.00', 'http://product.dangdang.com/23612090.html', '1');
INSERT INTO `huihui` VALUES ('16', '雪岗中国历史故事集（珍藏版）', 'http://img3m8.ddimg.cn/27/30/23810418-1_b_1.jpg', '61.00', 'http://product.dangdang.com/23810418.html', '1');
INSERT INTO `huihui` VALUES ('17', '53五三高中化学必修2人教版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m1.ddimg.cn/53/20/25349201-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25349201.html', '1');
INSERT INTO `huihui` VALUES ('18', '天空的绘本（2019版）给孩子一双发现美的眼睛，学会用心去感受生活的细节与诗意。林格伦纪念儿童文学奖得主荒井良二、抒情诗人长田弘共同打造的绘本力作。（飓风社绘本）', 'http://img3m2.ddimg.cn/2/32/26492402-1_b_3.jpg', '39.50', 'http://product.dangdang.com/26492402.html', '1');
INSERT INTO `huihui` VALUES ('19', '53天天练同步试卷53全优卷小学语文二年级下RJ（人教版）2019年春因教材变动而引起的部分出处详见内容简介', 'http://img3m0.ddimg.cn/76/14/26194090-1_b_3.jpg', '32.00', 'http://product.dangdang.com/26194090.html', '1');
INSERT INTO `huihui` VALUES ('20', '三毛全集03：稻草人手记三毛“后撒哈拉”时代爱的注脚', 'http://img3m6.ddimg.cn/65/4/24216356-1_b_3.jpg', '32.00', 'http://product.dangdang.com/24216356.html', '1');
INSERT INTO `huihui` VALUES ('21', '2019春阳光同学课时优化作业数学RJ人教版三年级下册', 'http://img3m9.ddimg.cn/54/29/26439489-1_b_2.jpg', '31.80', 'http://product.dangdang.com/26439489.html', '1');
INSERT INTO `huihui` VALUES ('22', '泰戈尔诗选（教育部统编《语文》推荐阅读丛书）泰戈尔诗选/人民文学出版社2018版/教育部统编语文教材/新课标推荐必读/版本完善，编校精良，助力成长', 'http://img3m1.ddimg.cn/11/10/25307381-1_b_2.jpg', '32.00', 'http://product.dangdang.com/25307381.html', '1');
INSERT INTO `huihui` VALUES ('23', '2019春阳光同学课时优化作业数学RJ人教版二年级下册', 'http://img3m8.ddimg.cn/53/28/26439488-1_b_3.jpg', '31.80', 'http://product.dangdang.com/26439488.html', '1');
INSERT INTO `huihui` VALUES ('24', '53天天练同步试卷53全优卷小学数学一年级下RJ（人教版）2019年春', 'http://img3m4.ddimg.cn/40/32/25858444-1_b_2.jpg', '32.00', 'http://product.dangdang.com/25858444.html', '1');
INSERT INTO `huihui` VALUES ('25', '理想树2019新版高考必刷题分题型强化文综选择题高考二轮复习用书67高考自主复习刷题型刷提分刷命题率', 'http://img3m1.ddimg.cn/34/11/25546291-1_b_2.jpg', '31.80', 'http://product.dangdang.com/25546291.html', '1');
INSERT INTO `huihui` VALUES ('26', '2019春阳光同学课时优化作业数学RJ人教版一年级下册', 'http://img3m2.ddimg.cn/57/32/26439492-1_b_3.jpg', '31.80', 'http://product.dangdang.com/26439492.html', '1');
INSERT INTO `huihui` VALUES ('27', '53五三高中数学必修4人教A版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m0.ddimg.cn/33/36/25319580-1_b_2.jpg', '31.80', 'http://product.dangdang.com/25319580.html', '1');
INSERT INTO `huihui` VALUES ('28', '理想树67高考2019新版高中必刷题数学必修4人教版配同步讲解狂K重点', 'http://img3m0.ddimg.cn/16/15/25336690-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25336690.html', '1');
INSERT INTO `huihui` VALUES ('29', '53五三高中数学选修2-2人教A版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m3.ddimg.cn/88/8/25269343-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25269343.html', '1');
INSERT INTO `huihui` VALUES ('30', '毛泽东诗词鉴赏（珍藏版）它既得到了一般读者的喜爱，称之为优秀畅销书；又得到了专家学者的高度评价，称之为20世纪中国毛诗词研究的优秀代表作之一。', 'http://img3m4.ddimg.cn/96/9/25245294-1_b_1.jpg', '39.00', 'http://product.dangdang.com/25245294.html', '1');
INSERT INTO `huihui` VALUES ('31', '古籍校勘方法论中华书局出版。', 'http://img3m8.ddimg.cn/17/27/26512118-1_b_1.jpg', '39.00', 'http://product.dangdang.com/26512118.html', '1');
INSERT INTO `huihui` VALUES ('32', '53五三初中化学九年级下册人教版2019版初中同步5年中考3年模拟曲一线科学备考适用于2019春', 'http://img3m7.ddimg.cn/39/6/25349187-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25349187.html', '1');
INSERT INTO `huihui` VALUES ('33', '蓝宝书.新日本语能力考试N2文法（详解+练习）经典畅销系列、全新修订版本', 'http://img3m9.ddimg.cn/36/3/21045159-1_b_24.jpg', '36.00', 'http://product.dangdang.com/21045159.html', '1');
INSERT INTO `huihui` VALUES ('34', '三毛全集07：送你一匹马三毛回台定居后的沉潜之作，如梦幻骑士般，访遍灵魂的角落。', 'http://img3m6.ddimg.cn/93/35/24242916-1_b_3.jpg', '32.00', 'http://product.dangdang.com/24242916.html', '1');
INSERT INTO `huihui` VALUES ('35', '用户体验要素：以用户为中心的产品设计（原书第2版）（决战大数据时代！IT技术人员不得不读！）', 'http://img3m0.ddimg.cn/18/8/21110580-1_b_2.jpg', '39.00', 'http://product.dangdang.com/21110580.html', '1');
INSERT INTO `huihui` VALUES ('36', '超越感觉：批判性思考指南（第九版）', 'http://img3m9.ddimg.cn/75/20/23621079-1_b_4.jpg', '38.80', 'http://product.dangdang.com/23621079.html', '1');
INSERT INTO `huihui` VALUES ('37', '2019春阳光同学课时优化作业数学RJ人教版五年级下册', 'http://img3m1.ddimg.cn/56/31/26439491-1_b_3.jpg', '31.80', 'http://product.dangdang.com/26439491.html', '1');
INSERT INTO `huihui` VALUES ('38', '53天天练同步试卷53全优卷小学数学三年级下RJ（人教版）2019年春', 'http://img3m1.ddimg.cn/37/29/25858441-1_b_2.jpg', '32.00', 'http://product.dangdang.com/25858441.html', '1');
INSERT INTO `huihui` VALUES ('39', '当你开始爱自己，全世界都会来爱你“壹心理”“好报”联合力荐，杨澜《天下女人》签约专家，文章被转载于张德芬空间、武志红、十点读书、罗辑思维、豆瓣等各百万级自媒体，温暖相伴5000万读者，陪伴亲密关系、亲子关系，自我关系', 'http://img3m9.ddimg.cn/9/17/25086609-1_b_5.jpg', '39.00', 'http://product.dangdang.com/25086609.html', '1');
INSERT INTO `huihui` VALUES ('40', '剑桥中级英语语法(英语在用丛书)——全球销量超千万册，学练结合，学以致用', 'http://img3m9.ddimg.cn/38/28/352379-1_b_0.jpg', '33.00', 'http://product.dangdang.com/352379.html', '1');
INSERT INTO `huihui` VALUES ('41', '53天天练同步试卷53全优卷小学数学二年级下RJ（人教版）2019年春', 'http://img3m9.ddimg.cn/35/27/25858439-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25858439.html', '1');
INSERT INTO `huihui` VALUES ('42', '你好，安东医生（2018版）轻松幽默的医院故事，让孩子哈哈大笑的同时，减轻对上医院、打针吃药的恐惧（飓风社绘本)', 'http://img3m6.ddimg.cn/60/4/25280106-1_b_2.jpg', '39.50', 'http://product.dangdang.com/25280106.html', '1');
INSERT INTO `huihui` VALUES ('43', '美国金宝贝早教婴儿游戏0~1岁全美畅销13年，开发智商+情商+艺术潜能+运动潜能', 'http://img3m1.ddimg.cn/2/1/22790891-1_b_0.jpg', '45.00', 'http://product.dangdang.com/22790891.html', '1');
INSERT INTO `huihui` VALUES ('44', '西厢记(教育部统编《语文》推荐阅读丛书)教育部统编语文教材/新课标推荐必读/版本完善，编校精良，助力成长', 'http://img3m3.ddimg.cn/93/12/25283703-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25283703.html', '1');
INSERT INTO `huihui` VALUES ('45', '人大附中高考作文取胜之道（首都名师于树泉教你写满分作文）', 'http://img3m8.ddimg.cn/58/35/23425438-1_b_0.jpg', '33.80', 'http://product.dangdang.com/23425438.html', '1');
INSERT INTO `huihui` VALUES ('46', '最强大脑:写给中国人的记忆魔法书(第2版)（当当独家签名版）世界记忆总冠军，《*强大脑》中国战队队长王峰畅销力作全新升级，1版畅销14万余册，教你快速提升学习成绩', 'http://img3m4.ddimg.cn/61/11/25226944-1_b_3.jpg', '45.00', 'http://product.dangdang.com/25226944.html', '1');
INSERT INTO `huihui` VALUES ('47', '康震讲诗仙李白中华书局出版', 'http://img3m8.ddimg.cn/55/23/25224958-1_b_3.jpg', '39.00', 'http://product.dangdang.com/25224958.html', '1');
INSERT INTO `huihui` VALUES ('48', '高难度谈话2018年新版（如何化解棘手局面？哈佛谈判小组15年潜心研究成果，白宫1600高官必读教材，语言沟通类经典之作。2011年十大成功励志图书。哈佛大学MBA沟通训练必读书，麻省理工推荐书目）（双螺旋文化）', 'http://img3m7.ddimg.cn/36/23/25212267-1_b_5.jpg', '45.00', 'http://product.dangdang.com/25212267.html', '1');
INSERT INTO `huihui` VALUES ('49', '名人传(教育部统编《语文》推荐阅读丛书)教育部统编语文教材/新课标推荐必读/版本完善，编校精良，助力成长', 'http://img3m8.ddimg.cn/19/0/25283728-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25283728.html', '1');
INSERT INTO `huihui` VALUES ('50', '林徽因传（最新修订本）中华书局出版。畅销十年，好评如潮！全面呈现林徽因为了爱与信仰，无与伦比的一生。', 'http://img3m7.ddimg.cn/9/22/23809707-1_b_1.jpg', '39.00', 'http://product.dangdang.com/23809707.html', '1');
INSERT INTO `huihui` VALUES ('51', '《黄帝内经》中的经筋美颜术', 'http://img3m3.ddimg.cn/33/7/26490453-1_b_0.jpg', '39.00', 'http://product.dangdang.com/26490453.html', '1');
INSERT INTO `huihui` VALUES ('52', '中国地图册世界地图册（全新政区版）荣获地图全行业优秀畅销书奖，连续多年畅销，外中对照，是认识世界、了解中国的地图工具书。内含省区地图、城市图、特色街道图、旅游景点图。', 'http://img3m4.ddimg.cn/27/15/23611824-1_b_2.jpg', '53.00', 'http://product.dangdang.com/23611824.html', '1');
INSERT INTO `huihui` VALUES ('53', '瞬间渡边淳一婚恋题材小说的“呐喊”之作，现代人在爱与死边缘挣扎的真实写照。', 'http://img3m9.ddimg.cn/56/22/25290299-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25290299.html', '1');
INSERT INTO `huihui` VALUES ('54', '53天天练同步试卷53全优卷小学数学五年级下RJ（人教版）2019年春', 'http://img3m3.ddimg.cn/39/31/25858443-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25858443.html', '1');
INSERT INTO `huihui` VALUES ('55', '53五三高中政治必修2人教版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m9.ddimg.cn/29/0/25343039-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25343039.html', '1');
INSERT INTO `huihui` VALUES ('56', '53天天练同步试卷53全优卷小学数学四年级下RJ（人教版）2019年春', 'http://img3m2.ddimg.cn/38/30/25858442-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25858442.html', '1');
INSERT INTO `huihui` VALUES ('57', '53天天练同步试卷53全优卷小学语文四年级下RJ（人教版）2019年春因教材变动而引起的部分出入详见内容简介', 'http://img3m1.ddimg.cn/77/15/26194091-1_b_3.jpg', '32.00', 'http://product.dangdang.com/26194091.html', '1');
INSERT INTO `huihui` VALUES ('58', '2019版王后雄化学选修5教材完全解读有机化学基础化学选修五5课本通用配套人教版教辅辅导书王后雄化学选修5', 'http://img3m7.ddimg.cn/35/19/1027019897-1_b_2.jpg', '38.70', 'http://product.dangdang.com/1027019897.html', '1');
INSERT INTO `huihui` VALUES ('59', '53五三初中历史七年级下册人教版2019版初中同步5年中考3年模拟', 'http://img3m6.ddimg.cn/31/35/26481046-1_b_4.jpg', '31.80', 'http://product.dangdang.com/26481046.html', '1');
INSERT INTO `huihui` VALUES ('60', '雪国（唯美诺贝尔奖作品，教育部推荐大学生必读书目，全新精装版）', 'http://img3m4.ddimg.cn/8/35/23301044-1_b_2.jpg', '32.00', 'http://product.dangdang.com/23301044.html', '1');
INSERT INTO `huihui` VALUES ('61', '53五三初中地理七年级下册人教版2019版初中同步5年中考3年模拟适用于2019春', 'http://img3m1.ddimg.cn/33/4/26317401-1_b_2.jpg', '31.80', 'http://product.dangdang.com/26317401.html', '1');
INSERT INTO `huihui` VALUES ('62', '光与影（荣获第63届直木文学奖，松本清张、水上勉、海音寺潮五郎好评力荐）渡边淳一文学的原点之作日本*文学奖直木奖获奖作品关于命运和与人性关于死亡与热爱关于病痛与尊严关于爱情与复仇', 'http://img3m1.ddimg.cn/20/25/25283531-1_b_3.jpg', '32.00', 'http://product.dangdang.com/25283531.html', '1');
INSERT INTO `huihui` VALUES ('63', '让孩子着迷的77×2个经典科学游戏（2018版）易烊千玺推荐，入选中国小学生基础阅读书目、全国少年儿童阅读年推荐书目、中国百所名校小学生阅读书目、“中国童书金奖”评选优秀少儿游戏益智图书——爱心树童书出品', 'http://img3m6.ddimg.cn/52/13/25296136-1_b_3.jpg', '39.00', 'http://product.dangdang.com/25296136.html', '1');
INSERT INTO `huihui` VALUES ('64', '全脑开发聪明贴纸书3-4岁（全六册）', 'http://img3m4.ddimg.cn/14/20/23723384-1_b_1.jpg', '57.00', 'http://product.dangdang.com/23723384.html', '1');
INSERT INTO `huihui` VALUES ('65', '荷花镇的早市（2018版丰子恺儿童图画书奖“优秀儿童图画书奖”）“这是一本具有中国风格的绘本，它是中国绘本的优美开端。”——著名儿童文学作家曹文轩', 'http://img3m3.ddimg.cn/32/33/25304333-1_b_3.jpg', '42.80', 'http://product.dangdang.com/25304333.html', '1');
INSERT INTO `huihui` VALUES ('66', '53五三初中道德与法治八年级下册人教版2019版初中同步5年中考3年模拟适用于2019春', 'http://img3m0.ddimg.cn/56/11/25858460-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25858460.html', '1');
INSERT INTO `huihui` VALUES ('67', '不能承受的生命之轻（米兰·昆德拉作品全新系列）', 'http://img3m9.ddimg.cn/31/16/23552329-1_b_4.jpg', '46.00', 'http://product.dangdang.com/23552329.html', '1');
INSERT INTO `huihui` VALUES ('68', '神笔马良+愿望的实现+七色花统编小学语文教材（二年级下）快乐读书吧推荐书目', 'http://img3m8.ddimg.cn/0/7/25580808-1_b_3.jpg', '38.00', 'http://product.dangdang.com/25580808.html', '1');
INSERT INTO `huihui` VALUES ('69', '知行合一王阳明（1472-1529）道破天机！深入解读知行合一及其创始人王阳明的通俗全传！通过讲述王阳明的辉煌传奇，为您剖析知行合一的无边威力。读客熊猫君出品', 'http://img3m3.ddimg.cn/93/13/23492793-1_b_6.jpg', '36.00', 'http://product.dangdang.com/23492793.html', '1');
INSERT INTO `huihui` VALUES ('70', '初中语文课外阅读读本八年级下配套教育部统编初中语文八年级教材的同步阅读读本，配有朗读音频。全国著名语文教师郭初阳，浙江省正高级特级教师张霞儿，浙江省优秀教研员章新其推荐', 'http://img3m9.ddimg.cn/77/20/26492279-1_b_2.jpg', '36.00', 'http://product.dangdang.com/26492279.html', '1');
INSERT INTO `huihui` VALUES ('71', '三国演义毛宗岗精评本中国古典文学四大名著无障碍阅读原著无删减版三国演义学会副会长沈伯俊作序并推荐中小学生指定正版权威经典读物', 'http://img3m3.ddimg.cn/77/3/24183203-1_b_3.jpg', '38.00', 'http://product.dangdang.com/24183203.html', '1');
INSERT INTO `huihui` VALUES ('72', '零售的哲学:7-Eleven便利店创始人自述(团购电话4001066666转6)消费即是心理战，零售更是与消费者面对面的心理肉搏战。7-Eleven便利店创始人、日本“新经营之神”铃木敏文，结合40多年零售经验，为你讲述无论卖什么都能大卖的零售哲学。读客熊猫君出品', 'http://img3m0.ddimg.cn/95/22/23612090-1_b_1.jpg', '36.00', 'http://product.dangdang.com/23612090.html', '1');
INSERT INTO `huihui` VALUES ('73', '雪岗中国历史故事集（珍藏版）', 'http://img3m8.ddimg.cn/27/30/23810418-1_b_1.jpg', '61.00', 'http://product.dangdang.com/23810418.html', '1');
INSERT INTO `huihui` VALUES ('74', '53五三高中化学必修2人教版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m1.ddimg.cn/53/20/25349201-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25349201.html', '1');
INSERT INTO `huihui` VALUES ('75', '失传的营养学:远离疾病（最新版）《失传的营养学》公开出版7年来，作者所倡导的营养医学的观念愈来愈深入人心，正版畅销50万册，抄袭盗版无数，正可谓一直被模仿，从未被超越。本书将引发临床医生和科研人员深刻的头脑革命，也将改变世界健康产', 'http://img3m5.ddimg.cn/35/7/25273745-1_b_3.jpg', '46.00', 'http://product.dangdang.com/25273745.html', '1');
INSERT INTO `huihui` VALUES ('76', '三毛全集03：稻草人手记三毛“后撒哈拉”时代爱的注脚', 'http://img3m6.ddimg.cn/65/4/24216356-1_b_3.jpg', '32.00', 'http://product.dangdang.com/24216356.html', '1');
INSERT INTO `huihui` VALUES ('77', '2019春阳光同学课时优化作业数学RJ人教版三年级下册', 'http://img3m9.ddimg.cn/54/29/26439489-1_b_2.jpg', '31.80', 'http://product.dangdang.com/26439489.html', '1');
INSERT INTO `huihui` VALUES ('78', '2019春阳光同学课时优化作业数学RJ人教版二年级下册', 'http://img3m8.ddimg.cn/53/28/26439488-1_b_3.jpg', '31.80', 'http://product.dangdang.com/26439488.html', '1');
INSERT INTO `huihui` VALUES ('79', '刀锋（毛姆经典哲思之作，苏州大学方华文教授全新修订&详细注释本）（抖音推荐20岁必读书单）一剂良方，给陷于人生迷茫的你。“超会讲故事的小说家”毛姆充满哲思之作，傲娇作者书写佛系人生。马尔克斯、莫言、村上春树、张爱玲一致推崇，无删减全译本，豆瓣9.0分', 'http://img3m3.ddimg.cn/24/21/25273833-1_b_1.jpg', '38.00', 'http://product.dangdang.com/25273833.html', '1');
INSERT INTO `huihui` VALUES ('80', '初中语文课外阅读读本七年级下配套教育部统编初中语文七年级教材的同步阅读读本，配有朗读音频。全国著名语文教师郭初阳，浙江省正高级特级教师张霞儿，浙江省优秀教研员章新其推荐', 'http://img3m7.ddimg.cn/91/13/26511697-1_b_3.jpg', '36.00', 'http://product.dangdang.com/26511697.html', '1');
INSERT INTO `huihui` VALUES ('81', '理想树2019新版高考必刷题分题型强化文综选择题高考二轮复习用书67高考自主复习刷题型刷提分刷命题率', 'http://img3m1.ddimg.cn/34/11/25546291-1_b_2.jpg', '31.80', 'http://product.dangdang.com/25546291.html', '1');
INSERT INTO `huihui` VALUES ('82', '2019春阳光同学课时优化作业数学RJ人教版一年级下册', 'http://img3m2.ddimg.cn/57/32/26439492-1_b_3.jpg', '31.80', 'http://product.dangdang.com/26439492.html', '1');
INSERT INTO `huihui` VALUES ('83', '学习之道高居美国亚网学习图书榜首长达一年，*受欢迎学习课learninghowtolearn主讲，《精进》作者采铜亲笔作序推荐，MIT、普渡大学、清华大学等中外数百所名校教授亲证有效', 'http://img3m2.ddimg.cn/6/5/24105912-1_b_6.jpg', '39.00', 'http://product.dangdang.com/24105912.html', '1');
INSERT INTO `huihui` VALUES ('84', '果壳中的宇宙时间只留简史世间再无霍金', 'http://img3m4.ddimg.cn/55/36/485254-1_b_1.jpg', '42.00', 'http://product.dangdang.com/485254.html', '1');
INSERT INTO `huihui` VALUES ('85', '53五三高中数学必修4人教A版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m0.ddimg.cn/33/36/25319580-1_b_2.jpg', '31.80', 'http://product.dangdang.com/25319580.html', '1');
INSERT INTO `huihui` VALUES ('86', '易经杂说南怀瑾先生讲解《易经》，深入浅出，惠泽多方。使《易经》真正成为了一本“与人人有关的书”，而“透过本书的问世，我们希望人人都能获得《易经》的帮助”。', 'http://img3m2.ddimg.cn/31/12/23686672-1_b_1.jpg', '39.00', 'http://product.dangdang.com/23686672.html', '1');
INSERT INTO `huihui` VALUES ('87', '理想树67高考2019新版高中必刷题数学必修4人教版配同步讲解狂K重点', 'http://img3m0.ddimg.cn/16/15/25336690-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25336690.html', '1');
INSERT INTO `huihui` VALUES ('88', '53五三高中数学选修2-2人教A版2019版高中同步5年高考3年模拟曲一线科学备考', 'http://img3m3.ddimg.cn/88/8/25269343-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25269343.html', '1');
INSERT INTO `huihui` VALUES ('89', '新东方中考英语语法强化训练1000题10个单元专项训练，15套强化集训，15套综合提升，1000余道题快速提升中考英语语法！（全国各地中考适用）', 'http://img3m4.ddimg.cn/45/36/25323354-1_b_3.jpg', '36.00', 'http://product.dangdang.com/25323354.html', '1');
INSERT INTO `huihui` VALUES ('90', '我的第一本思维导图作文书帮助中小学生发散思维的作文书，用思维导图法分析了胡适、鲁迅、朱自清、徐志摩、林徽因、梁遇春等大师的文章，让学生在经典散文中爱上阅读，学会写作双色印刷配有精美漫画经典文学更有趣味性孩子更有想象力', 'http://img3m6.ddimg.cn/9/13/25103736-1_b_3.jpg', '38.00', 'http://product.dangdang.com/25103736.html', '1');
INSERT INTO `huihui` VALUES ('91', '53五三初中化学九年级下册人教版2019版初中同步5年中考3年模拟曲一线科学备考适用于2019春', 'http://img3m7.ddimg.cn/39/6/25349187-1_b_3.jpg', '31.80', 'http://product.dangdang.com/25349187.html', '1');
INSERT INTO `huihui` VALUES ('92', '2019春中学教材全解七年级下册语文人教版初中语文7年级下册语文教辅导书人教版人民教育出版社7年级下册本店主营中小学教辅，同步练习册，解读教辅，试卷，字帖，作文阅读，课外阅读名著，中考、高考试卷，练习，解读教辅，如需要购买更多教辅教材联系（在线客服）。欢迎进店选购！', 'http://img3m6.ddimg.cn/59/23/1069999286-1_b_6.jpg', '37.80', 'http://product.dangdang.com/1069999286.html', '1');
INSERT INTO `huihui` VALUES ('93', '三毛全集07：送你一匹马三毛回台定居后的沉潜之作，如梦幻骑士般，访遍灵魂的角落。', 'http://img3m6.ddimg.cn/93/35/24242916-1_b_3.jpg', '32.00', 'http://product.dangdang.com/24242916.html', '1');
INSERT INTO `huihui` VALUES ('94', '超越感觉：批判性思考指南（第九版）', 'http://img3m9.ddimg.cn/75/20/23621079-1_b_4.jpg', '38.80', 'http://product.dangdang.com/23621079.html', '1');
INSERT INTO `huihui` VALUES ('95', '2019春阳光同学课时优化作业数学RJ人教版五年级下册', 'http://img3m1.ddimg.cn/56/31/26439491-1_b_3.jpg', '31.80', 'http://product.dangdang.com/26439491.html', '1');
INSERT INTO `huihui` VALUES ('96', '2019年春特级教案与课时作业新设计小学语文一年级下册人教版教师用书开心教程一套为一线教师量身打造的教学参考书。', 'http://img3m6.ddimg.cn/65/22/26485436-1_b_2.jpg', '40.00', 'http://product.dangdang.com/26485436.html', '1');
INSERT INTO `huihui` VALUES ('97', '魔法岁月：0~6岁孩子的精神世界“了解0~6岁孩子在不同发展阶段的生理与心理变化”、“分析孩子的焦虑、排便、自控等问题背后的深层原因”、“放下对孩子的过度保护、避免与孩子发生激烈的战争”', 'http://img3m0.ddimg.cn/93/30/23666340-1_b_0.jpg', '46.90', 'http://product.dangdang.com/23666340.html', '1');
INSERT INTO `huihui` VALUES ('98', '儒林外史统编语文教科书九年级（下）指定阅读（新课标必读新课标推荐无障碍阅读疑难字注音解词释义)', 'http://img3m9.ddimg.cn/87/18/25858689-1_b_3.jpg', '36.80', 'http://product.dangdang.com/25858689.html', '1');
INSERT INTO `huihui` VALUES ('99', '军队文职人员考试用书中公2019军队文职人员招聘考试专用辅导书公共科目高分通关题库（最新版）军队文职人员招聘考试辅导书2019·紧扣考纲精编试题专项训练·购书享有移动自习室+核心考点轻松学+在线题库任意练+考友圈答疑解惑+视频直播免费看详见图书封底', 'http://img3m5.ddimg.cn/53/31/26484335-1_b_3.jpg', '48.00', 'http://product.dangdang.com/26484335.html', '1');
INSERT INTO `huihui` VALUES ('100', '人大附中高考作文取胜之道（首都名师于树泉教你写满分作文）', 'http://img3m8.ddimg.cn/58/35/23425438-1_b_0.jpg', '33.80', 'http://product.dangdang.com/23425438.html', '1');
INSERT INTO `huihui` VALUES ('101', '2019年春特级教案与课时作业新设计小学语文二年级下册人教版教师用书开心教程一套为一线教师量身打造的教学参考书。', 'http://img3m5.ddimg.cn/64/21/26485435-1_b_2.jpg', '40.00', 'http://product.dangdang.com/26485435.html', '1');
INSERT INTO `huihui` VALUES ('102', '深入PostC Web设计 postcss入门教程 PostC插件开发 web应用程序设计教', '//img14.360buyimg.com/n7/jfs/t1/29727/34/9259/465692/5c7ca73aEc7bf9885/e4d04167c1af62c1.jpg', '96.80', '//item.jd.com/42613215969.html', '2');
INSERT INTO `huihui` VALUES ('103', '正版新书 满29包邮 超好学！黑客攻防入门全图解(附光盘)', '//img12.360buyimg.com/n7/jfs/t1/25794/18/8678/20215/5c785328E4f172b11/2e73c8a33a0a8883.jpg', '21.50', '//item.jd.com/42398383877.html', '2');
INSERT INTO `huihui` VALUES ('104', '正版书籍 Acce 2010数据库应用技术教程上机指导 赵洪帅 中国铁道出版社 大教材教辅 大学', '//img10.360buyimg.com/n7/jfs/t1/11174/19/10973/25834/5c838ecdE6456e834/b073f5b9be55820a.jpg', '30.24', '//item.jd.com/42978472600.html', '2');
INSERT INTO `huihui` VALUES ('107', '信息系统安全等级化保护原理与实践 9787115450128', '//img11.360buyimg.com/n7/jfs/t1/29881/29/9212/14884/5c7c05cbEdaafb2e4/112aed7d92268b0d.jpg', '74.20', '//item.jd.com/42595557651.html', '2');
INSERT INTO `huihui` VALUES ('108', '正版现货 光明书架绘画艺术书籍 像艺术家一样思考 白金版 艾德华著 绘画和骑单车的艺术 素描训练 记', '//img13.360buyimg.com/n7/jfs/t1/23993/14/9968/375678/5c8364f2E4fa37c01/88e3c46b0b0bca3d.jpg', '29.90', '//item.jd.com/42961375033.html', '2');
INSERT INTO `huihui` VALUES ('109', '深入浅出WebAembly 于航 核心技术原理 相关工具链的使用 WebAembly 具体开', '//img14.360buyimg.com/n7/jfs/t1/32985/22/4348/106358/5c7caff3Edec24c34/a5187c3d57ae2aba.jpg', '120.50', '//item.jd.com/42614522869.html', '2');
INSERT INTO `huihui` VALUES ('111', 'Python黑客攻防入门/图灵程序设计丛书', '//img10.360buyimg.com/n7/jfs/t1/23697/4/8612/339661/5c786833Ee4df3ebe/2b19f5de2fa34e54.jpg', '44.84', '//item.jd.com/42398765675.html', '2');
INSERT INTO `huihui` VALUES ('112', '正版书籍- 为你护航——网络空间安全科普读本', '//img14.360buyimg.com/n7/jfs/t1/22923/15/9982/26868/5c83268dE58822cff/edcbb50a0eab0afd.jpg', '21.00', '//item.jd.com/42938459494.html', '2');
INSERT INTO `huihui` VALUES ('113', '正版 物理化学教程 周鲁  教材 研究生/本科/专科教材 工学书籍 9787030541178', '//img12.360buyimg.com/n7/jfs/t1/28950/36/9333/13018/5c7cb117E040b38cc/c66aabe1fd0fa0c2.jpg', '52.90', '//item.jd.com/42614677392.html', '2');
INSERT INTO `huihui` VALUES ('114', 'Web攻防之业务安全实战指南', '//img13.360buyimg.com/n7/jfs/t1/17959/25/8609/291936/5c788162Ebbca85d1/263eb98ecbac851f.jpg', '52.44', '//item.jd.com/42399390413.html', '2');
INSERT INTO `huihui` VALUES ('115', '关键冲突 如何化人际关系危机为合作共赢 原书第2版 科里帕特森著 市场营销书籍 人际交往心理学书 际 茶色 #69', '//img10.360buyimg.com/n7/jfs/t1/29849/28/7500/354459/5c6cc2b6E11e409cb/76a6176b26fe2def.jpg', '39.00', '//item.jd.com/42399816445.html', '2');
INSERT INTO `huihui` VALUES ('116', '【高教社】 信息安全技术', '//img14.360buyimg.com/n7/jfs/t1/26250/28/9997/14267/5c82db80E0d5cf977/51e2b6e3c8102cac.jpg', '39.10', '//item.jd.com/42931744924.html', '2');
INSERT INTO `huihui` VALUES ('117', '面向云出版的语义关键技术 田萍芳 9787307155480 武汉大学出版社', '//img12.360buyimg.com/n7/jfs/t1/15305/19/9059/33676/5c7c13acE2bc5d65f/8f8a995ae2bfa436.jpg', '34.40', '//item.jd.com/42596386597.html', '2');
INSERT INTO `huihui` VALUES ('118', '算法分析导论 第2版 罗伯特 塞奇威克 算法分析入门教程 算法数学分析技术 离散数学组合 数学数据结', '//img13.360buyimg.com/n7/jfs/t1/32360/35/4334/328554/5c7cb1c7E3821ef00/edf78af02cabf6b6.jpg', '124.10', '//item.jd.com/42614853868.html', '2');
INSERT INTO `huihui` VALUES ('119', '正版新书matlab教程 MATLAB2018从入门到精通（实战案例版）matlab完全自学一本通', '//img13.360buyimg.com/n7/jfs/t1/19014/19/8715/187070/5c788b9eE1e636487/83904f2455309d1b.jpg', '99.00', '//item.jd.com/42400658123.html', '2');
INSERT INTO `huihui` VALUES ('120', '编程导论 麻省理工学院John V. Guttag著 Python语言从入门到精通 Python程序', '//img13.360buyimg.com/n7/jfs/t1/21603/15/7281/288252/5c82aecfE28fa2b7c/47eaecd4f89be93f.jpg', '57.00', '//item.jd.com/42930917168.html', '2');
INSERT INTO `huihui` VALUES ('121', 'jQuery从入门到精通 jquery 入门经典教材书籍 web 前端开发名作 jquery实战 j', '//img10.360buyimg.com/n7/jfs/t1/7326/38/16027/164225/5c788b9bEb42acb13/45aa28aac7249100.jpg', '88.00', '//item.jd.com/42400660200.html', '2');
INSERT INTO `huihui` VALUES ('123', '现货 科学 现代工程图学 第二版 第2版 机械类 近机械类适用 刘苏 新形态教材 动画模型演示精', '//img13.360buyimg.com/n7/jfs/t1/28383/33/8701/262099/5c7892e1E73c253be/175ff2e8f9993bfa.jpg', '56.70', '//item.jd.com/42402547323.html', '2');
INSERT INTO `huihui` VALUES ('124', '区块链超入门 书籍图书', '//img11.360buyimg.com/n7/jfs/t1/18091/2/6159/40533/5c76307eE356f61f7/1b3dc1723e3f254d.jpg', '67.60', '//item.jd.com/42930419546.html', '2');
INSERT INTO `huihui` VALUES ('125', '稀缺《黑客攻防大曝光 社会工程学 计算机黑客攻防 移动黑客攻防技术揭秘》 知雨科技 黑客攻', '//img13.360buyimg.com/n7/jfs/t1/15168/27/8911/19533/5c7981f1E3c8bab0b/50abe301f152a5dc.jpg', '343.00', '//item.jd.com/42469640868.html', '2');
INSERT INTO `huihui` VALUES ('126', '吴冠中2005年作品年鉴', '//img13.360buyimg.com/n7/jfs/t1/28909/2/9215/33822/5c7c831eE420116c1/333ecf3b4834cb5e.jpg', '116.00', '//item.jd.com/42600799703.html', '2');
INSERT INTO `huihui` VALUES ('127', '【出版社直供】中国互联网发展报告2018', '//img11.360buyimg.com/n7/jfs/t1/16612/30/9142/171526/5c7baaebE12100e6b/d70af7d638255f37.jpg', '166.00', '//item.jd.com/42928844711.html', '2');
INSERT INTO `huihui` VALUES ('128', 'Kali Linux无线渗透测试指南 第3版', '//img12.360buyimg.com/n7/jfs/t1/20878/19/8992/17314/5c7cb523Ef44ad3eb/2e7aed2824ccb847.jpg', '41.65', '//item.jd.com/42615478217.html', '2');
INSERT INTO `huihui` VALUES ('129', '中文Windows XP操作系统(附光盘2016年-20', '//img11.360buyimg.com/n7/jfs/t1/26815/19/8713/102318/5c789e9dE4bdf90af/380591f29ea5a624.jpg', '52.30', '//item.jd.com/42406592736.html', '2');
INSERT INTO `huihui` VALUES ('130', '精通C Web标准解决方案   安迪·巴德 人民邮电出版社', '//img13.360buyimg.com/n7/jfs/t1/20249/10/9973/112275/5c828071E8da62eb9/6d106a8b22fb5fd0.jpg', '103.00', '//item.jd.com/42926677733.html', '2');
INSERT INTO `huihui` VALUES ('131', '正版新书 网络舆情理论与案例', '//img10.360buyimg.com/n7/jfs/t1/10522/2/12824/81248/5c7cb5a2Ea4a90755/880ce9b2700b8702.png', '31.20', '//item.jd.com/42615596020.html', '2');
INSERT INTO `huihui` VALUES ('132', '正版现货 防火墙产品原理与应用', '//img12.360buyimg.com/n7/jfs/t1/22523/40/8733/19702/5c78a12eE05ab16f7/caf6b0ebc10dc4ff.jpg', '31.90', '//item.jd.com/42407708912.html', '2');
INSERT INTO `huihui` VALUES ('133', '机械设计(第2版辽宁省十二五普通高等教育本科省级规划教材)', '//img12.360buyimg.com/n7/jfs/t1/14525/5/8894/315946/5c78b217Ee91bcf18/1374a1863c81630e.jpg', '66.98', '//item.jd.com/42413911862.html', '2');
INSERT INTO `huihui` VALUES ('134', 'AutoCAD 2018中文版建筑设计从入门到精通 CAD技术联盟 清华大学出版社', '//img13.360buyimg.com/n7/jfs/t1/29186/5/9213/120858/5c7ca2a0E69379068/7170431c6e6f4259.jpg', '99.20', '//item.jd.com/42612058863.html', '2');
INSERT INTO `huihui` VALUES ('135', '京东质量团队转型实践 从测试到测试开发的蜕变 京东质量团队管理书  自动化测试开发 测试架构师书 软', '//img12.360buyimg.com/n7/jfs/t1/21659/8/9072/119334/5c7cb420Ec97613ed/ee5596140b938295.jpg', '70.60', '//item.jd.com/42618460562.html', '2');
INSERT INTO `huihui` VALUES ('136', '正版 持续交付2.0业务的DEVOPS精要 乔梁 人民邮电 9787115500014', '//img12.360buyimg.com/n7/jfs/t1/28497/7/8655/48124/5c78b478E597320d8/f3f083c220816034.jpg', '98.60', '//item.jd.com/42414491287.html', '2');
INSERT INTO `huihui` VALUES ('137', '计算机安全 原理与实践 原书第3版 计算机科学丛书  计算机与互联网 安全与加密 计算机设备安全 计 #FFAAFF #48', '//img14.360buyimg.com/n7/jfs/t1/21124/24/7187/410282/5c6935e7Ea88ef279/e66983a89d7f5eeb.jpg', '118.00', '//item.jd.com/42414792934.html', '2');
INSERT INTO `huihui` VALUES ('140', '【正版】 黑客攻防工具实战从新手到高手(超值版) 9787302489757 网络安全技术', '//img13.360buyimg.com/n7/jfs/t1/19864/4/8915/23970/5c78cc06Ebe21fc65/944472d438ce22d7.jpg', '52.40', '//item.jd.com/42421670653.html', '2');
INSERT INTO `huihui` VALUES ('141', '正版  软件安全开发——属性驱动模式 宋明秋著 9787121287503', '//img11.360buyimg.com/n7/jfs/t1/17322/37/8692/16020/5c78cdc4E9b950fd7/76838d04036b6e51.jpg', '34.80', '//item.jd.com/42422464546.html', '2');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `pro_id` int(11) NOT NULL COMMENT '商品ID',
  `order_count` int(11) NOT NULL DEFAULT '1' COMMENT '订购数量',
  `order_status` varchar(50) NOT NULL DEFAULT '待完成订单' COMMENT '订单状态',
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  PRIMARY KEY (`order_id`),
  KEY `order_user_fk` (`user_id`),
  KEY `order_pro_fk` (`pro_id`),
  CONSTRAINT `order_user_fk` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_pro_fk` FOREIGN KEY (`pro_id`) REFERENCES `shopinfo` (`shop_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('1', '1', '20', '待完成订单', '1');
INSERT INTO `orderinfo` VALUES ('2', '2', '20', '待完成订单', '1');
INSERT INTO `orderinfo` VALUES ('3', '3', '10', '待完成订单', '2');
INSERT INTO `orderinfo` VALUES ('4', '4', '10', '待完成订单', '2');

-- ----------------------------
-- Table structure for proinfo
-- ----------------------------
DROP TABLE IF EXISTS `proinfo`;
CREATE TABLE `proinfo` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `pro_name` varchar(50) NOT NULL DEFAULT '无商品名' COMMENT '商品名称',
  `pro_price` float NOT NULL DEFAULT '0' COMMENT '商品价格',
  `pro_count` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `pro_states` varchar(50) NOT NULL DEFAULT '有库存' COMMENT '商品状态',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `type_id` int(11) NOT NULL COMMENT '商品类型ID',
  PRIMARY KEY (`pro_id`),
  KEY `pro_shop_fk` (`shop_id`),
  KEY `pro_type_fk` (`type_id`),
  CONSTRAINT `pro_shop_fk` FOREIGN KEY (`shop_id`) REFERENCES `shopinfo` (`shop_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pro_type_fk` FOREIGN KEY (`type_id`) REFERENCES `protype` (`type_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proinfo
-- ----------------------------
INSERT INTO `proinfo` VALUES ('2', '商品名称1', '0', '1', '有库存', '1', '1');
INSERT INTO `proinfo` VALUES ('3', '商品名称1', '0', '1', '有库存', '1', '2');
INSERT INTO `proinfo` VALUES ('4', '商品名称1', '0', '1', '有库存', '2', '2');
INSERT INTO `proinfo` VALUES ('5', '商品名称1', '0', '1', '有库存', '2', '3');
INSERT INTO `proinfo` VALUES ('6', '商品名称1', '0', '1', '有库存', '3', '4');
INSERT INTO `proinfo` VALUES ('7', '商品名称1', '0', '1', '有库存', '3', '5');

-- ----------------------------
-- Table structure for protype
-- ----------------------------
DROP TABLE IF EXISTS `protype`;
CREATE TABLE `protype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品类型编号',
  `type_name` varchar(50) NOT NULL DEFAULT '未设置类型名' COMMENT '类型名',
  `type_desc` varchar(50) NOT NULL DEFAULT '暂无详细的类型说明' COMMENT '类型说明',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protype
-- ----------------------------
INSERT INTO `protype` VALUES ('1', '女装', '暂无详细的类型说明');
INSERT INTO `protype` VALUES ('2', '男装', '暂无详细的类型说明');
INSERT INTO `protype` VALUES ('3', '美妆', '暂无详细的类型说明');
INSERT INTO `protype` VALUES ('4', '手机', '暂无详细的类型说明');
INSERT INTO `protype` VALUES ('5', '家电', '暂无详细的类型说明');
INSERT INTO `protype` VALUES ('6', '食品', '暂无详细的类型说明');

-- ----------------------------
-- Table structure for shopinfo
-- ----------------------------
DROP TABLE IF EXISTS `shopinfo`;
CREATE TABLE `shopinfo` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺编号',
  `shop_name` varchar(50) NOT NULL DEFAULT '暂未设置店名' COMMENT '店铺名称',
  `user_id` int(11) NOT NULL COMMENT '店主编号',
  `user_point` int(11) NOT NULL DEFAULT '0' COMMENT '默认值为0',
  PRIMARY KEY (`shop_id`),
  KEY `shop_user_fk` (`user_id`),
  CONSTRAINT `shop_user_fk` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopinfo
-- ----------------------------
INSERT INTO `shopinfo` VALUES ('1', '淘宝店1', '2', '0');
INSERT INTO `shopinfo` VALUES ('2', '淘宝店2', '2', '0');
INSERT INTO `shopinfo` VALUES ('3', '淘宝店3', '5', '0');
INSERT INTO `shopinfo` VALUES ('4', '淘宝店4', '5', '0');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员编号',
  `user_name` varchar(20) NOT NULL DEFAULT '暂未设置' COMMENT '会员名',
  `user_password` varchar(20) NOT NULL DEFAULT '12345' COMMENT '密码',
  `type_id` int(11) NOT NULL COMMENT '类型编号',
  `user_status` varchar(20) DEFAULT NULL COMMENT '会员状态',
  PRIMARY KEY (`user_id`),
  KEY `user_type_info_fk` (`type_id`),
  CONSTRAINT `user_type_info_fk` FOREIGN KEY (`type_id`) REFERENCES `usertypeinfo` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '张三', '1234567', '1', '信用良好');
INSERT INTO `userinfo` VALUES ('2', '李四', '123456', '2', '信用良好');
INSERT INTO `userinfo` VALUES ('3', '王五', '12345', '3', '信用良好');
INSERT INTO `userinfo` VALUES ('4', '钱六', '12345', '1', '信用良好');
INSERT INTO `userinfo` VALUES ('5', '陈晨', '12345', '2', '信用良好');
INSERT INTO `userinfo` VALUES ('6', '哈哈', '12345', '3', '信用良好');
INSERT INTO `userinfo` VALUES ('7', '嘿嘿', '12345', '2', '新开用户');
INSERT INTO `userinfo` VALUES ('8', '嘻嘻', '321', '2', '新开用户');

-- ----------------------------
-- Table structure for usertypeinfo
-- ----------------------------
DROP TABLE IF EXISTS `usertypeinfo`;
CREATE TABLE `usertypeinfo` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `type_name` varchar(20) NOT NULL DEFAULT '未设置' COMMENT '类型名',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertypeinfo
-- ----------------------------
INSERT INTO `usertypeinfo` VALUES ('1', '系统管理员');
INSERT INTO `usertypeinfo` VALUES ('2', '店主(卖家)');
INSERT INTO `usertypeinfo` VALUES ('3', '普通会员(买家)');

-- ----------------------------
-- Table structure for usertype_authority
-- ----------------------------
DROP TABLE IF EXISTS `usertype_authority`;
CREATE TABLE `usertype_authority` (
  `type_id` int(11) NOT NULL,
  `authority_id` int(11) NOT NULL,
  KEY `type_fk` (`type_id`),
  KEY `authority_fk` (`authority_id`),
  CONSTRAINT `type_fk` FOREIGN KEY (`type_id`) REFERENCES `usertypeinfo` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `authority_fk` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`authority_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertype_authority
-- ----------------------------
INSERT INTO `usertype_authority` VALUES ('1', '10');
INSERT INTO `usertype_authority` VALUES ('1', '11');
INSERT INTO `usertype_authority` VALUES ('1', '2');
INSERT INTO `usertype_authority` VALUES ('1', '5');
INSERT INTO `usertype_authority` VALUES ('2', '6');
INSERT INTO `usertype_authority` VALUES ('2', '7');
INSERT INTO `usertype_authority` VALUES ('2', '6');
INSERT INTO `usertype_authority` VALUES ('2', '7');
INSERT INTO `usertype_authority` VALUES ('2', '8');
INSERT INTO `usertype_authority` VALUES ('2', '9');
INSERT INTO `usertype_authority` VALUES ('2', '11');
INSERT INTO `usertype_authority` VALUES ('2', '2');
INSERT INTO `usertype_authority` VALUES ('2', '3');
INSERT INTO `usertype_authority` VALUES ('2', '4');
INSERT INTO `usertype_authority` VALUES ('2', '5');
INSERT INTO `usertype_authority` VALUES ('3', '11');
INSERT INTO `usertype_authority` VALUES ('3', '2');
INSERT INTO `usertype_authority` VALUES ('3', '3');
INSERT INTO `usertype_authority` VALUES ('3', '4');
INSERT INTO `usertype_authority` VALUES ('3', '5');
