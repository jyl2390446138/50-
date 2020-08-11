/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : company

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-08-11 14:55:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '负责招人', '人事');
INSERT INTO `dept` VALUES ('2', '敲代码', '软件');
INSERT INTO `dept` VALUES ('3', '负责销售', '销售');

-- ----------------------------
-- Table structure for `stuff`
-- ----------------------------
DROP TABLE IF EXISTS `stuff`;
CREATE TABLE `stuff` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT '' COMMENT '姓名',
  `gender` enum('保密','女','男') DEFAULT '保密' COMMENT '0女1男2保密',
  `mobile_phone` varchar(11) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `position` varchar(32) DEFAULT NULL,
  `dept_name` varchar(32) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stuff
-- ----------------------------
INSERT INTO `stuff` VALUES ('1', '张三', '男', '13800000000', '23', '后端', '软件', '2');
INSERT INTO `stuff` VALUES ('2', '李雷', '男', '13800000301', '22', '前端', '软件', '2');
INSERT INTO `stuff` VALUES ('3', '韩梅梅', '女', '13800000302', '44', 'UI', '软件', '2');
INSERT INTO `stuff` VALUES ('4', '赵四', '男', '13800000304', '26', '售前工程师', '销售', '3');
INSERT INTO `stuff` VALUES ('5', '刘能', '男', '13800032343', '33', '售后工程师', '销售', '3');
INSERT INTO `stuff` VALUES ('6', '谢大脚', '女', '13802000000', '54', 'HR', '人事', '1');
INSERT INTO `stuff` VALUES ('7', '小沈阳', '男', '13802020000', '25', 'HR', '人事', '1');
INSERT INTO `stuff` VALUES ('8', '范伟', '男', '13800023302', '52', '售前工程师', '销售', '3');
INSERT INTO `stuff` VALUES ('9', '丫蛋', '女', '13800330302', '38', 'HR', '人事', '1');
