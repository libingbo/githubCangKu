/*
 Navicat Premium Data Transfer

 Source Server         : aliyunCentOS
 Source Server Type    : MySQL
 Source Server Version : 50631
 Source Host           : 47.95.242.134:3306
 Source Schema         : yanglaofuwu_db

 Target Server Type    : MySQL
 Target Server Version : 50631
 File Encoding         : 65001

 Date: 06/03/2020 14:19:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mm` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'bbb', '123');
INSERT INTO `t_admin` VALUES (2, 'admin', 'admin');

-- ----------------------------
-- Table structure for t_health
-- ----------------------------
DROP TABLE IF EXISTS `t_health`;
CREATE TABLE `t_health`  (
  `healthId` int(11) NOT NULL AUTO_INCREMENT,
  `userObj` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '用户名',
  `xinlv` int(11) NULL DEFAULT NULL COMMENT '心率',
  `xueya` int(11) NULL DEFAULT NULL COMMENT '血压',
  `hxpl` int(11) NULL DEFAULT NULL COMMENT '呼吸频率',
  `tiwen` int(11) NULL DEFAULT NULL COMMENT '体温',
  `tizhong` int(11) NULL DEFAULT NULL COMMENT '体重',
  `healthDesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康描述',
  `testDate` datetime(0) NULL DEFAULT NULL COMMENT '检测时间',
  PRIMARY KEY (`healthId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_health
-- ----------------------------
INSERT INTO `t_health` VALUES (1, 'zhang', 45, 56, 768, 36, 65, '老人身体特征正常', '2020-03-20 10:19:23');
INSERT INTO `t_health` VALUES (2, 'li', 45, 45, 43, 45, 45, '老人身体不好', '2020-03-04 11:11:51');
INSERT INTO `t_health` VALUES (3, '??', 56, 34, 34, 56, 57, '???', '2020-03-08 11:41:00');
INSERT INTO `t_health` VALUES (4, '56', 67, 67, 76, 56, 89, '??', '2020-02-28 12:03:00');
INSERT INTO `t_health` VALUES (5, '???', 56, 56, 56, 546, 546, '??', '2020-02-29 12:05:00');

-- ----------------------------
-- Table structure for t_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '老人姓名',
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `photo` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭地址',
  `hobby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '兴趣爱好',
  `registerTime` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `mm` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES (3, 'lisi', '男', '2020-02-26 06:56:00', NULL, '5765876', NULL, 'shanghai ', 'lklsjdl', NULL, '123');
INSERT INTO `t_userinfo` VALUES (4, 'wangwu', '女', '2020-02-26 07:03:00', NULL, '76879o87', NULL, 'fgfdg', 'dsfsd', NULL, '123');
INSERT INTO `t_userinfo` VALUES (5, 'fgd', '男', '2020-03-12 23:52:50', NULL, '56543', '345765', 'dhgtsr', 'sdgf', NULL, '123');
INSERT INTO `t_userinfo` VALUES (6, 'fdssdf', '男', '2020-03-12 23:52:50', NULL, '675467', '25435', 'fgfds', 'fdgfdsg', NULL, '123');
INSERT INTO `t_userinfo` VALUES (7, 'yyy', '???', '2020-03-12 23:52:50', NULL, '456778', '456677', 'fghuug', 'gguij', NULL, '123');
INSERT INTO `t_userinfo` VALUES (8, '??????', '??·', '2020-03-12 23:52:50', NULL, '123456', '1346', '13465', '313', NULL, '123456');

-- ----------------------------
-- Table structure for t_worker
-- ----------------------------
DROP TABLE IF EXISTS `t_worker`;
CREATE TABLE `t_worker`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `zizhi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资质',
  `telephone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `mm` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_worker
-- ----------------------------
INSERT INTO `t_worker` VALUES (1, '医护张三', '男', '2020-03-06 10:11:10', '住院医师', '547658768', '34253465@qq.com', '123');
INSERT INTO `t_worker` VALUES (2, '医护李四', '女', '2020-03-06 10:12:58', '主治医师', '657658', '903284093@qq.com', '123');
INSERT INTO `t_worker` VALUES (3, '医护王五', '男', '2020-03-05 10:13:46', '主任医师', '4365546', '4354356@qq.com', '123');
INSERT INTO `t_worker` VALUES (4, 'a', '男', '2020-02-27 18:00:05', '主任医师', '547665', '4354365@qq.com', '123');
INSERT INTO `t_worker` VALUES (8, 'nnn', '男', '2020-03-01 12:51:00', '住院医师', '676', NULL, '123');
INSERT INTO `t_worker` VALUES (10, 'doctor', '女', '2020-03-14 17:39:27', '住院医师', '567658768', '456546547', 'doctor');
INSERT INTO `t_worker` VALUES (11, '56', '男', '2020-03-19 10:01:00', '住院医师', '5765', NULL, '123');

-- ----------------------------
-- Table structure for t_zhenduan
-- ----------------------------
DROP TABLE IF EXISTS `t_zhenduan`;
CREATE TABLE `t_zhenduan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `healthId` int(11) NOT NULL COMMENT 't_health表的主键id',
  `doctor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'worker的name',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '诊断时间',
  `sick` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人 ',
  `state` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_zhenduan
-- ----------------------------
INSERT INTO `t_zhenduan` VALUES (1, 1, '医护张三', '2020-03-04 11:12:06', 'zhang', '已完成');
INSERT INTO `t_zhenduan` VALUES (2, 2, '医护李四', '2020-03-26 11:12:44', 'li', '未完成');
INSERT INTO `t_zhenduan` VALUES (3, 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_zhiban
-- ----------------------------
DROP TABLE IF EXISTS `t_zhiban`;
CREATE TABLE `t_zhiban`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值班人',
  `data` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '值班日期',
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值班时间',
  `message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_zhiban
-- ----------------------------
INSERT INTO `t_zhiban` VALUES (1, '医护张三', '2020-03-05 10:37:11', '4:00-6:00', '王大爷的病要多注意观察');
INSERT INTO `t_zhiban` VALUES (2, '医护李四', '2020-03-11 10:37:56', '2:00-6:00', '李大妈今天可以出院');
INSERT INTO `t_zhiban` VALUES (3, '医护张三', '2020-03-26 10:38:25', '3:00-8:00', '今天小李给我带饭');

-- ----------------------------
-- Table structure for t_zyz
-- ----------------------------
DROP TABLE IF EXISTS `t_zyz`;
CREATE TABLE `t_zyz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime(0) NULL DEFAULT NULL COMMENT '加入时间',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '工作时长',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人宣言',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_zyz
-- ----------------------------
INSERT INTO `t_zyz` VALUES (1, '2020-03-13 12:39:55', '2020-03-04 12:39:59', '美丽姐', '为社区没好而努力');
INSERT INTO `t_zyz` VALUES (2, '2020-02-14 12:40:31', '2020-03-27 12:40:34', '小红帽', '为了老人们的健康而努力');
INSERT INTO `t_zyz` VALUES (3, '2020-02-12 12:41:26', '2020-03-04 12:41:30', '小露露', '开心生活每一天');

SET FOREIGN_KEY_CHECKS = 1;
