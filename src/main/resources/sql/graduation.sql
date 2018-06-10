/*
Navicat MySQL Data Transfer

Source Server         : MyProject
Source Server Version : 50544
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2018-06-10 21:18:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `account_tbl`;
CREATE TABLE `account_tbl` (
  `accountId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountUserId` int(10) unsigned DEFAULT NULL,
  `accountPassword` varchar(50) DEFAULT NULL,
  `accountType` varchar(10) DEFAULT NULL,
  `accountMoney` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_tbl
-- ----------------------------
INSERT INTO `account_tbl` VALUES ('1', '1', '123', '支付宝', '58207');
INSERT INTO `account_tbl` VALUES ('2', '1', '123', '微信', '12');
INSERT INTO `account_tbl` VALUES ('3', '2', '123', '支付宝', '236');
INSERT INTO `account_tbl` VALUES ('4', '2', '123', '微信', '2580');

-- ----------------------------
-- Table structure for `admin_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `admin_tbl`;
CREATE TABLE `admin_tbl` (
  `adminId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) DEFAULT NULL,
  `adminPassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `adminName` (`adminName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_tbl
-- ----------------------------
INSERT INTO `admin_tbl` VALUES ('1', 'admin', '12345');

-- ----------------------------
-- Table structure for `character_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `character_tbl`;
CREATE TABLE `character_tbl` (
  `sId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) DEFAULT NULL,
  `sAddress` varchar(100) DEFAULT NULL,
  `sTime` varchar(50) DEFAULT NULL,
  `sDesc` varchar(520) DEFAULT NULL,
  `sPath` varchar(100) DEFAULT NULL,
  `sNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_tbl
-- ----------------------------
INSERT INTO `character_tbl` VALUES ('1', '孙杨', '1991年12月1日生于浙江杭州', ' ', '中国国家游泳队队长，男子1500米自由泳世界纪录保持者，男子400米自由泳奥运会纪录保持者。2012年伦敦奥运会男子400米自由泳、男子1500米自由泳冠军；2016年里约奥运会男子200米自由泳冠军。孙杨是世界泳坛历史上唯一一位男子200米自由泳、男子400米自由泳、男子1500米自由泳的奥运会世锦赛大满贯冠军得主，史上唯一一位男子800米自由泳世锦赛三连冠，男子自由泳个人单项金牌数居世界第一。', 'http://localhost:8080/TravelAgency/layui/images/renwu/hz.png', '0571');
INSERT INTO `character_tbl` VALUES ('2', '金庸', '1924年3月10日生于浙江省海宁市', ' ', '1948年移居香港。当代知名武侠小说作家、新闻学家、企业家、政治评论家、社会活动家，“香港四大才子”之一。', 'http://localhost:8080/TravelAgency/layui/images/renwu/jx.png', '0573');
INSERT INTO `character_tbl` VALUES ('3', '苗侨伟', '1958年6月18日出生于浙江舟山定海', ' ', '香港著名演员，也是艺视眼镜（现时亮视点）的创办人。五岁时移居到香港。1980年于香岛中学毕业后，参加香港无线电视第9期艺员训练班，起先只是在少量电视连续剧里担任跑龙套的角色，但很快就升上一线', 'http://localhost:8080/TravelAgency/layui/images/renwu/zs.png', '0580');
INSERT INTO `character_tbl` VALUES ('4', '柴蔚', '2002年12月7日出生于浙江慈溪', ' ', '中国内地女演员。2011年，在古装剧《步步惊心》饰演“承欢格格”被观众熟知而出道。2014年，出演了古装剧《芈月传》。2015年，出演了古装穿越剧《太子妃升职记》。2017年，主演了仙侠剧《私立蜀山学园》。', 'http://localhost:8080/TravelAgency/layui/images/renwu/nb.png', '0574');
INSERT INTO `character_tbl` VALUES ('5', '沧月', '1979年5月15日出生于浙江台州', ' ', '2001年，开始发表武侠作品《听雪楼》系列；2003年，开始为杂志撰文，给《今古传奇·武侠版》写了《鼎剑阁》系列；2004年转入奇幻领域。2005年，开始创作《镜》系列，同年推出悬念小说《花镜》；2007年，担任杭州市作家协会类型文学创作委员会主任；2009年，开始创作《羽》系列；截至2011年，她出版作品二十余种，作品累积销量达一千万册 [1]  ；2014年，担任浙江省网络作家协会副主席；2015年，她创作的小说《镜》系列开启了电影《镜·双城》的制作计划。', 'http://localhost:8080/TravelAgency/layui/images/renwu/tz.png', '0576');

-- ----------------------------
-- Table structure for `city_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `city_tbl`;
CREATE TABLE `city_tbl` (
  `cityId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cityCn` char(20) DEFAULT NULL,
  `cityEn` char(20) DEFAULT NULL,
  `cityOn` char(20) DEFAULT NULL,
  `cityCategory` char(20) DEFAULT NULL,
  `cityFrom` char(20) DEFAULT NULL,
  `cityArea` char(20) DEFAULT NULL,
  `cityGm` char(20) DEFAULT NULL,
  `cityTn` char(20) DEFAULT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city_tbl
-- ----------------------------
INSERT INTO `city_tbl` VALUES ('1', '台州', 'Taizhou', '海州', '地级市', '中国 华东浙江省', '3个市辖区、3个县级市、3个县', '椒江区白云山南路233号', '0576');
INSERT INTO `city_tbl` VALUES ('2', '杭州', 'Hangzhou', '杭城', '地级市', '中国 华东浙江省', '10区、2县，代管2 县级市', '江干区解放东路18号', '0571');
INSERT INTO `city_tbl` VALUES ('3', '嘉兴', 'Jiaxing', '嘉禾', '地级市', '中国 华东浙江省', '	2个市辖区、3个县级市、2个县', '嘉兴市禾兴南路658号', '0573');
INSERT INTO `city_tbl` VALUES ('4', '舟山', 'Zhoushan', '翁洲', '地级市', '中国 华东浙江省', '2个市辖区、2个县', '定海区新城海天大道681号', '0580');
INSERT INTO `city_tbl` VALUES ('5', '宁波', 'Ningbo', '甬城', '地级市', '中国 华东浙江省', '	6个区，2个县，2个县级市', '宁穿路2001号', '0574');
INSERT INTO `city_tbl` VALUES ('6', '绍兴', 'Shaoxing City', '越州', '地级市', '中国 华东浙江省', '3区、1县、2县级市', '绍兴市越城区曲屯路286号', '0575');
INSERT INTO `city_tbl` VALUES ('7', '湖州', 'Huzhou', '霅溪', '地级市', '中国 华东浙江省', '3县2区', '仁皇山新区', '0572');
INSERT INTO `city_tbl` VALUES ('8', '温州', 'Wenzhou', ' 鹿城', '地级市', '中国 华东浙江省', '4个市辖区，2个县级市，5个县', '	鹿城区绣山路321号', '0577');
INSERT INTO `city_tbl` VALUES ('9', '金华', 'Jinhua', '婺州', '地级市', '中国 华东浙江省', '2个市辖区、3个县、4个县级市', '金华市婺城区双龙南街801号', '0579');
INSERT INTO `city_tbl` VALUES ('10', '丽水', 'Lishui', '处州', '地级市', '中国 华东浙江省', '9个县(市、区)', '莲都区', '0578');
INSERT INTO `city_tbl` VALUES ('11', '衢州', 'Quzhou', '柯城', '地级市', '中国 华东浙江省', '2个区，3个县，1个县级市', '柯城区白云街道三江东路28号', '0570');

-- ----------------------------
-- Table structure for `culture_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `culture_tbl`;
CREATE TABLE `culture_tbl` (
  `sId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) DEFAULT NULL,
  `sAddress` varchar(100) DEFAULT NULL,
  `sTime` varchar(50) DEFAULT NULL,
  `sDesc` varchar(520) DEFAULT NULL,
  `sPath` varchar(100) DEFAULT NULL,
  `sNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of culture_tbl
-- ----------------------------
INSERT INTO `culture_tbl` VALUES ('1', '西湖绸伞', ' ', ' ', '西湖绸伞，全称“西湖竹骨绸伞”，浙江省杭州地区特有的特色传统手工艺品，西湖特产之一。创始于20世纪30年代初。造型灵巧、色彩鲜艳，既可遮蔽阳光，又可作为装饰品，具实用性与艺术性于一体，故素有“西湖之花”的美称。伞面采用杭州丝绸，故名西湖绸伞。西湖绸伞采用印染、刺绣等方法，传统的绸伞绘有西湖十景、花卉、山水和仕女，有大红、枣红、和平蓝、墨绿、桃红、桔黄等二十几个品种，具有外型美观、选料讲究、设计精美的特点。', 'http://localhost:8080/TravelAgency/layui/images/wenhua/hz.jpg', '0571');
INSERT INTO `culture_tbl` VALUES ('2', '越剧', ' ', ' ', '中国第二大剧种，有第二国剧之称，又被称为是“流传最广的地方剧种”，有观点认为是“最大的地方戏曲剧种”，在国外被称为“中国歌剧”。', 'http://localhost:8080/TravelAgency/layui/images/wenhua/jx.png', '0573');
INSERT INTO `culture_tbl` VALUES ('3', '舟山贝雕', ' ', ' ', '舟山贝雕是浙江舟山市的汉族传统雕刻艺术之一。利用当地的贝壳作原料，根据贝壳的天然色彩、光泽、纹理，精雕成神形兼备的风景、人物、山水、花鸟等画屏的工艺美术品。舟山贝雕品种繁多，有贝雕画、贝雕镶嵌、贝雕首饰等。', 'http://localhost:8080/TravelAgency/layui/images/wenhua/zs.png\r\n', '0580');
INSERT INTO `culture_tbl` VALUES ('4', '舞狮', ' ', ' ', '舞狮是我国优秀的民间艺术。每逢佳节或集会庆典，民间都以舞狮来助兴、舞狮有南北之分，南方以广东的舞狮表演最为有名。狮子是由彩布条制作而成的。每头狮子有两个人合作表演，一人舞头，一人舞尾。表演者在锣鼓音乐下，装扮成狮子的样子，做出狮子的各种形态动作。在表演过程中，舞狮者要以各种招式来表现南派武功，非常富有阳刚之气。', 'http://localhost:8080/TravelAgency/layui/images/wenhua/nb.png', '0574');
INSERT INTO `culture_tbl` VALUES ('5', '台州乱弹', ' ', ' ', '台州乱弹，以乱弹为主，兼唱昆曲、高腔、徽调、词调、滩簧等，是全国少有的多声腔乱弹剧种之一。其舞台语言以中原音韵结合台州官话，充满民语乡韵，通俗易懂，别具特色。伴奏乐器有文场、武场的分别，文场分丝竹管弦乐曲和唢呐曲两类，武场分闹台锣鼓和表演锣鼓两类。台州乱弹的脚色行当分“上四脚”和“下四脚”，“上四脚”包括生、旦、净、丑，“下四脚”包括外、贴、副、末。', 'http://localhost:8080/TravelAgency/layui/images/wenhua/tz.png', '0576');

-- ----------------------------
-- Table structure for `entertainment_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `entertainment_tbl`;
CREATE TABLE `entertainment_tbl` (
  `sId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) DEFAULT NULL,
  `sAddress` varchar(100) DEFAULT NULL,
  `sTime` varchar(50) DEFAULT NULL,
  `sDesc` varchar(520) DEFAULT NULL,
  `sPath` varchar(100) DEFAULT NULL,
  `sNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entertainment_tbl
-- ----------------------------
INSERT INTO `entertainment_tbl` VALUES ('1', '双溪竹海漂流', '浙江省杭州市余杭区径山镇双溪竹海路2号', '地址:', '有“江南第一漂”之称的杭州双溪漂流旅游景区，位于杭州市西北30公里处的径山镇，景区范围7.5平方公里,景区先后被命名为浙江省消费者信得过单位、杭州市消费者信得过单位、重合同守信用单位、浙江省假日旅游服务优秀单位、文明单位、爱国卫生先进单位、抗非先进集体、浙江十佳优秀休闲胜地、杭州市对外传播采访基地等等，并已通过ISO9001质量管理体系、ISO14001环境管理体系认证。2004年12月被国家旅游局评定为AAAA级景区。', 'http://localhost:8080/TravelAgency/layui/images/yule/hz.png', '0571');
INSERT INTO `entertainment_tbl` VALUES ('2', '盐官观潮', ' ', ' ', '钱塘江是我国东南沿海著名的江流，位于浙江省北部，提起钱塘江，自然会联想到闻名遐迩的海宁潮，又叫钱江潮。观潮行为始于唐朝，至今已有400年历史。盐官东8公里处的八堡、大缺口、龙头角一带以及盐官西11公里的老盐仓都是游客的观潮热点。', 'http://localhost:8080/TravelAgency/layui/images/yule/jx.png\r\n', '0573');
INSERT INTO `entertainment_tbl` VALUES ('3', '看印象普陀', ' ', ' ', '印象系列大型实景演出之六——《印象普陀》，是由著名导演张艺谋任艺术顾问，著名导演王潮歌、樊跃为总导演，历时两年，经数百次精密修改方得完成，《印象普陀》选址在朱家尖原观音文化苑。朱家尖历史上为普陀山的庙宇地，是观音道场的重要组成部分。目前印象普陀剧场所在地为朱家尖最重要的景区之一', 'http://localhost:8080/TravelAgency/layui/images/yule/zs.png', '0580');
INSERT INTO `entertainment_tbl` VALUES ('4', '玩转漂流', ' ', ' ', '柏坑勇士漂流是全宁波最刺激的漂流！柏坑峡谷漂流又名甬江源漂流， 坐落于大山的最深处，位于奉化大山深处柏坑古村境内原生态植被保存完好，两岸峡谷风光秀美.', 'http://localhost:8080/TravelAgency/layui/images/yule/nb.png', '0574');
INSERT INTO `entertainment_tbl` VALUES ('5', '江南大峡谷漂流', ' ', ' ', '江南大峡谷位于浙江省临海市西南12KM的尤溪镇，地处浙江中东部，交通发达，浙江各地半径300KM以内的地区游客均可一日成行。', 'http://localhost:8080/TravelAgency/layui/images/yule/tz.png', '0576');

-- ----------------------------
-- Table structure for `food_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `food_tbl`;
CREATE TABLE `food_tbl` (
  `sId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) DEFAULT NULL,
  `sAddress` varchar(100) DEFAULT NULL,
  `sTime` varchar(50) DEFAULT NULL,
  `sDesc` varchar(520) DEFAULT NULL,
  `sPath` varchar(100) DEFAULT NULL,
  `sNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food_tbl
-- ----------------------------
INSERT INTO `food_tbl` VALUES ('1', '龙井虾仁', '推荐餐厅:知味观味庄（杨公堤店）', '1', '龙井虾仁精选新鲜大河虾，配以龙井新茶烹制而成。既有龙井茶的香郁甘甜，又有虾仁的鲜嫩多肉。营养丰富，味极鲜美，还有滋补和解毒之功效。', 'http://localhost:8080/TravelAgency/layui/images/food/MS1.png\r\n', '0571');
INSERT INTO `food_tbl` VALUES ('2', '海宁缸肉', '推荐餐厅:澳门豆捞(海宁二店)', '2', '海宁缸肉是浙江省嘉兴市海宁市的特色美食，它不是东坡肉，而是东坡肉的“娘”。其 “色同琥珀，入口则消，含浆膏润，特异凡常”', 'http://localhost:8080/TravelAgency/layui/images/food/MS2.png\r\n', '0573');
INSERT INTO `food_tbl` VALUES ('3', '舟山海鲜', '推荐餐厅:高佳庄海鲜超市酒楼', '3', '舟山作为中国最重要的浴场之一，海鲜全国文明。舟山有很多海鲜大排档，也有不少档次较高的海鲜酒楼可供大家享用美味。', 'http://localhost:8080/TravelAgency/layui/images/food/MS3.png\r\n', '0580');
INSERT INTO `food_tbl` VALUES ('4', '夹沙糕', '推荐餐厅:峡山海鲜舫', '4', '夹沙糕是象山的老牌糕点，颜色油润光亮，红绿相映，口味上具有甜、软、粘、糯、香几大特点，老少皆宜。夹沙糕中的糯米和豆沙要铺平，厚薄要均匀，吃起来才够好', 'http://localhost:8080/TravelAgency/layui/images/food/MS4.png\r\n', '0574');
INSERT INTO `food_tbl` VALUES ('5', '新昌芋饺', '推荐餐厅:新昌大灶头餐厅', '5', '新昌芋饺貌似北方的水饺，又有点像馄饨，主要用芋艿拌上番薯粉做成饺子皮，后包上菜或肉做成。做成后，芋饺晶莹剔透，透着淡淡的粉绿色；肉馅非常鲜美', 'http://localhost:8080/TravelAgency/layui/images/food/MS5.png\r\n', '0575');
INSERT INTO `food_tbl` VALUES ('6', '鸡肉线粉', '推荐餐厅:忆往事餐厅（余英坊店）', '6', '主要原料是鸡肉，配料是米线，将鸡肉切片炒香加入鲜汤和米线煮熟即可。 味道鲜美爽口，可促进消化，滋阴润肺。老少皆宜。', 'http://localhost:8080/TravelAgency/layui/images/food/MS6.png\r\n', '0572');
INSERT INTO `food_tbl` VALUES ('7', '永康豆腐皮', '推荐餐厅:有梦特色餐厅', '7', '永康豆腐很有名气，永康豆腐皮也非常好吃。它是选用上等黄豆，优质山泉水精制而成，不放任何添加剂和“吊白块”。永康豆腐皮色泽金黄、皮薄、油润光亮', 'http://localhost:8080/TravelAgency/layui/images/food/MS7.png\r\n', '0579');
INSERT INTO `food_tbl` VALUES ('8', '蛋清羊尾', '推荐餐厅:小文汤包(商业街店)', '8', '蛋清羊尾在冬天吃最佳，春节前后街头常见，是临海唯一列入《中国菜谱》的特色名菜，具有1400年的历史。因其取材“蛋清”，形状似“羊尾”而得名', 'http://localhost:8080/TravelAgency/layui/images/food/MS8.png\r\n', '0576');
INSERT INTO `food_tbl` VALUES ('9', '泰顺米面层', '推荐餐厅:天一角(五马街店)', '9', '泰顺米面层是浙江省温州市泰顺县的汉族特色小吃。由米粉兑水后放到专用蒸具中的薄片中包着四季豆、萝卜、猪肉等做成的。', 'http://localhost:8080/TravelAgency/layui/images/food/MS9.png\r\n', '0577');
INSERT INTO `food_tbl` VALUES ('10', '仙宫鱼头', '推荐餐厅:忆梦庭园', '10', '鱼头精选自云和湖野生花鲢鱼鱼头，纯天然野生放养，个大肥美，新鲜黑亮，绝无土腥味，富含17种氨基酸和微量元素，营养价值极高', 'http://localhost:8080/TravelAgency/layui/images/food/MS10.png\r\n', '0578');
INSERT INTO `food_tbl` VALUES ('11', '太子神仙豆腐', '推荐餐厅:江山食府', '11', '太子神仙豆腐是“江山十大名菜”之一，色、香、味俱全，且营养丰富。煮不糊、炒不烂。入口细、软、嫩、脆、滑、爽。', 'http://localhost:8080/TravelAgency/layui/images/food/MS11.png\r\n', '0570');

-- ----------------------------
-- Table structure for `history_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `history_tbl`;
CREATE TABLE `history_tbl` (
  `sId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) DEFAULT NULL,
  `sAddress` varchar(100) DEFAULT NULL,
  `sTime` varchar(50) DEFAULT NULL,
  `sDesc` varchar(520) DEFAULT NULL,
  `sPath` varchar(100) DEFAULT NULL,
  `sNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history_tbl
-- ----------------------------
INSERT INTO `history_tbl` VALUES ('1', '跨湖桥新石器时代遗址', ' ', ' ', '跨湖桥新石器时代遗址，位于浙江省萧山城区西南约4公里的城厢街道湘湖村，是因古湘湖的上湘湖和下湘湖之间有一座跨湖桥而命名。\r\n', 'http://localhost:8080/TravelAgency/layui/images/lishi/hz.png', '0571');
INSERT INTO `history_tbl` VALUES ('2', '马家浜文化', ' ', ' ', '马家浜文化是中国长江下游地区的新石器时代文化，因浙江省嘉兴市乍浦镇马家浜遗址而得名。马家浜文化主要分布在太湖地区，南达浙江的钱塘江北岸，西北到江苏常州一带。据放射性碳素断代并经校正，年代约始于公元前5000年，距今已有7000余年的历史，到前4000年左右发展为崧泽文化。', 'http://localhost:8080/TravelAgency/layui/images/lishi/jx.png', '0573');
INSERT INTO `history_tbl` VALUES ('3', '河姆渡遗址', ' ', ' ', '河姆渡遗址发现于1973年，遗址总面积达5万平方米，叠压着四个文化层。经测定，最下层的年代为7000年前。通过1973年和1977年两次科学发掘，出土了骨器、陶器、玉器、木器等各类质料组成的生产工具、生活用品、装饰工艺品以及人工栽培稻遗物、干栏式建筑构件，动植物遗骸等文物近7000件，全面反映了我国原始社会母系氏族时期的繁荣景象。', 'http://localhost:8080/TravelAgency/layui/images/lishi/zs.png', '0580');
INSERT INTO `history_tbl` VALUES ('4', '宁波历史', ' ', ' ', '夏时，宁波所在地区称为鄞。春秋战国时，越王勾践始建句章城。秦朝时，宁波属会稽郡，下辖鄞、鄮、句章3县。六朝时，佛教传入宁波，至今仍有较大影响。唐朝，称宁波为明州，市域范围逐渐形成，与当代宁波城市格局相近的城市规格也在那时形成。同时，宁波依赖地理优势成为全国最大的开埠港口，与日本、高丽均有非常频繁的贸易往来。五代时，宁波属吴越国。吴越王钱镠的富民政策发展了宁波的经济。', 'http://localhost:8080/TravelAgency/layui/images/lishi/nb.png\r\n', '0574');
INSERT INTO `history_tbl` VALUES ('5', '台州历史', ' ', ' ', '台州因天台山而得名。在秦汉时，“天台山”一词便已出现。在向外地朋友介绍台州时，教会他标准的读法和用法是一个很好的开始。“台州”的“台”与“台湾”的“台”只是文字同形，但读音、繁体写法并不相同，“台州”的“台”念做第一声，而且繁体写法依旧是“台”　我们所居住的“台州”一词最早出现唐朝\r\n　　唐武德四年(621年)，唐高祖改郡为州，在临海置台州。之所以创造“台州”这个新地名，是因为在当时，临海虽然仍是台州地区的政治中心，但在文化上，天台山在外界的影响力远远盖过临海。新地名“台州”是政治和文化强强联合的结果。\r\n', 'http://localhost:8080/TravelAgency/layui/images/lishi/tz.png', '0576');

-- ----------------------------
-- Table structure for `order_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `order_tbl`;
CREATE TABLE `order_tbl` (
  `orderId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `totalPrice` int(10) unsigned DEFAULT NULL,
  `userNumber` int(10) unsigned DEFAULT NULL,
  `goNums` int(10) unsigned DEFAULT NULL,
  `orderTitle` varchar(100) DEFAULT NULL,
  `goTime` varchar(50) DEFAULT NULL,
  `current` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `orderTime` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(10) DEFAULT NULL,
  `imgPath` varchar(100) DEFAULT NULL,
  `payById` int(10) unsigned DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_tbl
-- ----------------------------
INSERT INTO `order_tbl` VALUES ('44', '2000', '1', '1', '<杭州西湖-乌镇西栅1日游>', '2018-03-07', '台州', '123', 'bao', '2018-03-13 16:57:21', '已完成', 'http://localhost:8080/TravelAgency/layui/images/place/Phz1.png', '1', '不错');
INSERT INTO `order_tbl` VALUES ('45', '2000', '1', '1', '<杭州西湖-乌镇西栅1日游>', '2018-05-08', '嘉兴', '123456', 'bao', '2018-05-05 09:56:17', '已付款', 'http://localhost:8080/TravelAgency/layui/images/place/Phz1.png', '1', null);
INSERT INTO `order_tbl` VALUES ('46', '2000', '1', '1', '<杭州西湖-乌镇西栅1日游>', '2018-05-21', '台州', '123', 'qwe', '2018-05-22 13:55:57', '未付款', 'http://localhost:8080/TravelAgency/layui/images/place/Phz1.png', null, null);
INSERT INTO `order_tbl` VALUES ('47', '1234', '1', '1', '<台州-神仙居1日游>', '2018-05-01', '台州', '123', '1', '2018-05-29 07:55:28', '未付款', 'http://localhost:8080/TravelAgency/layui/images/place/Ptz1.png', null, null);
INSERT INTO `order_tbl` VALUES ('48', '999', '1', '1', '<嘉兴西塘-烟雨长廊1日游>', '2018-05-31', '台州', '12', '2', '2018-06-06 21:45:09', '未付款', 'http://localhost:8080/TravelAgency/layui/images/place/Pjx1.png', null, null);

-- ----------------------------
-- Table structure for `picture_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `picture_tbl`;
CREATE TABLE `picture_tbl` (
  `pId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pPath` varchar(100) DEFAULT NULL,
  `pType` char(5) DEFAULT NULL,
  `pDesc` varchar(520) DEFAULT NULL,
  `pNum` char(5) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture_tbl
-- ----------------------------
INSERT INTO `picture_tbl` VALUES ('1', 'http://localhost:8080/TravelAgency/layui/images/place/ptz.png ', 'title', '台州， 浙江省辖地级市，位于浙江省中部沿海，东濒东海，北靠绍兴市、 宁波市，南邻温州市，西与金华市和丽水市毗邻。介于东经120度17分～121度56分，北纬28度01分～29度20分之间；属亚热带季风气候。陆地总面积9411平方公里，辖3区3个县级市3个县，户籍总人口600.17万（2016年末）[1]。\r\n台州历史悠久，5000年前就有先民在此生息繁衍。秦朝：先秦时为瓯越地。秦代，属闽中郡。1949年6月，置浙江第六专区；10月，底六专区改称台州专区。 1978年，改称台州地区。1994年，撤销台州地区，设立地级台州市。\r\n台州东部沿海 海岸线长达651公里。近海有12个岛群691个 岛屿，主要有 台州列岛和东矶列岛等。居山面海，平原丘陵相间，形成“七山一水二分田”的格局。拥有国家重点风景名胜区天台山、长屿硐天和国家级历史文化名城临海，自古以“海上名山”著称。台州被评为2013年度中国科技进步先进市，被列入浙江省首批创新型试点城市。2017年12月24日，入选2017中国特色魅力城市200强。', '0576');
INSERT INTO `picture_tbl` VALUES ('2', 'http://localhost:8080/TravelAgency/layui/images/place/phz.png  ', 'title', '杭州，浙江省省会、 副省级市。位于中国东南沿海、浙江省北部、钱塘江下游、京杭大运河南端，介于东经118°21′-120°30′，北纬29°11′-30°33′之间；属亚热带季风性气候。市中心地理坐标为东经120°12′，北纬30°16′。辖区总面积16596平方公里，辖10个区2个县，代管1个县级市；常住人口918.80万（2016年末）[1]。\r\n杭州自秦朝设县治以来已有2200多年的历史，曾是吴越国和南宋的都城，是中国七大古都之一。1912年，废杭州府，合并钱塘、仁和两县为杭县，仍为省会所在地。1949年，杭州才获解放。1994年，升格为副省级城市。\r\n杭州是浙江省的政治、经济、文化、教育、交通和金融中心，素有“人间天堂”的美誉。著名景点有：西湖、京杭大运河、西溪湿地、灵隐寺、六和塔、良渚遗址、湘湖等。\r\n2017年12月，荣获2017中国特色魅力城市200强。2018年2月，2017年全国城市GDP榜单发布，杭州以12556亿元位列第10位。', '0571');
INSERT INTO `picture_tbl` VALUES ('3', 'http://localhost:8080/TravelAgency/layui/images/place/pjx.png', 'title', '嘉兴， 浙江省辖地级市，位于浙江省东北部，介于北纬30度21分至31度2分与东经120度18分至121度16分之间，东临大海，南倚钱塘江，北望太湖，西接天目之水，大运河纵贯境内；属亚热带季风气候。辖区陆地面积3915平方公里，辖2个区2个县3个县级市，户籍人口352.12万（2016年末）[1]。\r\n嘉兴是新石器时代马家浜文化的发祥地，春秋时，此地名长水，又称槜李，吴越两国在此风云角逐。1911年，辛亥革命党人光复嘉兴，成立嘉兴军政分府。1921年，中国共产党第一次全国代表大会在嘉兴南湖的一艘游船上闭幕，宣告中国共产党成立。1949年5月，嘉兴解放。\r\n嘉兴自古为繁华富庶之地，素有“ 鱼米之乡”、“丝绸之府”美誉，是中国共产党诞生地 ，成为我国近代史上重要的革命纪念地；是长三角城市群、上海大都市圈重要城市、杭州都市圈副中心城市 [2][3][4]。著名景点有：南湖、乌镇、西塘、钱江潮、南北湖、月河历史街区等。2017年12月，嘉兴获评2017中国特色魅力城市200强。', '0573');
INSERT INTO `picture_tbl` VALUES ('4', 'http://localhost:8080/TravelAgency/layui/images/place/pzs.png  ', 'title', '舟山，浙江省辖地级市，位于浙江省东北部，东临东海、西靠杭州湾、北面上海市，介于东经121°30′～123°25′，北纬29°32′～31°04′之间；属亚热带季风气候。辖区陆地面积1440.12平方公里，辖2个市辖区2个县，户籍人口97.33万（2016年末）。\r\n舟山群岛开发历史悠久。1687年，属宁波府。1950年，成立定海县人民政府。1953年，成立舟山专区。1967年，改称舟山地区。1987年，撤销舟山地区，成立舟山市。\r\n舟山是第一个以群岛建制的地级市、 舟山群岛新区也是我国第一个国家级群岛新区，境内拥有中国唯一由国务院批准设立的大宗商品交易管理与监督中心。[1][2]是中国最大的 海产品生产、加工、销售基地、 舟山渔场是我国最大渔场素有“东海鱼仓”和“海鲜之都”之称，舟山港湾众多、航道纵横，是中国屈指可数的天然深水良港，宁波－舟山港货物吞吐量位于全球第一。著名景点有：普陀山、 朱家尖、 嵊泗、 桃花岛、 东极岛等。', '0580');
INSERT INTO `picture_tbl` VALUES ('5', 'http://localhost:8080/TravelAgency/layui/images/place/pnb.png ', 'title', '宁波，浙江省辖市，副省级市、计划单列市，位于东南沿海，中国大陆海岸线中段，长江三角洲南翼，东有舟山群岛为天然屏障，北濒杭州湾，西接绍兴市的嵊州、新昌、上虞，南临三门湾，并与台州的三门、天台相连。介于东经120°55\'至122°16\'，北纬28°51\'至30°33\'之间；属亚热带季风气候。辖区陆域总面积9816平方公里，辖6个区2个县2个县级市，户籍人口591.0万（2016年末）[1]。\r\n早在七千年前，先民们就在这里繁衍生息，创造了灿烂的河姆渡文化。五代十国属于吴越国。1927年，划鄞县城区设宁波市，属于浙江省。1949年5月，浙东解放，鄞县城区建置宁波市，城区为宁波专署驻地。1987年，成为计划单列市。1994年，宁波被确定为副省级市。\r\n宁波是长三角南翼经济中心，连续四次蝉联全国文明城市。著名景点有：天一阁、庆安会馆、老外滩、宁波博物馆、东钱湖、河姆渡遗址等。\r\n2018年2月，2017年全国城市GDP榜单发布，宁波以9847亿元位列第15位。', '0574');
INSERT INTO `picture_tbl` VALUES ('6', 'http://localhost:8080/TravelAgency/layui/images/place/psx.png ', 'title', '绍兴市，浙江省下辖地级市，位于浙江省中北部、 杭州湾南岸[1]；东连宁波市，南临台州市和金华市，西接杭州市，北隔钱塘江与嘉兴市相望，属于亚热带季风气候。全市陆域总面积为8273.3平方公里，辖区总面积2942平方公里，下辖3区1县2市，常住人口498.8万（2016年末）[2]。\r\n绍兴从新石器时代中期的小黄山文化开始，至今已有约9000年历史。越国古都建于此。1949年，绍兴全境解放；6月，设浙江省第十专区；10月改为绍兴专区。1952年，撤销绍兴专区。1964年，复设绍兴专区。1983年，撤销绍兴地区，改设省辖绍兴市。\r\n绍兴已有2500多年建城史[3]，是首批国家历史文化名城、联合国人居奖城市，中国优秀旅游城市，国家森林城市，中国民营经济最具活力城市。2017年12月，绍兴获评2017中国特色魅力城市200强。', '0575');
INSERT INTO `picture_tbl` VALUES ('7', 'http://localhost:8080/TravelAgency/layui/images/place/pwz.png  ', 'title', '温州市，浙江省辖地级市，位于浙江省东南部， 瓯江下游南岸。介于北纬27度03分-28度36分、东经119度37分-121度18分之间；东濒东海，南毗福建，西及西北部与丽水市相连，北和东北部与台州市接壤；属中亚热带季风气候。全市陆域面积12065平方公里[1]，海域面积约11000平方公里，下辖4个市辖区、5个县、2个县级市[2][3]，户籍总人口818.2万（2016年末）[4]。\r\n唐高宗上元二年（公元675年），处州析置温州，这是温州得名的开始。建国后改称为温州区专员公署。其后，名称和辖县有所变动。1981年，温州地区和温州市合并建立温州市，实行市管县体制。\r\n温州是国家历史文化名城[5]，素有“东南山水甲天下”之美誉[6]。温州是中国民营经济发展的先发地区与改革开放的前沿阵地，改革开放初期，以“ 南有吴川 ，北有温州”享誉全国。温州文化属瓯越文化，是中国数学家的摇篮、中国南戏的故乡，温州人被国人称之为东方犹太人。2017年12月，温州获评2017中国特色魅力城市200强。', '0577');
INSERT INTO `picture_tbl` VALUES ('8', 'http://localhost:8080/TravelAgency/layui/images/place/pjh.png  ', 'title', '金华市，浙江省省辖地级市，位于浙江省中部，以境内金华山得名。介于东经119゜14′ -120゜46′30″ ，北纬28゜32′-29゜41′之间；东邻台州，南毗丽水，西连衢州，北接绍兴、杭州[1]；属亚热带季风气候。全市总面积10942平方公里，下辖2个市辖区、3个县、4个县级市，总人口481.15万（2016年末）[2]。\r\n金华建制久远，古属越国地，秦入会稽郡。金华古称婺州，因其“地处金星与婺女两星争华之处”得名，自三国吴元宝鼎元年始设东阳郡建置以来，具有1800多年的历史文化[3]。1949年，设立浙江省第八行政区；10月，改名金华专区。1968年，改为金华地区。1985年，原金华、衢州两县级市分别升为地级市。\r\n金华市是国家级历史文化名城、中国十佳宜居城市之一。著名景点有：双龙洞、横店影视城、永康方岩、磐安百丈潭、诸葛八卦村等。2017年12月24日，入选2017中国特色魅力城市200强。', '0579');
INSERT INTO `picture_tbl` VALUES ('9', 'http://localhost:8080/TravelAgency/layui/images/place/pls.png ', 'title', '丽水，浙江省辖地级市，位于浙江省西南部。在东经118°41′～120°26′和北纬27°25′～28°57′之间；东南与温州市接壤，西南与福建省宁德市、南平市毗邻，西北与衢州市相接，北部与金华市交界，东北与台州市相连；属亚热带季风气候。市域面积1.73万平方公里，辖9个县(市、区)，户籍人口268.03万（2016年末）[1]。\r\n丽水历史悠久，在4000多年前就有人类活动。隋朝：开皇九年建处州。1949年，设丽水专区。1952年，撤销专区。1963年，恢复丽水专区。1968年，改称丽水地区。1978年，设立丽水地区行政公署。2000年，撤销行署建制，设丽水市。\r\n丽水被誉为“ 浙江绿谷”，生态环境质量浙江省第一、中国前列；生态环境质量公众满意度位居 浙江省首位。2005年，被命名为第三批国家级生态示范区；相继被命名为“中国优秀旅游城市”、“中国优秀生态旅游城市”。著名景点有：南明山-东西岩、仙都、畲乡之窗等。\r\n2017年12月，丽水获评2017中国特色魅力城市200强。', '0578');
INSERT INTO `picture_tbl` VALUES ('10', 'http://localhost:8080/TravelAgency/layui/images/place/pqz.png ', 'title', '衢州，浙江省辖地级市，位于浙江省西部， 钱塘江上游，金衢盆地西端。地理坐标为位于东经118°01′一119°20′，北纬28°14′～29°30′；南接福建南平，西连江西上饶、景德镇，北邻安徽黄山，东与省内金华、丽水、杭州三市相交；属亚热带季风气候区。辖区总面积8844.6平方公里，辖2区1市3县，户籍总人口257.49万（2016年末）[1]。\r\n   衢州历史悠久，文化底蕴深厚。夏、商、西周三代这里属于越之地。唐武德四年置衢州，旋废；垂拱二年复置，此后千余年，止1949年解放，衢城历为州府路道区的治署所在。1949~1955年，是浙江省衢州专员公署驻地。1985年，建为省辖市。\r\n衢州旅游资源丰富，有“神奇山水，名城衢州”之称，素有“四省通衢、五路总头”之称。境内有：江郎山、烂柯山、龙游石窟等150多处景点。1994年，被国务院命名为国家级历史文化名城。[2]2012年、2013年连续两年入选中国十大宜居城市。2013年国家首批国家循环经济示范城市，成为浙江省惟一上榜的地级市。2017年12月，衢州获评2017中国特色魅力城市200强。', '0570');
INSERT INTO `picture_tbl` VALUES ('11', 'http://localhost:8080/TravelAgency/layui/images/place/phuz.png  ', 'title', '湖州市，浙江省辖地级市，地处浙江省北部，东邻嘉兴，南接杭州，西依天目山，北濒太湖，与无锡、苏州隔湖相望；介于北纬26°29′～28°30′、东经115°35′～117°18′之间，属亚热带湿润季风气候，是环太湖地区唯一因湖而得名的城市。辖区总面积5818平方公里，辖3县2区，户籍人口264.84万（2016年末）[1]。\r\n湖州在五帝夏禹时为防风氏，之地夏禹灭防风氏其地归属扬州。隋仁寿二年，以地滨太湖而名“湖州”，为湖州设立之始。解放后，先后设浙江第一专区、嘉兴专区和嘉兴地区。1949年，于吴兴县城区置“吴兴市”。1950年，改为湖州市。1983年，撤地建市。\r\n湖州是一座具有2300多年历史的江南古城，有优美的自然景观和众多历史人文景观。自古以来素有丝绸之府，鱼米之乡，文化之邦的美誉，且有南太湖明珠之称。湖州特产有湖丝、湖笔、 太湖三宝 莫干黄芽、 顾渚紫笋等。\r\n湖州是国家历史文化名城、国家森林城市、国家园林城市、国家卫生城市、中国毛笔之都、中国书法城。著名景点有：南浔古镇、 莫干山、莲花庄、太湖等。', '0572');
INSERT INTO `picture_tbl` VALUES ('12', ' http://localhost:8080/TravelAgency/layui/images/place/tznav.png     ', 'nav', ' 城市导航图片 ', '0576');
INSERT INTO `picture_tbl` VALUES ('13', ' http://localhost:8080/TravelAgency/layui/images/place/tznav2.png   ', 'nav', ' 城市导航图片 ', '0576');
INSERT INTO `picture_tbl` VALUES ('14', ' http://localhost:8080/TravelAgency/layui/images/place/hznav.png       ', 'nav', ' 城市导航图片 ', '0571');
INSERT INTO `picture_tbl` VALUES ('15', ' http://localhost:8080/TravelAgency/layui/images/place/hznav2.png      ', 'nav', ' 城市导航图片 ', '0571');
INSERT INTO `picture_tbl` VALUES ('16', ' http://localhost:8080/TravelAgency/layui/images/place/jxnav.png       ', 'nav', ' 城市导航图片 ', '0573');
INSERT INTO `picture_tbl` VALUES ('17', ' http://localhost:8080/TravelAgency/layui/images/place/jxnav2.png     ', 'nav', ' 城市导航图片 ', '0573');
INSERT INTO `picture_tbl` VALUES ('18', ' http://localhost:8080/TravelAgency/layui/images/place/zsnav.png      ', 'nav', ' 城市导航图片 ', '0580');
INSERT INTO `picture_tbl` VALUES ('19', ' http://localhost:8080/TravelAgency/layui/images/place/zsnav2.png     ', 'nav', ' 城市导航图片 ', '0580');
INSERT INTO `picture_tbl` VALUES ('20', ' http://localhost:8080/TravelAgency/layui/images/place/nbnav.png      ', 'nav', ' 城市导航图片 ', '0574');
INSERT INTO `picture_tbl` VALUES ('21', ' http://localhost:8080/TravelAgency/layui/images/place/nbnav2.png      ', 'nav', ' 城市导航图片 ', '0574');
INSERT INTO `picture_tbl` VALUES ('22', ' http://localhost:8080/TravelAgency/layui/images/place/sxnav.png      ', 'nav', ' 城市导航图片 ', '0575');
INSERT INTO `picture_tbl` VALUES ('23', ' http://localhost:8080/TravelAgency/layui/images/place/sxnav2.png     ', 'nav', ' 城市导航图片 ', '0575');
INSERT INTO `picture_tbl` VALUES ('24', ' http://localhost:8080/TravelAgency/layui/images/place/wznav.png      ', 'nav', ' 城市导航图片 ', '0577');
INSERT INTO `picture_tbl` VALUES ('25', ' http://localhost:8080/TravelAgency/layui/images/place/wznav2.png     ', 'nav', ' 城市导航图片 ', '0577');
INSERT INTO `picture_tbl` VALUES ('26', ' http://localhost:8080/TravelAgency/layui/images/place/jhnav.png       ', 'nav', ' 城市导航图片 ', '0579');
INSERT INTO `picture_tbl` VALUES ('27', ' http://localhost:8080/TravelAgency/layui/images/place/jhnav2.png     ', 'nav', ' 城市导航图片 ', '0579');
INSERT INTO `picture_tbl` VALUES ('28', ' http://localhost:8080/TravelAgency/layui/images/place/lsnav.png    ', 'nav', ' 城市导航图片 ', '0578');
INSERT INTO `picture_tbl` VALUES ('29', ' http://localhost:8080/TravelAgency/layui/images/place/lsnav2.png    ', 'nav', ' 城市导航图片 ', '0578');
INSERT INTO `picture_tbl` VALUES ('30', ' http://localhost:8080/TravelAgency/layui/images/place/qznav.png     ', 'nav', ' 城市导航图片 ', '0570');
INSERT INTO `picture_tbl` VALUES ('31', ' http://localhost:8080/TravelAgency/layui/images/place/qznav2.png    ', 'nav', ' 城市导航图片 ', '0570');
INSERT INTO `picture_tbl` VALUES ('32', ' http://localhost:8080/TravelAgency/layui/images/place/huznav.png    ', 'nav', ' 城市导航图片 ', '0572');
INSERT INTO `picture_tbl` VALUES ('33', ' http://localhost:8080/TravelAgency/layui/images/place/huznav2.png      ', 'nav', ' 城市导航图片 ', '0572');

-- ----------------------------
-- Table structure for `product_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `product_tbl`;
CREATE TABLE `product_tbl` (
  `productId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(200) DEFAULT NULL,
  `cityNum` char(10) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `sales` int(10) unsigned DEFAULT NULL,
  `productDesc` varchar(1000) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `imgPath` varchar(100) DEFAULT NULL,
  `satisfaction` char(10) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_tbl
-- ----------------------------
INSERT INTO `product_tbl` VALUES ('1', '<杭州西湖-乌镇西栅1日游>', '0571', '2000', '2', '昭明书院，草本染色作坊，乌镇西栅，茅盾纪念馆，西湖，乌镇，白莲塔寺，万松书院，雷峰塔，花港观鱼', '杭州一日游', 'http://localhost:8080/TravelAgency/layui/images/place/Phz1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('2', '<杭州-宋城千古情主题酒店杭州西湖店2日游>', '0571', '1234', '3', '宋城千古情，烂苹果乐园，云曼温泉，西湖，杭州灵隐（飞来峰）景区，西溪国家湿地公园，杭州宋城', '杭州二日游', 'http://localhost:8080/TravelAgency/layui/images/place/Phz2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('3', '<嘉兴西塘-烟雨长廊1日游>', '0573', '999', '3', '西塘，西塘·烟雨长廊，张正根雕艺术馆，中国纽扣博物馆，西塘·根雕馆', '嘉兴二日游', 'http://localhost:8080/TravelAgency/layui/images/place/Pjx1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('4', '<嘉兴乌镇2日游>', '0573', '999', '100', '乌镇西栅，乌镇修真观，乌镇，乌镇东栅', '嘉兴二日游', 'http://localhost:8080/TravelAgency/layui/images/place/Pjx2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('5', '<台州-神仙居1日游>', '0576', '1234', '100', '台州仙居神仙居，台州仙居景星岩', '台州一日游', 'http://localhost:8080/TravelAgency/layui/images/place/Ptz1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('6', '<台州-临海长城2日游>', '0576', '2222', '100', '推荐景点：2个景点可选， 东湖公园，江南长城旅游区', '台州二日游', 'http://localhost:8080/TravelAgency/layui/images/place/Ptz2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('7', '<宁波方特东方神画1日游>', '0574', '2222', '100', ' 宁波方特东方神画主题公园', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pnb1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('8', '<宁波罗蒙环球乐园>', '0574', '1234', '100', '罗蒙环球乐园，东钱湖，东钱湖恒元二灵山温泉', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pnb2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('9', '<舟山-普陀山1日游>', '0580', '1234', '100', '西天景区，灵石庵，观音古洞，心字石，普济寺，二龟听法石，梅福庵，磐陀石，南海观音大佛，普陀山风景区', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pzs1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('10', '<舟山-东极岛2日游>', '0580', '999', '100', '嵊泗列岛，东极岛', null, 'http://localhost:8080/TravelAgency/layui/images/place/Pzs2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('11', '<绍兴柯岩-鉴湖-鲁镇-书圣故里2日游>', '0575', '999', '100', '鲁镇，绍兴书圣故里，柯岩风景区，鉴湖，鲁迅故居', null, 'http://localhost:8080/TravelAgency/layui/images/place/Psx1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('12', '<绍兴古城-蕺山古道1日游>', '0575', '1234', '100', '绍兴书圣故里，鲁迅故居', '', 'http://localhost:8080/TravelAgency/layui/images/place/Psx2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('13', '<浙江湖州-安吉开元曼居酒店自驾2日游>', '0572', '1678', '100', '中南百草原，湖州安吉中国大竹海，湖州安吉竹博园', '', 'http://localhost:8080/TravelAgency/layui/images/place/Phuz1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('14', '<安吉自驾2日游>', '0572', '1000', '100', '竹乡国家森林公园，大汉七十二峰，吴昌硕纪念馆', '', 'http://localhost:8080/TravelAgency/layui/images/place/Phuz2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('15', '<浙江温州-君兰瓦居名宿-自驾2日游>', '0577', '1000', '100', '3个景点可选， 崖下库，石桅岩景区，楠溪江龙湾潭森林公园', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pwz1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('16', '<温州雁荡山2日游>', '0577', '999', '100', '6个景点， 灵峰景区，雁荡山，大龙湫，乐清灵岩景区，雁荡山风景名胜区，楠溪江', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pwz2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('17', '<浙江金华-格瑞大酒店-自驾2日游>', '0579', '999', '100', '3个景点可选， 金华双龙洞，金华兰溪地下长河，诸葛八卦村', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pjh1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('18', '<浙江横店影视城3景点-梦幻谷自驾2日游>', '0579', '999', '100', ' 横店梦泉谷温泉度假区，梦幻谷，明清宫苑，明清民居博览城，横店影视城，广州街香港街，横店梦幻谷，秦王宫，横店梦幻谷水世界，横店清明上河图', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pjh2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('19', '<丽水-缙云仙都3日游>', '0578', '999', '100', '仙都赵侯祠景区，小赤壁，仙都鼎湖峰，朱潭山，仙都倪翁洞景区', null, 'http://localhost:8080/TravelAgency/layui/images/place/Pls1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('20', '<丽水云和梯田-仙都鼎湖峰-古堰画乡>', '0578', '999', '100', '古堰画乡景区，大木山骑行茶园，仙都鼎湖峰，云和梯田', null, 'http://localhost:8080/TravelAgency/layui/images/place/Pls2.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('21', '<衢州天脊龙门景区>', '0570', '5666', '100', '景区奇峰峭壁景色壮观，沿着道路爬山可以看到瀑布', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pqz1.png', '100%', '嗨浙');
INSERT INTO `product_tbl` VALUES ('22', '<衢州廿八都古镇>', '0570', '3333', '100', '下山的途中还有玻璃栈道在玻璃栈道上往下看有些胆战心惊值得去体验一番。', '', 'http://localhost:8080/TravelAgency/layui/images/place/Pqz2.png', '100%', '嗨浙');

-- ----------------------------
-- Table structure for `producttip_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `producttip_tbl`;
CREATE TABLE `producttip_tbl` (
  `tipId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feature` varchar(1500) DEFAULT NULL,
  `pDesc` varchar(1500) DEFAULT NULL,
  `cost` varchar(1500) DEFAULT NULL,
  `notice` varchar(1500) DEFAULT NULL,
  `comment` varchar(1500) DEFAULT NULL,
  `pId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`tipId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of producttip_tbl
-- ----------------------------
INSERT INTO `producttip_tbl` VALUES ('1', '产品概要\r\n行程天数：1天 成团地点：杭州成团 目的地：嘉兴 往返交通：汽车/汽车 报名截止时间：团期前1天23点 组团形式： 联合发团；本产品与其他旅行社联合发团。\r\n产品特色\r\n产品特色\r\n产品特色详情\r\n杭州唯一，一天走完西湖和乌镇的旅游线路，休闲深度游，纯玩无购物，走的就是特色，玩的就是透明。\r\n★我们承诺铁定发班，说走就走，自由自在享受古镇浪漫时光，只要您报名 我们就发团！\r\n★全天没有任何购物店，免去您购物逗留的烦恼，为您节约宝贵的旅行时间！\r\n★含船游西湖、雷峰塔、万松书院、花港观鱼、乌镇水乡、夜观著名乌镇西栅夜景一天走完两大著名景区', '第1天 杭州  西湖景区  乌镇西栅  杭州\r\n吴山广场商业圈  西湖景区 景点 · 万松书院\r\n景点 · 雷峰塔 景点 · 西湖\r\n景点 · 三潭印月 - 平湖秋月 - 断桥残雪\r\n杭州  乌镇西栅  景点 · 乌镇西栅 - 草本染色作坊 - 昭明书院 - 乌镇老邮局 - 白莲塔寺 - 乌镇关帝庙 - 茅盾纪念馆\r\n\r\n', '费用包含\r\n•交      通： 往返旅游巴士\r\n•门      票： 行程中所含的景点首道大门票，乌镇西栅+雷峰塔+万松书院+西湖游船。\r\n•导      服： 全程陪同中文导游，。\r\n•儿童价标准： 身高0.8~1.2米（含），不占床,只含旅游车车费、导服，不含门票，如有产生其他费用敬请自理。\r\n费用不包含\r\n•补      充： 因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因所引致的额外费用。；当地参加的自费以及以上\"费用包含\"中不包含的其它项目。\r\n•旅游意外险： 旅游人身意外保险', '出行须知\r\n•交通信息： （1）合同一经签订且付全款，团队机票、列车票、船票即为出票，不得更改、签转、退票。\r\n（2）飞行时间、车程时间、船程时间以当日实际所用时间为准。\r\n（3）本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。\r\n•游　　览： （1）景点游览、自由活动、购物店停留的时间以当天实际游览为准。\r\n（2）行程中需自理门票和当地导游推荐项目，请自愿选择参加。\r\n（3）请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。\r\n（4）团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的20%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。\r\n（5）如遇台风、暴雪等不可抗因素导致无法按约定行程游览，行程变更后增加或减少的费用按旅行社团队操作实际发生的费用结算。', '.--游客--bao--评论--不错', '1');
INSERT INTO `producttip_tbl` VALUES ('2', '套餐介绍\r\n★经典单人2日游\r\n【住】宋城千古情主题酒店（杭州西湖店）1间1晚，自选房型；\r\n【食】自助早餐两份；\r\n【游】宋城+千古情表演套票1张\r\n★经典双人2日游 \r\n【住】宋城千古情主题酒店（杭州西湖店）1间1晚，\r\n自选房型【食】自助早餐两份\r\n【游】宋城+千古情表演套票2张★经典双人3日游 \r\n【住】宋城千古情主题酒店（杭州西湖店）1间2晚，自选房型\r\n【食】自助早餐两份\r\n【游】宋城+千古情表演套票2张\r\n★宋城+温泉2日游\r\n【住】宋城千古情主题酒店（杭州西湖店）1间1晚，自选房型\r\n【食】自助早餐两份\r\n【游】宋城+千古情表演+云曼温泉套票2张\r\n★宋城+乐园2日游\r\n【住】宋城千古情主题酒店（杭州西湖店）1间1晚，自选房型\r\n【食】自助早餐两份\r\n【游】宋城+千古情表演+烂苹果乐园套票2张', '杭州限行范围】\r\n留祥路—石祥路—石桥路—秋涛路—复兴路—老复兴路—虎跑路—满觉陇路—五老峰隧道—吉庆山隧道—梅灵北路—九里松隧道—灵溪南路—灵溪隧道—西溪路—紫金港路—文一西路—古墩路构成的围合区域内所有道路以及高架桥和隧道。\r\n温馨提示：除虎跑路、满觉陇路、五老峰隧道、吉庆山隧道、梅灵北路、九里松隧道、灵溪南路、灵溪隧道、西溪路外，其他围合道路均不含。', '费用包含\r\n门票：行程中所含的景点首道大门票。', '预订须知\r\n特殊人群限制\r\n· 病患者、孕妇及行动不便者\r\n1.为了确保旅游顺利出行，防止旅途中发生人身意外伤害事故，请旅游者在出行前做一次必要的身体检查，如存在下列情况，因服务能力所限无法接待：\r\n（1）传染性疾病患者，如传染性肝炎、活动期肺结核、伤寒等传染病人；\r\n（2）心血管疾病患者，如严重高血压、心功能不全、心肌缺氧、心肌梗塞等病人；\r\n（3）脑血管疾病患者，如脑栓塞、脑出血、脑肿瘤等病人；\r\n（4）呼吸系统疾病患者，如肺气肿、肺心病等病人；\r\n（5）精神病患者，如癫痫及各种精神病人；\r\n（6）严重贫血病患者，如血红蛋白量水平在50克/升以下的病人；\r\n（7）大中型手术的恢复期病患者；', '.', '2');
INSERT INTO `producttip_tbl` VALUES ('3', '产品特色详情\r\n\r\n★★城市一车到底系列 ★\r\n\r\n样板线上榜理由——看到这个，你就知道可以放心选\r\n★  讲规范：我们细致认真的做线路，承诺网上出现的信息都是真实可靠，凡是细节处必作说明，让您扫过的线路真正成为您的行程预览，省去您售前的疑问！\r\n                 （大型节假日或者天气等自然因素、或者G20导致等特殊情况的导致的临时调整，也望您理解和支持哦！）\r\n★  高服务：本线路指定质量用车，让您出行旅行更舒适。\r\n★ 精华线：我们承诺纯玩无购物，保证您的游玩品质，另外，西塘不仅有千年的小桥流水，还有新开辟的西街商业街，说完了的老街的旧历史，不妨去西街坐坐逛逛，寻觅文艺的新感觉吧！', '景点 · 西塘 景点 · 烟雨长廊\r\n景点 · 西塘摇橹船 ', '费用包含\r\n•交      通： 往返旅游巴士\r\n•门      票： 行程中所含的景点首道大门票，西塘。\r\n•导      服： 当地中文导游，竭诚为您服务。\r\n•儿童价标准： 儿童价特殊说明:0-1.2米需购买儿童票，仅含车位、导服，其余自理。1.2米以上与成人同价。请根据实际情况预定\r\n费用不包含\r\n•其      他： 本行程不含餐，所有餐费敬请自理\r\n•补      充： 因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因所引致的额外费用。；当地参加的自费以及以上\"费用包含\"中不包含的其它项目。\r\n•旅游意外险： 旅游人身意外保险', '出行须知\r\n•交通信息： （1）合同一经签订且付全款，团队机票、列车票、船票即为出票，不得更改、签转、退票。\r\n（2）飞行时间、车程时间、船程时间以当日实际所用时间为准。\r\n（3）本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。\r\n•游　　览： （1）景点游览、自由活动、购物店停留的时间以当天实际游览为准。\r\n（2）行程中需自理门票和当地导游推荐项目，请自愿选择参加。\r\n（3）请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。\r\n（4）团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的20%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。\r\n（5）如遇台风、暴雪等不可抗因素导致无法按约定行程游览，行程变更后增加或减少的费用按旅行社团队操作实际发生的费用结算。', '.', '3');
INSERT INTO `producttip_tbl` VALUES ('4', '乌镇景区\r\n【1】东栅景区，是中国著名的古镇旅游胜地。景区游程达2公里，由东栅老街、观前街、河边水阁、廊棚组成，东栅景区占地面积约为0.9平方公里，设有十多个景点。\r\n【2】西栅以酒吧闻名，游玩西栅景区，与古镇美景零距离接触；西栅由12座小岛组成，70多座小桥将这些小岛串连在一起，河流密度和石桥数量均为全国古镇。', '自由', '费用包含\r\n住宿：所选酒店住宿房型。\r\n门票：所选景点首道大门票，以所选门票为准。\r\n费用不包含\r\n不含入住次日酒店早餐\r\n因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因所引致的额外费用酒店内洗衣、理发、电话、传真、收费电视、饮品、烟酒等个人消费当地参加的自费以及以上\"费用包含\"中不包含的其它项目升级舱位、升级酒店、升级房型等产生的差价\r\n旅游人身意外保险', '预订须知\r\n预订须知\r\n1、自驾游产品均为即时计价，请以网站或者客服通知的最终确认价格为准。\r\n2、预订成功后，如发生退改会产生相应的违约金，部分产品退改全损，具体详见产品详情和签约协议。\r\n3、自驾游线路产品，为景点和酒店的进行综合优惠的产品，因此不可重复享受优惠。\r\n4、因为酒店房态动态实时更新，在线支付预订房型结果将以酒店最终确认为准，如因所选房型无房，需升级房型或更换酒店途牛客服会联系您变更或补足差价，如您不接受以上处理方式，会给您办理全额退款。\r\n5、在您完成订单签约后，会有相应的途牛客服以短信或者电话的形式与您联系，请保持手机畅通。\r\n6、旅途中可能会因天气、节假日、交通管制等特殊情况遭遇堵车或景区排队限流，以上还请游客谅解并配合。\r\n7、由于列车、航班等公共交通工具延误或取消，以及第三方侵害等不可归责于旅行社的原因导致旅游者人身、财产权受到损害的，旅行社不承担责任，但会积极协助解决旅游者与责任方之间的纠纷。', '.', '4');
INSERT INTO `producttip_tbl` VALUES ('5', '台州仙居神仙居景点介绍\r\n\r\n景点介绍\r\n台州仙居神仙居风景区简介\r\n“山不在高，有仙则名”。神仙居位于仙居县西南部，括苍山西麓，景区内深幽奇崛、流潭飞瀑、奇峰险崖、绝壁天坑、云海雾涛、丛林百态，徜徉其中，放佛打开了一部地质学的教科书，踏进了一座生态环境的展览馆和人文历史的体验图。美丽的神仙居欢迎你的到来\r\n“山不在高，有仙则名”。神仙居位于仙居县西南部，括苍山西麓，是仙居风景旅游的精华所在。目前有西罨 寺，韦羌山和聚仙谷三大景观群，由北海、南天两条索道飞架云际，将各景观群连接在一起，景区内深幽奇崛、流潭飞瀑、奇峰险崖、绝壁天坑、云海雾涛、丛林百态，集 “奇、险、雄、清、幽”于一体，汇“峰、瀑、溪、林”于一地，不类他山却能自成一格，匪夷所思却又回味无穷。徜徉其中，', '自由', '预订提醒：\r\n有效期限：（有效期内，仅限入园1次）指定游玩日当天内有效\r\n<台州仙居神仙居风景区门票>神仙居 团体票：10人起订', '08:00-15:30\r\n特别提醒：因工程施工，神仙居景区暂时封闭南索道上行段登山游步道，封道时间2017年10月11日至12月31日。请南线上山的游客乘坐南天索道上山游玩（北门上山的游客不收影响）。欢迎金秋观云海，一睹海拔919米的全世界最大天然观音像！', '.', '5');
INSERT INTO `producttip_tbl` VALUES ('6', '暂无', '暂无', '暂无', '暂无', '.', '6');
INSERT INTO `producttip_tbl` VALUES ('7', '产品概要\r\n行程天数：1天 成团地点：宁波成团 目的地：宁波 往返交通：汽车/汽车 报名截止时间：团期前1天12点 组团形式： 联合发团；本产品与其他旅行社联合发团。\r\n产品特色\r\n3月女性专属立减\r\n即日起，凡是报名本线路指定团期，仅仅针对女性客服，可享立减80元/人的专属优惠，仅限成人，不可与其他优惠共同享受，敬请知晓！非女性游客若参加此活动，则需现场补齐80元立减差价，敬请知晓！\r\n产品特色详情\r\n★ 设计灵感：《奔跑吧，兄弟》《极限挑战》官方指定乐园', '第1天 宁波  慈溪\r\n宁波  慈溪市\r\n景点 · 宁波方特东方神画主题公园\r\n推荐经典游玩项目如下——\r\n9:30-9:40     非遗小镇\r\n9:40-10:00    极地快车，疯狂马戏团，海盗船，丛林飞龙\r\n10:10-10:20   仙境奇缘，飞跃河谷\r\n10:30-10:50   女娲补天\r\n11:00-11:10   神洲塔\r\n11；20-11:30  惊魂之旅\r\n11:40-12:40   东方美食城(用餐自理)\r\n13:00-13:20   千古蝶恋\r\n13:30-14:00   天河之恋，纵横华夏\r\n14:20-14:40   决战金山寺(体验完后可参观熊出没舞台)\r\n15:30-16:00   长城绝恋', '费用包含\r\n•交      通： 往返旅游巴士\r\n•门      票： 行程中所含的景点首道大门票，宁波方特东方神画门票。\r\n•导      服： 全程陪同中文导游，。\r\n•导  服  费： 导服费10元/人。\r\n•儿童价标准： 儿童价特殊说明:身高0~1.2米（含），只含车位费、导游费；其他费用自理；根据交通条例新规定，旅游营运车辆不得超载，儿童必须占位，不得手抱儿童！若师傅发现超载，拒绝驾驶，同时有权请客人下车\r\n费用不包含\r\n•其      他： 景区园内有套餐中餐门市价40元/份，请提前告知导游代订，旅行社优惠价统一35元/份\r\n•补      充： 当地参加的自费以及以上\"费用包含\"中不包含的其它项目。\r\n•旅游意外险： 旅游人身意外保险', '出行须知\r\n•交通信息： （1）合同一经签订且付全款，团队机票、列车票、船票即为出票，不得更改、签转、退票。\r\n（2）飞行时间、车程时间、船程时间以当日实际所用时间为准。\r\n（3）本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。\r\n•游　　览： （1）景点游览、自由活动、购物店停留的时间以当天实际游览为准。\r\n（2）行程中需自理门票和当地导游推荐项目，请自愿选择参加。\r\n（3）请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。\r\n（4）团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的20%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。\r\n（5）如遇台风、暴雪等不可抗因素导致无法按约定行程游览，行程变更后增加或减少的费用按旅行社团队操作实际发生的费用结算。', '.', '7');
INSERT INTO `producttip_tbl` VALUES ('8', '罗蒙环球乐园\r\n罗蒙环球乐园占地面积约8.4万平方米，建筑面积约20万平方米，总投资约50余亿元人民币，是都市型室内主题乐园。罗蒙环球乐园整合中、美、韩等专业公司组成的团队参与规划、设计、建设，以“环球”为设计理念，并引入了安全刺激的游乐设备、炫丽的奇幻表演*温馨周到的五星级服务，致力于打造一个全天候、全要素、全龄层的都市梦幻乐园。', '景点 · 罗蒙环球乐园   住宿 · 宁波罗蒙希尔顿花园酒店', '费用包含\r\n交通:往返火车票\r\n住宿:所选酒店住宿房型。\r\n具体含餐情况见房型说明\r\n门票:所选景点首道大门票，罗蒙环球乐园1日门票。\r\n', '预订须知\r\n特殊人群限制\r\n· 病患者、孕妇及行动不便者\r\n1.为了确保旅游顺利出行，防止旅途中发生人身意外伤害事故，请旅游者在出行前做一次必要的身体检查，如存在下列情况，因服务能力所限无法接待：\r\n（1）传染性疾病患者，如传染性肝炎、活动期肺结核、伤寒等传染病人；\r\n（2）心血管疾病患者，如严重高血压、心功能不全、心肌缺氧、心肌梗塞等病人；\r\n（3）脑血管疾病患者，如脑栓塞、脑出血、脑肿瘤等病人；\r\n（4）呼吸系统疾病患者，如肺气肿、肺心病等病人；\r\n（5）精神病患者，如癫痫及各种精神病人；\r\n（6）严重贫血病患者，如血红蛋白量水平在50克/升以下的病人；\r\n（7）大中型手术的恢复期病患者；', '.', '8');
INSERT INTO `producttip_tbl` VALUES ('9', '产品特色\r\n产品特色详情\r\n★ 设计灵感：祈福一日游，含行程所列景点门票、空调旅游车、岛上交通车、中餐、往返船票、导游服务。\r\n★本线路为会与同目的地其他旅行社拼车往返，若建议的旅客，请见谅，自行订购\r\n★ 此行程去程和返程不保证同一辆用车，如有不便敬请谅解。', '第1天 宁波  普陀\r\n宁波  朱家尖\r\n宁波市月湖大酒店门口集合上车（宁波市海曙区共青路71号）【本线路不排座位，按先上车先坐的原则】\r\n景点 · 西天景区 - 磐陀石 - 二龟听法石  景点 · 普济寺\r\n景点 · 南海观音   普陀山  朱家尖\r\n朱家尖  宁波\r\n晚餐：敬请自理\r\n敬请自理\r\n住宿 · 温馨的家', '费用包含\r\n•交      通： 往返旅游巴士；船票()\r\n•用      餐： 行程中团队标准用餐，（中式餐或自助餐或特色餐，自由活动期间用餐请自理；如因自身原因放弃用餐，则餐费不退）。\r\n•门      票： 行程中所含的景点首道大门票，含行程中所列寺庙香花券。\r\n•导      服： 全程陪同中文导游，专业执政导游服务。\r\n•儿童价标准： 儿童价特殊说明:1.儿童出行只含车位费和船票，导服，不含住宿及门票等费用儿童门票不接受预订，请至景区门口自行购买，其它产生费用敬请自理2.儿童车票与成人同价，重要提示：因交管规定，婴儿必须占座，因此0米以上婴儿儿童必须占座，必须提交人头数，私自携带未预订婴儿出游，均无法安排上车，敬请理解）3.如您的小孩身高超过1.2米请直接选择成人价，景区对特定人群有门票优惠政策参考温馨提醒\r\n•赠      送： 中餐\r\n•其      他： 如需送火车站请提前告知，在所有游客结束行程后免费提供\r\n费用不包含\r\n•其      他： 游客自行发生的费用\r\n•旅游意外险： 旅游人身意外保险', '出行须知\r\n•交通信息： （1）合同一经签订且付全款，团队机票、列车票、船票即为出票，不得更改、签转、退票。\r\n（2）飞行时间、车程时间、船程时间以当日实际所用时间为准。\r\n（3）本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。\r\n•游　　览： （1）景点游览、自由活动、购物店停留的时间以当天实际游览为准。\r\n（2）行程中需自理门票和当地导游推荐项目，请自愿选择参加。\r\n（3）请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。\r\n（4）团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的20%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。\r\n（5）如遇台风、暴雪等不可抗因素导致无法按约定行程游览，行程变更后增加或减少的费用按旅行社团队操作实际发生的费用结算。\r\n（6）出游过程中，如产生退费情况，以退费项目旅行社折扣价为依据，均不以挂牌价为准。', '', '9');
INSERT INTO `producttip_tbl` VALUES ('10', '暂无', '暂无', '暂无', '暂无', '', '10');
INSERT INTO `producttip_tbl` VALUES ('11', '产品特色详情\r\n﻿❤❤❤❤❤❤❤❤❤❤有一种美近在身边  有一个故事叫做小城故事❤❤❤❤❤❤❤❤❤❤如水墨的山水画中，一叶乌篷船荡漾其间，这便是人杰地灵之地——古韵绍兴跟着我，我们一起探秘最深邃、最古韵的绍兴那幅画……\r\n穿越老绍兴2500年的历史古城名人圣地，品读一代大书法家王羲之的生活意境……\r\n❤❤❤❤❤❤❤❤❤❤设计灵感❤❤❤❤❤❤❤❤❤❤\r\n1.穿越古镇，体验古韵，品味古色，感受古香！\r\n2.来绍兴，我们看绍兴最美的山水景点【柯岩、鉴湖、鲁镇】，有机会品绍兴美食、美酒。\r\n★ 我们承诺：给您最好的体验，带给您最美的感受！\r\n☆不推荐游客参加人身安全不确定的活动，禁止﻿游客进行游泳活动，游客擅自行动，产生后果自负；请游客在报名时提供的姓名、电话号码、身份证信息等确保准确、畅通！', '景点 · 柯岩、鉴湖、鲁镇\r\n自由活动\r\n下午休闲度假、赠送古城地图，自助游览逛古城\r\n下午休闲度假、赠送古城地图，自助游览逛古城：绍兴水陆古城墙、越王城历史街区、仓桥直街等。我国最早的“立交桥”八字桥，越来越被海内外游客所青睐和赞叹。自由自在，品美食、穿老街，游览自己想去的地方。（自助游：不提供车辆，无导游陪同）', '费用包含\r\n•交      通： 往返旅游巴士\r\n•小  交  通： 景区内用车(老绍兴黄包车)。\r\n•住      宿： 行程所列酒店。\r\n•门      票： 行程中所含的景点首道大门票，柯岩、鉴湖、鲁镇。\r\n•导      服： 全程陪同中文导游，竭诚为您服务。\r\n•儿童价标准： 身高0.8~1.2米（含），不占床,只包含座位费及导服费，其余产生费用自理。\r\n费用不包含\r\n•小  交  通： 景区内用车（鉴湖游船自理15元/人）\r\n•单  房  差： 单房差（具体见团期报价）。\r\n•门      票： 行程中注明需要另行支付的自费景点（具体请参考行程描述）。\r\n•补      充： 因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因所引致的额外费用。；酒店内洗衣、理发、电话、传真、收费电视、饮品、烟酒等个人消费。；当地参加的自费以及以上\"费用包含\"中不包含的其它项目。\r\n•旅游意外险： 旅游人身意外保险', '出行须知\r\n•交通信息： （1）合同一经签订且付全款，团队机票、列车票、船票即为出票，不得更改、签转、退票。\r\n（2）飞行时间、车程时间、船程时间以当日实际所用时间为准。\r\n（3）本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。\r\n•游　　览： （1）景点游览、自由活动、购物店停留的时间以当天实际游览为准。\r\n（2）行程中需自理门票和当地导游推荐项目，请自愿选择参加。\r\n（3）请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。\r\n（4）团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的20%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。\r\n（5）如遇台风、暴雪等不可抗因素导致无法按约定行程游览，行程变更后增加或减少的费用按旅行社团队操作实际发生的费用结算。\r\n（6）出游过程中，如产生退费情况，以退费项目旅行社折扣价为依据，均不以挂牌价为准。', '', '11');
INSERT INTO `producttip_tbl` VALUES ('12', '暂无', '暂无', '暂无', '暂无', '', '12');
INSERT INTO `producttip_tbl` VALUES ('13', '中国大竹海\r\n中国大竹海（国家AAAA级旅游景区），位于浙江省湖州市安吉县。是单纯毛竹为主的林地，中国东南部最大的竹文化生态休闲旅游区，浙江省最著名的大毛竹示范基地，有“中国毛竹看浙江，浙江毛竹看安吉，安吉毛竹看港口”之誉。2007年大竹海跻身于“大杭州”的游乐版图，成为安吉距杭州最近的绿色窗口。\r\n中南百草园\r\n中南百草原是长三角地区最大的生态休闲观光景区之一，地处竹乡浙江省安吉县境内，总面积5600亩，已投资6亿多元，是国家AAAA级景区、全国农业旅游示范点，获得全国创业带动型优秀企业、全国休闲农业与乡村旅游五星级企业（园区）等众多荣誉。经过多年的发展，景区已形成了集休闲运动、生态观光、教育培训、农业开发、商品贸易等多产业的经营格局。景区特别划分出大致的七大功能区，包括生态植物观光区、野生动物繁殖区、户外体育运动区、黄浦江源湿地水上漂流、原始淡竹宫、高效生态农业示范园区、休闲度假区等，八大景、十八园也包含在其中。', '安吉开元曼居酒店\r\n安吉开元•曼居酒店地处安吉县递铺镇天荒坪北路，近天荒坪中路与浦源大道，周围餐饮 生活配套齐全，交通便利。酒店环境整洁舒适，客房宽敞明亮、干净卫生，房内设施齐全，服务热情周到，是你商旅出行住宿的便捷之选。酒店还配备有设施完善的多功能厅、贵宾会议室、休闲大堂吧及商场。营造一个舒适、优雅、温馨的旅居环境，能让你放慢节奏，享受生活。', '费用包含\r\n住宿：所选酒店住宿房型。安吉开元曼居酒店1晚。\r\n门票：所选景点首道大门票，门票自选。\r\n其他：次日酒店早餐', '预订须知\r\n预订须知\r\n1、自驾游产品均为即时计价，请以网站或者客服通知的最终确认价格为准。\r\n2、预订成功后，如发生退改会产生相应的违约金，部分产品退改全损，具体详见产品详情和签约协议。\r\n3、自驾游线路产品，为景点和酒店的进行综合优惠的产品，因此不可重复享受优惠。\r\n4、因为酒店房态动态实时更新，在线支付预订房型结果将以酒店最终确认为准，如因所选房型无房，需升级房型或更换酒店途牛客服会联系您变更或补足差价，如您不接受以上处理方式，会给您办理全额退款。\r\n5、在您完成订单签约后，会有相应的途牛客服以短信或者电话的形式与您联系，请保持手机畅通。\r\n6、旅途中可能会因天气、节假日、交通管制等特殊情况遭遇堵车或景区排队限流，以上还请游客谅解并配合。\r\n7、由于列车、航班等公共交通工具延误或取消，以及第三方侵害等不可归责于旅行社的原因导致旅游者人身、财产权受到损害的，旅行社不承担责任，但会积极协助解决旅游者与责任方之间的纠纷。', '', '13');
INSERT INTO `producttip_tbl` VALUES ('14', '暂无', '暂无', '暂无', '暂无', '', '14');
INSERT INTO `producttip_tbl` VALUES ('15', '石桅岩景区\r\n石桅岩景区，位于浙江省永嘉县楠溪江风景名胜区东北部，东与北雁荡山毗邻，总面积86平方公里。沿仙清公路至渡头分道，依鹤盛溪东行，即进入该景区。\r\n崖下库景区\r\n崖下库位于大若岩镇小若口北偏西2.5公里处山谷中，一涧长1公里，空30余米，两侧陡壁高300余米，仅露一线蓝天。游人至此，幌若置身于摩天大厦的胡同中，黑魊魊的崖嶂从两旁向人压过来。夏日正午，才见几分钟阳光，是理想的避暑佳境。游人可以在陶公洞乘农用三轮车前往景点。\r\n龙湾潭景区\r\n龙湾潭森林公园位于浙江永嘉县的东部，距县城(上塘)50公里，离石桅岩景区21公里，距乐清雁荡山68余公里，交通便利，总面积15.62平方公里。。国家级风景名胜区，一级景点七折瀑、五连瀑，二级景点骆驼峰、三曲瀑、石柱岩、孔雀拜仙、石墙等以及众多的三级景点，奇峰异岩，飞瀑碧潭重峦叠嶂，溪流纷争层林尽翠，四季常青维管束植物162科群多的珍禽异兽，被当地人们称赞为富有生机和活力的山水画卷。', '暂无', '费用包含\r\n住宿：君兰瓦居名宿1晚。\r\n门票：所选景点首道大门票，门票自选。\r\n其他：次日酒店含早餐\r\n费用不包含\r\n因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因所引致的额外费用酒店内洗衣、理发、电话、传真、收费电视、饮品、烟酒等个人消费当地参加的自费以及以上\"费用包含\"中不包含的其它项目升级舱位、升级酒店、升级房型等产生的差价\r\n旅游人身意外保险', '预订须知\r\n预订须知\r\n1、自驾游产品均为即时计价，请以网站或者客服通知的最终确认价格为准。\r\n2、预订成功后，如发生退改会产生相应的违约金，部分产品退改全损，具体详见产品详情和签约协议。\r\n3、自驾游线路产品，为景点和酒店的进行综合优惠的产品，因此不可重复享受优惠。\r\n4、因为酒店房态动态实时更新，在线支付预订房型结果将以酒店最终确认为准，如因所选房型无房，需升级房型或更换酒店途牛客服会联系您变更或补足差价，如您不接受以上处理方式，会给您办理全额退款。\r\n5、在您完成订单签约后，会有相应的途牛客服以短信或者电话的形式与您联系，请保持手机畅通。\r\n6、旅途中可能会因天气、节假日、交通管制等特殊情况遭遇堵车或景区排队限流，以上还请游客谅解并配合。\r\n7、由于列车、航班等公共交通工具延误或取消，以及第三方侵害等不可归责于旅行社的原因导致旅游者人身、财产权受到损害的，旅行社不承担责任，但会积极协助解决旅游者与责任方之间的纠纷。', '', '15');
INSERT INTO `producttip_tbl` VALUES ('16', '暂无', '暂无', '暂无', '暂无', '', '16');
INSERT INTO `producttip_tbl` VALUES ('17', '暂无', '暂无', '暂无', '暂无', '', '17');
INSERT INTO `producttip_tbl` VALUES ('18', '暂无', '暂无', '暂无', '暂无', '', '18');
INSERT INTO `producttip_tbl` VALUES ('19', '暂无', '暂无', '暂无', '暂无', '', '19');
INSERT INTO `producttip_tbl` VALUES ('20', '暂无', '暂无', '暂无', '暂无', '', '20');
INSERT INTO `producttip_tbl` VALUES ('21', '暂无', '暂无', '暂无', '暂无', '', '21');
INSERT INTO `producttip_tbl` VALUES ('22', '11', '1', '1', '1', '', '22');

-- ----------------------------
-- Table structure for `scenery_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `scenery_tbl`;
CREATE TABLE `scenery_tbl` (
  `sId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sName` varchar(20) DEFAULT NULL,
  `sAddress` varchar(100) DEFAULT NULL,
  `sTime` varchar(50) DEFAULT NULL,
  `sDesc` varchar(520) DEFAULT NULL,
  `sPath` varchar(100) DEFAULT NULL,
  `sNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenery_tbl
-- ----------------------------
INSERT INTO `scenery_tbl` VALUES ('1', '雷峰塔', '景点地址:杭州', '开放时间:全天', '1、雷峰夕照为西湖十景之一，一座现代化的古塔，从长桥的角度拍夕照挺美的。传说美丽，看夕阳不错。也因《白蛇传》中禁锢白娘子的传说而闻名遐迩。2、最佳季节：四季皆宜。每个季节景色各不相同3、建议游玩：2小时4、门票：40元，学生票30元，但只在7、8月售卖5、开放时间：每年3月15日—11月15日8:00-20:30，11月16日—次年3月14日8:00—17:306、地址：浙江省杭州市西湖区南山路15号7、交通： K4、K808、Y1、Y3、J5、822/K822、K504、Y6、Y9、Y7、514区路净寺站下车   ', 'http://localhost:8080/TravelAgency/layui/images/place/hzjd1.png', '0571');
INSERT INTO `scenery_tbl` VALUES ('2', '西湖', '景点地址:杭州', '开放时间:全天', '    西湖，位于浙江省杭州市西面，它以其秀丽的湖光山色和众多的名胜古迹而闻名中外，是中国著名的旅游胜地，也被誉为“人间天堂”。是中国大陆首批国家重点风景名胜区和中国十大风景名胜之一。它是中国大陆主要的观赏性淡水湖泊之一，与南京玄武湖、嘉兴南湖并称为“江南三大名湖”，也是现今《世界遗产名录》中少数几个和中国唯一一个湖泊类文化遗产。                西湖三面环山，面积约6.39平方千米，东西宽约2.8千米，南北长约3.2千米，绕湖一周近15千米。湖中被孤山、白堤、苏堤、杨公堤分隔，按面积大小分别为外西湖、西里湖、北里湖、小南湖及岳湖等五片水面，苏堤、白堤越过湖面，小瀛洲、湖心亭、阮公墩三个小岛鼎立于外西湖湖心，夕照山的雷峰塔与宝石山的保俶塔隔湖相映，由此形成了“一山、二塔、三岛、三堤、五湖”的基本格局。       西湖旧十景：苏堤春晓、曲苑风荷、平湖秋月、断桥残雪、柳浪闻莺、花港观鱼、雷峰夕照、双峰插云、南屏晚钟、三潭印月；西湖新十景：云栖竹径、满陇桂雨、虎跑梦泉、龙井问茶、九溪烟树、吴山天风、阮墩环碧、黄龙吐翠、玉皇飞云、宝石流霞。', 'http://localhost:8080/TravelAgency/layui/images/place/hzjd.png', '0571');
INSERT INTO `scenery_tbl` VALUES ('3', '清明上河图', '景点地址:杭州', '开放时间:全天', '通过科技手段把《清明上河图》活化起来，在近200平方的幕布上动态画卷徐徐展开，近千名形态各异的人物，通过动态环境的组合，将繁忙的漕运、喧闹的街市、祥和的宅院以及昼夜的交替表现得惟妙惟肖，展现了盛世宋朝的都市风情。乐乐老师记得，《清明上河图》最早应该是出现在上海世博会的中华艺术宫，', 'http://localhost:8080/TravelAgency/layui/images/place/hzjd2.png', '0571');
INSERT INTO `scenery_tbl` VALUES ('4', '清河坊历史文化街区', '景点地址:杭州', '开放时间:全天', '滨江江陵路到清河坊历史街区：地铁1号线 定安路站D口出，一直往前走，然后十字路口右转直走便是。  ', 'http://localhost:8080/TravelAgency/layui/images/place/hzjd3.png', '0571');
INSERT INTO `scenery_tbl` VALUES ('5', '佛窟探秘', '景点地址:杭州', '开放时间:全天', ' 历史上，杭州是我国东南沿海的佛教中心，南宋时期寺院林立、佛学盛行、名传海内外。仙山佛窟区内有佛窟探秘、释迦牟尼造像、卧佛、财神庙、月老祠、观音殿等，再现了“东南佛国”的奇观。沿山坡建造的台阶，包括一些壁画，佛像等等。爬到高处可以看宋城全景。  ', 'http://localhost:8080/TravelAgency/layui/images/place/hzjd4.png', '0571');
INSERT INTO `scenery_tbl` VALUES ('6', '西塘古镇', '景点地址:浙江省嘉善县西塘镇南苑路258号', '开放时间:8:00-17:00', '西塘古镇位于浙江省嘉善县，江浙沪三省交界处。古名斜塘，平川，距嘉善市区10公里。是吴地汉文化的千年水乡古镇，江南六大古镇之一。西塘全镇总面积83.61平方公里，其中古镇区面积1.04平方公里，人口近8.6万。西塘被誉为生活着的千年古镇。已被列入世界历史文化遗产预备名单，中国首批历史文化名镇，国家AAAA级景区。历史文化西塘历史悠久，是古代吴越文化的发祥地之一。', 'http://localhost:8080/TravelAgency/layui/images/place/JD1.png\r\n\r\n', '0573');
INSERT INTO `scenery_tbl` VALUES ('7', '普陀山风景区', '景点地址:浙江省舟山市普陀山梅岑路115号。', '开放时间:08:00-17:00', '普陀山，与山西五台山、四川峨眉山、安徽九华山并称为中国佛教四大名山，是观世音菩萨教化众生的道场。普陀山是舟山群岛1390个岛屿中的一个小岛，形似苍龙卧海，与舟山群岛的沈家门隔海相望，素有“海天佛国”、“南海圣境”之称，是首批国家重点风景名胜区。 普陀山以其神奇、神圣、神秘，成为驰誉中外的旅游胜地。 风景名胜普陀山四面环海，风光旖旎，幽幻独特，被誉为“第一人间清净地”。山石林木、寺塔崖刻、梵音涛声，皆充满佛国神秘色彩。岛上树木丰茂，古樟遍野，鸟语花香，素有“海岛植物园”之称。', 'http://localhost:8080/TravelAgency/layui/images/place/JD2.png', '0580');
INSERT INTO `scenery_tbl` VALUES ('8', '宁波老外滩', '景点地址:浙江省宁波市江北区老外滩', '开放时间:全天开放', '宁波老外滩坐落于宁波市三江口北岸的江北区，于1844年开埠， 地处宁波市中心，位于甬江、奉化江和余姚江的三江汇流之地，唐宋以来就是最繁华的港口之一，曾是“五口通商”中最早的对外开埠区，比上海外滩还早20年。 如今，老外滩仍保存着大量漂亮的欧式老建筑，它们大多改作了小资的酒吧和餐厅，因此这里成了宁波挺有情调的休闲区，也是宁波的地标之一。', 'http://localhost:8080/TravelAgency/layui/images/place/JD3.png', '0574');
INSERT INTO `scenery_tbl` VALUES ('9', '三味书屋', '景点地址:浙江省绍兴市都昌坊口11号', '开放时间:8:20-17:00', '是晚清绍兴府城内著名私塾，位于都昌坊口11号。三味书屋是三开间的小花厅，本是寿家的书房。坐东朝西，北临小河，与周家老台门隔河相望。鲁迅12岁至17岁在此求学。书房正中悬挂着“三味书屋”匾额。所谓“三味”，是取“读经味如稻粱，读史味如肴馔，读诸子百家味如醯醢”之义。匾额下方是一张松鹿图，两旁屋柱上有“至乐无声唯孝弟，大囊有味是诗书”一幅抱对，匾中抱对皆为清代书法家梁同书的手笔。鲁迅的座位在书房的东北角，这张硬木书桌是鲁迅使用过的原物，桌面右边有一个鲁迅亲手刻下的“早”字。', 'http://localhost:8080/TravelAgency/layui/images/place/JD4.png', '0575');
INSERT INTO `scenery_tbl` VALUES ('10', '南浔古镇', '景点地址:湖州市南浔区南浔镇人瑞路51号', '开放时间:夏季（4月-10月）7:30-17:00，冬季（11月-次年3月）8:00-16:30', '南浔镇位于浙江省北部，湖州市东部，东北部与江苏省苏州市毗邻，江南六大古镇之一。属太湖流域和杭嘉湖平原，居长江三角洲经济区腹地。南浔镇是千年文化古镇，中国十大魅力名镇，浙江省百强镇，全国工业千强镇之一。 南浔镇是南浔区政府的所在地，地处长江三角洲杭嘉湖平原，位于沪、宁、苏、杭经济圈中心，是浙江湖州接轨上海的东大门。 风景名胜南浔镇是独具魅力的旅游胜地。南浔镇名胜古迹众多，与自然风光和谐统一，既充满着浓郁的历史文化底蕴和灵气，又洋溢着江南水乡诗画一般的神韵，而欧陆情调与江南古风的意外并处、相得益彰，使古镇魅力更加引人入胜。', 'http://localhost:8080/TravelAgency/layui/images/place/JD5.png', '0572');
INSERT INTO `scenery_tbl` VALUES ('11', '横店秦王宫', '景点地址:金华东阳市横店镇横店影视城内', '开放时间:8:00-16:30', '横店秦王宫，是横店影视城继广州街景区之后，第二个建造起来的景区。1997年，陈凯歌为了拍摄《荆轲刺秦王》，精心准备了四年，设计师们花费了四年心血设计出了一幅宏伟的秦王宫蓝图。风景名胜横店秦王宫景区占地面积800亩，建筑面积达11万平方米。', 'http://localhost:8080/TravelAgency/layui/images/place/JD6.png', '0579');
INSERT INTO `scenery_tbl` VALUES ('12', '紫阳古街', '景点地址:台州临海市紫阳街', '开放时间:全天开放', '临海市的巾子山下，龙兴寺旁，古长城边，有一条历史人文遗存众多、文化味浓郁的古街——紫阳古街。古街内独有的千尊佛像古井，国内独一无二的墙体建筑，可称625公斤重量的“中国第一秤”等历史人文遗存和古今大观，吸引了一拨又一拨的中外游人。紫阳古街全长1080米，宽约4米至5米，南北走向。街的两侧均为二至三层的木结构建筑，底楼前店后坊，二三楼住人，街面的门和窗柱上均有龙凤等艺术雕刻图案，栩栩如生，生动形象，体现了明清建筑特色。', 'http://localhost:8080/TravelAgency/layui/images/place/JD7.png', '0576');
INSERT INTO `scenery_tbl` VALUES ('13', '雁荡山风景名胜区', '景点地址:温州乐清市雁荡山雁山路88号', '开放时间:08:00-22:30', '位于中国浙江省乐清市境内，部分位于永嘉县及温岭市。距杭州297公里，距温州68公里。景点介绍1982年，被国务院定为第一批国家重点风景名胜区。 雁荡山是环太平洋东海边上的一座白垩纪流纹质古火山。它记录了中生代古火山发生、演化的历史，也展示了一亿年来地质作用所形成的深谷、峰林，有“造型地貌博物馆”之称。 景点特色雁荡山，素有“海上名山”、“寰中绝胜”之誉，史称我国“东南第一山”，以“山水奇秀”驰名中外，称著于我国名山之列。山中山水形胜，环境怡人，冬暖夏凉，气候宜人，泉水清澈，空气新鲜，山珍海味，誉满海内外，历来是游览、避暑和休养的胜地。', 'http://localhost:8080/TravelAgency/layui/images/place/JD8.png', '0577');
INSERT INTO `scenery_tbl` VALUES ('14', '南尖岩', '景点地址:丽水市遂昌王村口镇石笋头村', '开放时间:6：00—17：00', '浙江遂昌南尖岩景区是联合国科教文组织授予的“国际摄影创作基地”。主峰海拔1626米，景区面积6平方公里。景区内林木繁茂、修竹成海、奇峰耸立、瀑布飞泻，共有30多处景点。主要景观有：天柱峰、神坛峰、千丈岩、小石林、神龟探海等多处奇峰异石构成的地貌景观。霞归瑶池、九级瀑布、龙门飞瀑等构成的水体景观。竹海、林海、针阔混交林、古松为主的动植物160多科，1100多种构成的生物景观。', 'http://localhost:8080/TravelAgency/layui/images/place/JD9.png', '0578');
INSERT INTO `scenery_tbl` VALUES ('15', '衢州天脊龙门景区', '景点地址:衢州市衢江区衢江区黄坛口乡下呈村天脊龙门景区', '开放时间:08:00—17:00', '天脊龙门，原名龙门峡谷，是国家级森林公园、省级风景名胜区、国家AA级旅游区——紫薇山国家森林公园的主景区之一，属衢南仙霞岭山系的一部分。景区开发面积14平方公里，是观光旅游与休闲度假与一体的风景旅游区。 景区集奇山异石、天然洞府、幽谷川流和自然园林景观于一体，聚山、林、泉、瀑、云、雾等奇观于一谷，形成了险、雄、奇、秀、幽之形胜。景区内的山体主要由火山岩构成，晚侏罗高坞组地层遍复其上，由紫灰色块状烁溶结凝灰岩组成。其中，水门尖海拔1452.6米，为衢州市境内最高峰之一。', 'http://localhost:8080/TravelAgency/layui/images/place/JD10.png', '0570');

-- ----------------------------
-- Table structure for `user_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `user_tbl`;
CREATE TABLE `user_tbl` (
  `userId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `loginTime` varchar(50) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tbl
-- ----------------------------
INSERT INTO `user_tbl` VALUES ('1', 'bao', '123', '123@qq.com', '男', '2018-06-06 21:45:04', 'vip5');
INSERT INTO `user_tbl` VALUES ('2', 'zhao', '123', '456@qq.com', '女', '2018-03-13 16:39:39', 'vip5');
INSERT INTO `user_tbl` VALUES ('3', 'wang', '456', '789@qq.com', '男', '2018-02-07 16:22:35', 'vip5');
