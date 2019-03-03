/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-03 20:44:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书籍id',
  `book_name` varchar(255) NOT NULL COMMENT '书籍名称',
  `author` varchar(32) NOT NULL COMMENT '作者',
  `pub` varchar(32) NOT NULL COMMENT '出版社',
  `price` float(10,1) NOT NULL COMMENT '书籍原价',
  `rob` float(10,1) NOT NULL COMMENT '书籍现价',
  `detail` text COMMENT '书籍描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '书籍图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('4', '只要不忘了回家的路（大冰作序推荐）', '小鹏', '中信出版社', '29.9', '9.9', '这是背包客小鹏12年的漫漫长途，也是一个旅行者的情怀担当。人应该趁着年轻去流浪，只要不忘了回家的路。 23岁，毕业旅行选择阳朔，那是人生中第一次当背包客。 24岁，选择辞职，买好南下的火车票。 25岁，躺在留学生公寓的单人床上，因一本《孤独星球》激动得彻夜难眠。 26岁，生活依旧动荡，旅途还在继续。 27岁，在工作和旅行之间艰难抉择。 28岁，一个人去西藏。 29岁，去印度旅行一个月，体会孤独。 30岁，仍旧看不清未来，分外迷茫。', 'book12.jpg');
INSERT INTO `books` VALUES ('5', '异类 utliers 不一样的成功启示录', '格拉德威尔', '中信出版社', '26.0', '17.9', '在《异类》一书中，美国的怪才格拉德威尔对社会中那些成功人士进行的分析，让我们看到了一连串颇感意外的统计结果： 　　英超联赛大部分球员都在9月至11月出生（不信，你可以查查英格兰两大前锋欧文和鲁尼的生日）； 　　比尔?盖茨和史蒂夫?乔布斯都出生在1955年； 　　纽约很多著名律师事务所的开创者竟然都是犹太人后裔，并且他们的祖辈大多是在纽约的服装行业谋生。 　　为什么对那些成功人士进行的统计结果会这样一致“意外”？这是因为： 　　英超球员注册时间是9月。在同龄的球员中，9月份出生的人实际上比8月份出生的人几乎大了一岁，一岁的差距对他们的职业生涯有着不可低估的影响；', 'book11.jpg');
INSERT INTO `books` VALUES ('6', '共享经济1 2', '蔡余杰，刘国话', '企业管理出版社', '62.0', '50.0', '随着Uber和Airbnb分别成为全球估值一和第三的创业公司，其共性商业模式——共享经济也成为全球最热商业模式。共享经济改变着各个行业以及我们的工作、创业、打车、租房、金融、旅游等所有方面。李开复指出，共享经济才刚开始，大部分行业必然被颠覆。那么，共享经济是什么？它是如何改变商业、工作与生活的？协同消费模式的内含是什么？谁将成为B2B共享领域的新霸主？Uber和Airbnb 对企业、个人的发展意味着什么？未来商业将如何发展？《共享经济：引爆新一轮颠覆性商业革命》从共享经济的发展、渗透和影响入手，结合国内外发展现状对其进行了详细阐述，这是一本有巨大市场价值的商业著作。', 'book10.jpg');
INSERT INTO `books` VALUES ('7', '福尔摩斯探案全集（上、中、下）', '柯南道尔', '天津教育出版社', '108.0', '74.5', '福尔摩斯探案全集（上）：暗红色研究/四个人的签名/福尔摩斯办案记 　　福尔摩斯探案全集（中）：福尔摩斯回忆录/巴斯克维尔的猎犬/福尔摩斯归来记 　　福尔摩斯探案全集（下）：恐惧之谷/福尔摩斯退场记/福尔摩斯档案薄', 'book9.jpg');
INSERT INTO `books` VALUES ('9', '当你的才华还撑不起你的梦想时（签名本）', '特立独行的毛猫', '武汉出版社', '36.8', '24.0', '《当你的才华还撑不起你的梦想时》，《不要让未来的你，讨厌现在的自己》系列重磅新作● 当红励志作家特立独行的猫专为千万迷茫、彷徨而又年轻、充满希望的年轻人所写的人生成长之书世界是无情的，它不会因为你想要什么就给你什 么，也不会因为你迷茫、彷徨、孤独就对你格外开恩；世界又是仁慈的，它给了每个人雄厚而公平的资本。这资本，就是每个人都正拥有或曾拥有 的年轻。只要你不虚度年华，只要你不辜负时光，这年轻，便足以让你赢取你所渴望的未来。当你的才华还撑不起你的梦想时，请对自己进行提升 与“充电”，立刻，马上。', 'book8.jpg');
INSERT INTO `books` VALUES ('10', '福尔摩斯探案全集（精装16开全四卷）', '柯南道尔', '辽海出版社', '970.0', '97.0', '他是一个影响世界几代读者的神秘侦探；是一个家喻户晓威名赫赫的传奇英雄，是荧屏前长热不衰备受青睐的经典；是现实世界里人人向往的不朽传说。', 'book7.jpg');
INSERT INTO `books` VALUES ('11', '天才在左疯子在右（完整版）', '高铭', '北京联合出版公司', '39.8', '27.5', '这本书，是一群误入歧途的天才的故事，也是一群入院治疗的疯子的故事。 这本书，是作者高铭耗时4年深入医院精神科、公安部等神秘机构，和数百名“非常态人类”直接接触后，以访谈形式记录了生活在社会另一个角落的人群（精神病患者、心理障碍者等边缘人）的所思所想。 这本书，是国内*本具有人文情怀的精神病患谈访录。在与精神病患对话的内容里涉及到生理学、心理学、佛学、宗教、量子物理、符号学以及玛雅文明和预言等众多领域。表现出精神病患看待世界的角度和对生命提出的深刻观点，闻所未闻却又论证严谨。 他们说： *四维生物眼里，我们只是蠕动的虫子 肤浅的男人，必然被基因先进的女人毁灭 孩子，你是我创建的角色，生死皆有我定', 'book6.jpg');
INSERT INTO `books` VALUES ('12', '鬼吹灯全集（套装共8册）', '天下霸唱', '青岛出版社', '121.7', '99.9', '“人点烛，鬼吹灯”是传说中摸金派的不传之秘，意为进入古墓之中先在东南角点燃一支蜡烛才能开棺，如果蜡烛熄灭，须速速退出，不可取一物。相传这是祖师爷所定的一条活人与死人的契约，千年传承，不得破。', 'book5.jpg');
INSERT INTO `books` VALUES ('13', '非常道：1840-1999的中国话语', '余世存', '上海三联书店', '48.0', '37.9', '有种！   这依然是一本面向未来之书！十年前，余世存先生五年磨一剑，梳理数百部图书典籍，精心遴选出这一非常时期的非常话语，凝成《非常道》，以“不著一字，不为一注”的“编录”的方式，为我们“原汁原味”地深刻展现了近现代中国大变局下的种种探索及其成败、反复和困惑，以及此间的人间冷暖与人世沧桑。它请出历史丰沛的多声、复调，安慰了世道人心，它是证词，是启示录，它对历史和人性的见证使其能够对未来敞开，读者曾经并仍然在这里歌哭，在这里聚精会神，在这里明心见性。', 'book4.jpg');
INSERT INTO `books` VALUES ('14', '偷窥一百二十天（蔡骏悬疑长篇）', '蔡骏', '作家出版社', '20.9', '13.0', 'A复杂的爱恨情仇，不可思议的人物纠葛： 为爱粉身碎骨，因恨万劫不复；         偷窥者X与被囚禁者——*亲密知心的陌生人；          深不见底的恶意如影随形，杀人之门的绝望永夜荒寒。         B悬念设计、细节关照、逻辑推理、意象营造，以及破题难度设置等，均绵密智慧、扣人心弦。         C细腻描写，文本优质，人心人性绝妙描摹。', 'book3.jpg');
INSERT INTO `books` VALUES ('15', '让不可能成为可能：李昌钰的成功之道', '李昌钰', '民主建设出版社', '39.8', '24.9', '肯尼迪遇刺案！ 陈水扁枪击案！ 辛普森杀妻案！…… 只有你想不到，没有他破不了！ 一个穷人家的小鬼，如何成为全世界杰出的法医？ 一个身上有50美金的loser，如何半工半读到博士学位？ 一个备受歧视的华人，如何在美国成为受人尊敬的人？ 想看一本荡气回肠的励志书？ 想看一部曲折离奇的破案实录？ 就这本书！它能满足您的所有阅读需求！', 'book1.jpg');
INSERT INTO `books` VALUES ('50', '生命不息，折腾不止', '罗永浩', '天津人民出版社', '28.9', '9.9', '本书全新收录罗永浩2009——2014年的“人生奋斗”经历，完整展现一个理想主义者所经历的世界。生而为一个绝不嘴上吃亏的人，创业路上受过委屈白眼，却从不忍气吞声，在不断折腾中散发出浓浓的正义与情怀。 “我不是为了输赢，我就是认真。”从牛博网，到老罗英语培训，再到锤子科技创始人，老罗的每一次转型都牵动着公众的视线。他的奋斗不在于名声上的崛起，而在自己对自己人格上的完善，对美好世界执着的追求。这个爱折腾的、人格闪亮的胖子，在演讲中把自己剖析的无比透彻，读者可以感受到他满满的诚恳和热情。', 'book13.jpg');
INSERT INTO `books` VALUES ('51', '时间会证明一切', '辉姑娘', '中信出版社', '30.0', '12.0', '爱过，错过，都是经过。好事，坏事，皆成往事。  生而为人，红尘浮浪，免不了世间一番摸爬滚打。也曾迷茫，也曾彷徨，虽抵不过少年白发，却终可见淬火成金。尝遍人间滋味，领略万种风情，然后发现，这个世界上最强大的是时间。 无不可过去之事，有自然相知之人。 我们都曾不堪一击，我们终将刀枪不入。 时间会证明一切。', 'book14.jpg');
INSERT INTO `books` VALUES ('52', '摆渡人', '克莱儿·麦克福尔', '百花洲文艺出版社', '23.4', '6.9', '单亲女孩迪伦，15岁的世界一片狼藉：与母亲总是无话可说，在学校里经常受到同学的捉弄，*谈得来的好友也因为转学离开了。这一切都让迪伦感到无比痛苦。 　　她决定去看望久未谋面的父亲，然而，路上突发交通事故。等她拼命爬出火车残骸之后，却惊恐地发现，自己是*的幸存者，而眼前，竟是一片荒原。', 'book15.jpg');
INSERT INTO `books` VALUES ('53', '白岩松：白说', '白岩松', '长江文艺出版社', '19.9', '9.9', '《白说》是央视资深新闻人白岩松继《幸福了吗》《痛并快乐着》之后的全新作品，一部“自传”式的心灵履历。通过近年来于各个场合与公众的深入交流，以平等自由的态度，分享其世界观和价值观。时间跨度长达十五年，涵盖时政、教育、改革、音乐、阅读、人生等多个领域，温暖发声，理性执言。 在有权保持沉默的年纪拒绝沉默，为依然热血有梦的人们敲鼓拨弦。尽管“说话不是件好玩的事儿”，依然向往“说出一个更好点儿的未来”，就算“说了白说”，可是“不说，白不说”。', 'book16.jpg');
INSERT INTO `books` VALUES ('54', '从你的全世界路过', '张嘉佳', '湖南文艺出版社', '21.6', '13.0', '《从你的全世界路过》是微博上*会写故事的人张嘉佳献给你的心动故事。 　　*初以“睡前故事”系列的名义在网上疯狂流传，几天内达到1,500,000 次转发，超4亿次阅读，引来电影投资方的巨资抢购，转瞬便签下其中5个故事的电影版权。每1分钟，都有人在张嘉佳的故事里看到自己。 　　读过睡前故事的人会知道，这是一本纷杂凌乱的书。像朋友在深夜跟你在叙述，叙述他走过的千山万水。那么多篇章，有温暖的，有明亮的，有落单的，有疯狂的，有无聊的，有胡说八道的。当你辗转失眠时，当你需要安慰时，当你等待列车时，当你赖床慵懒时，当你饭后困顿时，应该都能找到一章合适的。', 'book17.jpg');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `manager_name` varchar(32) NOT NULL COMMENT '管理员名',
  `manager_password` varchar(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'csm', '520013');
INSERT INTO `manager` VALUES ('2', 'admin', 'admin888');
INSERT INTO `manager` VALUES ('3', 'root', 'root123');
INSERT INTO `manager` VALUES ('4', 'zwj', 'sm123456');
INSERT INTO `manager` VALUES ('5', 'abc', '123456');
INSERT INTO `manager` VALUES ('6', 'boolshop', 'boolshop');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `book_id` int(11) NOT NULL COMMENT '书籍id',
  `number` int(11) DEFAULT NULL COMMENT '购买数量',
  `trading_type` int(11) DEFAULT '0' COMMENT '交易状态',
  `order_sn` varchar(33) DEFAULT NULL COMMENT '订单号',
  `subtotal` float(10,1) DEFAULT NULL COMMENT '订单总价格',
  `rob` float(10,1) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  KEY `FK_orders_2` (`book_id`),
  CONSTRAINT `FK_orders_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('13', '27', '51', '1', '20', '20170402184024', '30.0', '30.0', 'book14.jpg', '时间会证明一切');
INSERT INTO `orders` VALUES ('16', '27', '51', '1', '20', '20170402192745', '30.0', '30.0', 'book14.jpg', '时间会证明一切');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `book_id` int(11) NOT NULL COMMENT '书籍id',
  `book_name` varchar(255) DEFAULT NULL COMMENT '书籍名',
  `rob` float(10,1) DEFAULT NULL COMMENT '书籍现价',
  `number` int(10) DEFAULT NULL COMMENT '数量',
  `subtotal` float(10,1) DEFAULT NULL COMMENT '总价格',
  `price` float(10,1) DEFAULT NULL COMMENT '书籍原价',
  `pic` varchar(64) DEFAULT NULL COMMENT '书籍图片',
  PRIMARY KEY (`id`),
  KEY `FK_shopcart_1` (`user_id`),
  KEY `FK_shopcart_2` (`book_id`),
  CONSTRAINT `FK_shopcart_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_shopcart_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `tx` varchar(64) DEFAULT 'pic03.jpg' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('27', 'abc', '123456', 'asdas', 'asd256654@qq.com', 'asfadf', 'pic03.jpg');
INSERT INTO `users` VALUES ('28', 'root', 'root123', 'root', '458456', 'ff', 'pic03.jpg');
INSERT INTO `users` VALUES ('29', 'zwj', 'zwj13665994204', '13665994204', '982215226@qq.com', '福建惠安', 'pic03.jpg');
INSERT INTO `users` VALUES ('30', 'csm', '520013', '18646039197', '969051142@qq.com', '福建省惠安县前垵村', 'lovesm.jpg');
