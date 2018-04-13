/*
Navicat MySQL Data Transfer

Source Server         : localhost_3308
Source Server Version : 50096
Source Host           : localhost:3308
Source Database       : db_dorm

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2018-04-13 16:25:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(10) unsigned NOT NULL auto_increment,
  `userName` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `name` varchar(125) default NULL,
  `sex` varchar(2) default NULL,
  `tel` varchar(20) default NULL,
  PRIMARY KEY  (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin', '王', '男', '15670099659');

-- ----------------------------
-- Table structure for t_dormbuild
-- ----------------------------
DROP TABLE IF EXISTS `t_dormbuild`;
CREATE TABLE `t_dormbuild` (
  `dormBuildId` int(10) unsigned NOT NULL auto_increment,
  `dormBuildName` varchar(255) default NULL,
  `dormBuildDetail` varchar(500) default NULL,
  PRIMARY KEY  (`dormBuildId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormbuild
-- ----------------------------
INSERT INTO `t_dormbuild` VALUES ('2', '雅一', '费大幅度发发的');
INSERT INTO `t_dormbuild` VALUES ('3', '雅一', '费大幅度发发的');
INSERT INTO `t_dormbuild` VALUES ('4', '雅一', '费大幅度发发的');
INSERT INTO `t_dormbuild` VALUES ('5', 'fdf', 'dfd');
INSERT INTO `t_dormbuild` VALUES ('6', 'fdf', 'dfd');
INSERT INTO `t_dormbuild` VALUES ('7', 'fdf', 'dfd');
INSERT INTO `t_dormbuild` VALUES ('8', 'fdf', 'dfd');

-- ----------------------------
-- Table structure for t_dormmanager
-- ----------------------------
DROP TABLE IF EXISTS `t_dormmanager`;
CREATE TABLE `t_dormmanager` (
  `dormManId` int(10) unsigned NOT NULL auto_increment,
  `userName` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `dormBuildId` int(11) default NULL,
  `name` varchar(125) default NULL,
  `sex` varchar(2) default NULL,
  `tel` varchar(20) default NULL,
  PRIMARY KEY  (`dormManId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormmanager
-- ----------------------------
INSERT INTO `t_dormmanager` VALUES ('2', 'hh', '111', null, 'hhi', '男', '22');
INSERT INTO `t_dormmanager` VALUES ('3', 'fsdff', '111', '3', 'rrr', '男', '15611');

-- ----------------------------
-- Table structure for t_record
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `recordId` int(11) unsigned NOT NULL auto_increment,
  `studentNumber` int(25) default NULL,
  `studentName` varchar(125) default NULL,
  `dormBuildId` int(11) default NULL,
  `dormName` varchar(150) default NULL,
  `date` varchar(30) default NULL,
  `detail` varchar(500) default NULL,
  PRIMARY KEY  (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_record
-- ----------------------------
INSERT INTO `t_record` VALUES ('1', '2147483647', '王世', '3', 'GG', '2018-04-13', '哈哈哈');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `studentId` int(10) unsigned NOT NULL auto_increment,
  `stuNum` varchar(25) default NULL,
  `password` varchar(64) default NULL,
  `dormBuildId` int(11) default NULL,
  `dormName` varchar(255) default NULL,
  `sex` varchar(2) default NULL,
  `tel` varchar(25) default NULL,
  `name` varchar(125) default NULL,
  PRIMARY KEY  (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '201434003085', '123456', '3', 'GG', '男', '1567099', '王世');
