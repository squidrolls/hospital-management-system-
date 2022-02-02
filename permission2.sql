/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : permission2

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2020-09-08 16:31:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) NOT NULL COMMENT '上级部门ID。一级部门为0',
  `name` varchar(50) NOT NULL COMMENT '部门名称',
  `type` tinyint(2) NOT NULL COMMENT '类型。0：公司；1：部门；2：科室/小组',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序值。越小越靠前',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态。0：正常；1：禁用',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='部门表';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '-1', '研真科技', '0', '1', '0', '2019-05-11 15:35:24', null, '2019-05-11 15:35:24');
INSERT INTO `dept` VALUES ('2', '1', 'IT部', '1', '2', '0', '2019-05-01 17:12:54', null, '2019-05-01 17:12:54');
INSERT INTO `dept` VALUES ('3', '2', '研发组', '2', '3', '0', '2019-05-01 17:13:48', null, '2019-05-01 17:13:48');
INSERT INTO `dept` VALUES ('36', '1', '测试部门999', '1', '4', '0', '2019-05-01 17:13:48', null, '2019-05-01 17:13:48');
INSERT INTO `dept` VALUES ('37', '36', '测试小组01', '2', '2', '1', null, null, null);
INSERT INTO `dept` VALUES ('42', '36', '测试部门02', '2', '2', '1', null, null, '2020-05-26 16:32:24');
INSERT INTO `dept` VALUES ('43', '1', '测试小组01', '1', '1', '0', null, null, '2020-06-03 13:38:38');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) NOT NULL COMMENT '父菜单ID。一级菜单为0',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `permission` varchar(200) DEFAULT NULL COMMENT '授权标识。多个用逗号分隔，如：user:list,user:create',
  `type` tinyint(2) DEFAULT NULL COMMENT '类型。0：目录；1：菜单；2：按钮；3：导航菜单',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态。0：正常；1：禁用',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序值。越小越靠前',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '-1', '系统管理2', '', '', '0', null, '0', '0', null, '2019-05-06 21:46:33');
INSERT INTO `menu` VALUES ('70', '3', '菜单添加', null, 'menu:insert', '2', null, '0', '1', null, '2020-08-20 09:18:11');
INSERT INTO `menu` VALUES ('71', '3', '菜单修改', null, 'menu:update', '2', null, '0', '2', null, '2020-08-20 09:18:39');
INSERT INTO `menu` VALUES ('72', '3', '菜单的删除', null, 'menu:delete', '2', null, '0', '3', null, '2020-08-20 09:19:11');
INSERT INTO `menu` VALUES ('73', '3', '菜单的批量删除', null, 'menu:batchdel', '2', null, '0', '4', null, '2020-08-20 09:20:25');
INSERT INTO `menu` VALUES ('74', '4', '角色添加', null, 'role:insert', '2', null, '0', '1', null, '2020-08-20 09:20:50');
INSERT INTO `menu` VALUES ('75', '4', '角色删除', null, 'role:delete', '2', null, '0', '2', null, '2020-08-20 09:21:17');
INSERT INTO `menu` VALUES ('76', '4', '角色的修改', null, 'role:update', '2', null, '0', '3', null, '2020-08-20 09:21:40');
INSERT INTO `menu` VALUES ('77', '5', '部门添加', null, 'dept:insert', '2', null, '0', '1', null, '2020-08-20 09:22:00');
INSERT INTO `menu` VALUES ('2', '1', '用户管理', 'user', 'user', '1', '', '0', '1', null, '2020-05-06 21:46:47');
INSERT INTO `menu` VALUES ('3', '1', '菜单管理', 'menu', 'menu', '1', '', '0', '2', null, '2020-05-11 11:50:57');
INSERT INTO `menu` VALUES ('4', '1', '角色管理', 'role', 'menu', '1', '', '0', '3', null, '2020-05-11 11:51:31');
INSERT INTO `menu` VALUES ('5', '1', '部门管理', 'dept', 'dept', '1', '', '0', '1', null, '2020-05-06 11:51:58');
INSERT INTO `menu` VALUES ('67', '2', '用户添加', null, 'user:insert', '2', null, '0', '1', null, '2020-08-20 09:14:26');
INSERT INTO `menu` VALUES ('68', '2', '用户修改', null, 'user:update', '2', null, '0', '2', null, '2020-08-20 09:14:53');
INSERT INTO `menu` VALUES ('69', '2', '用户删除', null, 'user:delete', '2', null, '0', '3', null, '2020-08-20 09:15:18');
INSERT INTO `menu` VALUES ('78', '5', '部门的修改', null, 'dept:update', '2', null, '0', '2', null, '2020-08-23 20:06:01');
INSERT INTO `menu` VALUES ('79', '5', '部门的删除', null, 'dept:delete', '2', null, '0', '3', null, '2020-08-23 20:06:26');
INSERT INTO `menu` VALUES ('80', '4', '关联权限', null, 'add:permission', '2', null, '0', '4', null, '2020-08-23 20:07:07');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `parent_id` bigint(20) NOT NULL COMMENT '父级ID',
  `type` tinyint(2) NOT NULL COMMENT '类型。0：分类；1：角色',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('3', '系统管理员', '-1', '1', '', null, null, null);
INSERT INTO `role` VALUES ('4', '项目组长', '2', '1', '', null, null, null);
INSERT INTO `role` VALUES ('5', '开发者', '-1', '1', '', null, null, null);
INSERT INTO `role` VALUES ('6', '测试人员', '-1', '1', '测试股', null, null, null);
INSERT INTO `role` VALUES ('1', '系统角色', '-1', '0', '', null, null, null);
INSERT INTO `role` VALUES ('2', '研发组', '-1', '0', '', null, null, null);

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色菜单表';

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('73', '4', '2');
INSERT INTO `role_menu` VALUES ('74', '4', '68');
INSERT INTO `role_menu` VALUES ('75', '4', '67');
INSERT INTO `role_menu` VALUES ('77', '5', '4');
INSERT INTO `role_menu` VALUES ('78', '5', '76');
INSERT INTO `role_menu` VALUES ('79', '5', '75');
INSERT INTO `role_menu` VALUES ('80', '5', '74');
INSERT INTO `role_menu` VALUES ('81', '5', '2');
INSERT INTO `role_menu` VALUES ('82', '5', '68');
INSERT INTO `role_menu` VALUES ('83', '5', '67');
INSERT INTO `role_menu` VALUES ('84', '5', '69');
INSERT INTO `role_menu` VALUES ('86', '6', '5');
INSERT INTO `role_menu` VALUES ('87', '6', '79');
INSERT INTO `role_menu` VALUES ('88', '6', '78');
INSERT INTO `role_menu` VALUES ('89', '6', '77');
INSERT INTO `role_menu` VALUES ('90', '6', '4');
INSERT INTO `role_menu` VALUES ('91', '6', '74');
INSERT INTO `role_menu` VALUES ('92', '6', '76');
INSERT INTO `role_menu` VALUES ('93', '6', '75');
INSERT INTO `role_menu` VALUES ('94', '6', '80');
INSERT INTO `role_menu` VALUES ('95', '6', '3');
INSERT INTO `role_menu` VALUES ('96', '6', '70');
INSERT INTO `role_menu` VALUES ('97', '6', '71');
INSERT INTO `role_menu` VALUES ('98', '6', '72');
INSERT INTO `role_menu` VALUES ('99', '6', '73');
INSERT INTO `role_menu` VALUES ('100', '6', '2');
INSERT INTO `role_menu` VALUES ('101', '6', '69');
INSERT INTO `role_menu` VALUES ('102', '6', '68');
INSERT INTO `role_menu` VALUES ('103', '6', '67');
INSERT INTO `role_menu` VALUES ('133', '3', '77');
INSERT INTO `role_menu` VALUES ('132', '3', '78');
INSERT INTO `role_menu` VALUES ('131', '3', '79');
INSERT INTO `role_menu` VALUES ('130', '3', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dept_id` bigint(20) NOT NULL COMMENT '归属部门',
  `username` varchar(30) NOT NULL COMMENT '用户名登录使用',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(10) NOT NULL COMMENT '真实姓名',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(300) DEFAULT NULL COMMENT '用户头像',
  `job_title` varchar(30) DEFAULT NULL COMMENT '职务名称',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户状态。0：正常；1：禁用',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序。值越小越靠前',
  `del_flag` int(11) NOT NULL DEFAULT '0' COMMENT '删除标识。0：未删除；1：已删除',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'kappy', '123456', 'zhangsan', 'nv', '123456', 'yishuihan@163.com', null, 'chengxuyuan', '0', '1', '0', '12', null, '0000-00-00 00:00:00');
INSERT INTO `user` VALUES ('2', '1', 'kevin', '123456', 'zhangsan', 'nv', '123456', 'yishuihan@163.com', '', 'chengxuyuan', '0', '1', '0', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user` VALUES ('13', '3', 'admin', '123456', 'admin', '男', '2212121', '', null, '', '0', '5', '0', null, null, '2020-08-23 20:05:00');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '5', '2020-08-12 09:04:17');
INSERT INTO `user_role` VALUES ('2', '2', '4', null);
INSERT INTO `user_role` VALUES ('4', '13', '6', null);
