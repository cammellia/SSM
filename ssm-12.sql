/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : ssm-12

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 14/06/2023 20:43:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cinemaName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `cinemaAddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `discount` double(11, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (1, '金逸影院', '江夏九全嘉金逸影院', '改签,折扣卡,IMAX厅', 0.90);
INSERT INTO `cinema` VALUES (2, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面', '改签,折扣卡,IMAX厅', 0.85);
INSERT INTO `cinema` VALUES (3, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签, 折扣卡 ,IMAX厅, 4DX厅 ,60帧厅', 0.95);
INSERT INTO `cinema` VALUES (4, 'CGV影城（永旺金桥IMAX店）', '江岸区塔子湖街道金桥大道15号永旺梦乐城金桥店3层', '改签, 折扣卡 ,IMAX厅, 4DX厅', 0.90);
INSERT INTO `cinema` VALUES (5, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签, 折扣卡, CGS中国巨幕厅, 杜比全景声厅 ,4D厅', 0.85);

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `movieName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电影名称',
  `movieImg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电影图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '电影价格',
  `playingTotal` int NULL DEFAULT NULL COMMENT '播放总量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (2, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (3, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (4, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (5, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (6, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (7, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (8, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (9, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (10, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (11, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (12, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (13, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (14, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (15, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (16, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (17, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (18, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (19, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (20, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (21, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (22, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (23, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (24, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (25, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (26, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (27, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (28, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (29, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (30, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (31, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (32, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (33, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (34, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (35, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (36, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (37, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (38, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (39, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (40, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (41, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (42, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (43, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (44, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (45, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (46, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (47, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (48, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (49, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (50, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (51, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (52, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (53, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (54, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (55, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (56, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (57, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (58, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (59, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (60, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (61, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (62, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (63, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (64, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);
INSERT INTO `movie` VALUES (65, '人生路不熟', 'rslbs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (66, '长空之王', 'ckzw.jpg', 35.00, 200);
INSERT INTO `movie` VALUES (67, '灌篮高手', 'glgs.jpg', 35.00, 20);
INSERT INTO `movie` VALUES (68, '检查风云', 'jcfy.jpg', 35.00, 24);
INSERT INTO `movie` VALUES (69, '这么多年', 'zmdn.jpg', 35.00, 22);
INSERT INTO `movie` VALUES (70, '长沙夜生活', 'csysh.jpg', 34.00, 21);
INSERT INTO `movie` VALUES (71, '银河护卫队', 'yhhwd.jpg', 33.00, 23);
INSERT INTO `movie` VALUES (72, '宇宙探索编辑部', 'yztsbjb.jpg', 23.00, 24);

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `movieId` int NULL DEFAULT NULL,
  `yingtingId` int NULL DEFAULT NULL,
  `seat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (1, 1, 1, '[[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0][0,1,0,0,0,0,0,0][0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0]]');
INSERT INTO `seat` VALUES (2, 1, 2, '[[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0][0,1,0,0,0,0,0,0][0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0]]');
INSERT INTO `seat` VALUES (3, 1, 3, '[[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0][0,1,0,0,0,0,0,0][0,1,0,0,0,0,0,0],[0,1,0,0,0,0,0,0]]');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '', '');

-- ----------------------------
-- Table structure for yingting
-- ----------------------------
DROP TABLE IF EXISTS `yingting`;
CREATE TABLE `yingting`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `yingting` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '影厅名称',
  `language` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '语言版本',
  `discount` double(255, 2) NULL DEFAULT NULL COMMENT '影厅折扣',
  `playingTime` datetime NULL DEFAULT NULL COMMENT '观影时间',
  `cinemaId` int NULL DEFAULT NULL COMMENT '影院Id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingting
-- ----------------------------
INSERT INTO `yingting` VALUES (1, '5厅-4K激光厅（门店招聘全职兼职、送VR体验、免费停车3小时）', '国语2D', 0.85, '2023-05-26 11:24:05', 1);
INSERT INTO `yingting` VALUES (2, '2厅-4K激光厅（门店招聘全职兼职、送VR体验、免费停车3小时）', '国语2D', 0.85, '2023-05-26 16:24:52', 1);
INSERT INTO `yingting` VALUES (3, '1厅-IMAX', '国语2D', 0.90, '2023-05-26 19:25:41', 1);
INSERT INTO `yingting` VALUES (4, '巨幕厅', '国语2D', 1.20, '2023-05-26 20:26:19', 1);
INSERT INTO `yingting` VALUES (5, '大厅', '国语2D', 1.20, '2023-05-27 11:26:45', 1);

SET FOREIGN_KEY_CHECKS = 1;
