/*
 Navicat Premium Data Transfer

 Source Server         : 72
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 192.168.10.72:3306
 Source Schema         : erp

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 09/11/2020 16:52:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 72crm_admin_admindelete_log
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_admindelete_log`;
CREATE TABLE `72crm_admin_admindelete_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据id',
  `djh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据号',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据类型',
  `kh_gys_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户或者供应商id',
  `cjr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `cjrq` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `zje` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总金额',
  `deletezy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_bzhl
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_bzhl`;
CREATE TABLE `72crm_admin_bzhl`  (
  `bzid` int(2) NOT NULL AUTO_INCREMENT COMMENT '币种id',
  `bzbm` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '币种编码',
  `bzmc` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '币种名称',
  `bzms` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '币种描述',
  `zxhl` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '最新汇率',
  `mrbz` int(1) NOT NULL DEFAULT 0 COMMENT '默认币种',
  `last_updatetime` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '最近一次更新汇率时间',
  PRIMARY KEY (`bzid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_bzhlupdatetime
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_bzhlupdatetime`;
CREATE TABLE `72crm_admin_bzhlupdatetime`  (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `time_main` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `time_second` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_ckbasic_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_ckbasic_setting`;
CREATE TABLE `72crm_admin_ckbasic_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cgdd_ck` int(1) NULL DEFAULT 0,
  `xsdd_ck` int(1) NULL DEFAULT 0,
  `cklbxs` int(1) NULL DEFAULT 1,
  `ckckxs` int(1) NULL DEFAULT 1,
  `fkc` int(1) NULL DEFAULT 0,
  `kcdjqz` int(1) NULL DEFAULT 1,
  `xskd_ck` int(1) NULL DEFAULT 0,
  `xsyd_rk` int(1) NULL DEFAULT 0,
  `cgsh_rk` int(1) NULL DEFAULT 0,
  `cgyd_ck` int(1) NULL DEFAULT 0,
  `ckll_ck` int(1) NULL DEFAULT 0,
  `cktl_rk` int(1) NULL DEFAULT 0,
  `cpjc_rk` int(1) NULL DEFAULT 0,
  `pdd_rck` int(1) NULL DEFAULT 0,
  `dbd_rck` int(1) NULL DEFAULT 0,
  `kcpjdjqz` int(1) NULL DEFAULT 1,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_company
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_company`;
CREATE TABLE `72crm_admin_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name_cn` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位中文名称',
  `name_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位英文名称',
  `tele` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位电话',
  `postcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位邮编',
  `location` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '单位地址',
  `website` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位网站',
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `banks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `bankofaccount` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户账号',
  `taxofaccount` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位税号',
  `legalperson` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法定代理人',
  `entrustperson` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '委托代理人',
  `isdefault` int(1) NULL DEFAULT 0 COMMENT '默认单位抬头。1：默认，0：非默认 用于单据默认的单位抬头',
  `creator` int(11) NOT NULL COMMENT '创建人ID',
  `create_date` date NOT NULL COMMENT '创建日期',
  `purchase_zzsl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购单据增值税率',
  `purchase_ptsl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购单据普通税率',
  `sale_zzsl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售单据增值税率',
  `sale_ptsl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售单据普通税率',
  `cz` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话传真',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_cn`(`name_cn`) USING BTREE,
  UNIQUE INDEX `name_en`(`name_en`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_company_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_company_operhistory`;
CREATE TABLE `72crm_admin_company_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` int(11) NOT NULL COMMENT '操作人',
  `operate_time` datetime(0) NOT NULL COMMENT '操作时间',
  `company_id` int(11) NOT NULL COMMENT '单位ID',
  `content` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '单位实体操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_costinfo_tips
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_costinfo_tips`;
CREATE TABLE `72crm_admin_costinfo_tips`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_cpph_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_cpph_setting`;
CREATE TABLE `72crm_admin_cpph_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfqycpph` int(1) NULL DEFAULT 1,
  `phsfbt` int(1) NULL DEFAULT 0,
  `zdmc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phscgz` int(1) NULL DEFAULT 1,
  `lsh` int(11) NULL DEFAULT 3,
  `lsh_flag` int(1) NULL DEFAULT 1,
  `bzqtx_flag` int(1) NULL DEFAULT 0,
  `bzqtx_day` int(2) NULL DEFAULT 1,
  `txxgqx` int(1) NULL DEFAULT 0,
  `txzdry` int(1) NULL DEFAULT 0,
  `zdry` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_cpxlh_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_cpxlh_setting`;
CREATE TABLE `72crm_admin_cpxlh_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfqycpxlh` int(1) NULL DEFAULT 0,
  `sfbt` int(1) NULL DEFAULT 0,
  `zdmc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_customer_basic_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_customer_basic_setting`;
CREATE TABLE `72crm_admin_customer_basic_setting`  (
  `id` int(11) NOT NULL,
  `khcxfpqxsz_flag` int(1) NULL DEFAULT NULL,
  `khcxfpqxsz_day` int(1) NULL DEFAULT NULL,
  `khmc_lxrdh_repeatflag` int(1) NULL DEFAULT NULL,
  `khmc_lxrsjhm_repeatflag` int(1) NULL DEFAULT NULL,
  `khmc_lxrcz_repeatflag` int(1) NULL DEFAULT NULL,
  `khmc_lxremail_repeatflag` int(1) NULL DEFAULT NULL,
  `repeat_tipflag` int(1) NULL DEFAULT NULL,
  `khmc_bt_flag` int(1) NULL DEFAULT NULL,
  `khdh_bt_flag` int(1) NULL DEFAULT NULL,
  `khcz_bt_flag` int(1) NULL DEFAULT NULL,
  `khszs_bt_flag` int(1) NULL DEFAULT NULL,
  `khcity_bt_flag` int(1) NULL DEFAULT NULL,
  `khemail_bt_flag` int(1) NULL DEFAULT NULL,
  `khxxdz_bt_flag` int(1) NULL DEFAULT NULL,
  `khshdz1_bt_flag` int(1) NULL DEFAULT NULL,
  `lxrmc_bt_flag` int(1) NULL DEFAULT NULL,
  `lxrsj_bt_flag` int(1) NULL DEFAULT NULL,
  `lxrdh_bt_flag` int(1) NULL DEFAULT NULL,
  `lxremail_bt_flag` int(1) NULL DEFAULT NULL,
  `lxrcz_bt_flag` int(1) NULL DEFAULT NULL,
  `ggkhc_sjqx_flag` int(1) NULL DEFAULT NULL,
  `khmk_sjqx_flag` int(1) NULL DEFAULT NULL,
  `khmk_sjqx_xsfzr` int(1) NULL DEFAULT NULL,
  `khmk_sjqx_cjr` int(1) NULL DEFAULT NULL,
  `khmk_sjqx_gxr` int(1) NULL DEFAULT NULL,
  `xzkh_sjqx_flag` int(1) NULL DEFAULT NULL,
  `xzkh_sjqx_xsfzr` int(1) NULL DEFAULT NULL,
  `xzkh_sjqx_cjr` int(1) NULL DEFAULT NULL,
  `xzkh_sjqx_gxr` int(1) NULL DEFAULT NULL,
  `kh_tip_flag` int(1) NULL DEFAULT NULL,
  `khjwpl_bt_flag` int(1) NULL DEFAULT NULL,
  `khjwpl_qzfw_start` int(2) NULL DEFAULT NULL,
  `khjwpl_qzfw_end` int(2) NULL DEFAULT NULL,
  `khjopl_default_value` int(2) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_db
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_db`;
CREATE TABLE `72crm_admin_db`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备份数据库名称',
  `db_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备份数据库用户名',
  `db_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备份数据库密码',
  `db_tourl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备份至哪个路径',
  `db_backuptime_main` time(0) NULL DEFAULT NULL COMMENT '每天自动备份时间',
  `db_lastbackup` datetime(0) NOT NULL COMMENT '最近备份时间点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'DB备份表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_dept
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_dept`;
CREATE TABLE `72crm_admin_dept`  (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT 0 COMMENT '父级ID 顶级部门为0',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门名称',
  `num` int(4) NULL DEFAULT NULL COMMENT '排序 越大越靠后',
  `remark` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门备注',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_dhgz
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_dhgz`;
CREATE TABLE `72crm_admin_dhgz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标识',
  `prefix` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单号前缀',
  `module` int(1) NOT NULL DEFAULT 1 COMMENT '1xs 2cg  3finance 4ck',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `flag`(`flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '单号前缀表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_djxj_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_djxj_setting`;
CREATE TABLE `72crm_admin_djxj_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xskd_skd` int(1) NULL DEFAULT 0,
  `xskd_xxfp` int(1) NULL DEFAULT 0,
  `cgsh_fkd` int(1) NULL DEFAULT 0,
  `cgsh_jxfp` int(1) NULL DEFAULT 0,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field`;
CREATE TABLE `72crm_admin_field`  (
  `field_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `field_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段英文标识',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段名称',
  `label` int(2) NOT NULL COMMENT '标签 1 公司部门 2 公海 3 客户信息 4 交往记录 ',
  `sorting` int(5) NULL DEFAULT 1 COMMENT '排序 从小到大',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 739 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '自定义字段表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_copy`;
CREATE TABLE `72crm_admin_field_copy`  (
  `field_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `field_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段英文标识',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段名称',
  `label` int(2) NOT NULL COMMENT '标签 1 公司部门 2 公海 3 客户信息 4 交往记录 ',
  `sorting` int(5) NULL DEFAULT 1 COMMENT '排序 从小到大',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '自定义字段表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_query
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_query`;
CREATE TABLE `72crm_admin_field_query`  (
  `field_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `field_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段英文标识',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段名称',
  `type` int(2) NOT NULL DEFAULT 1 COMMENT '1 文本 2 单选 3 多选 4 日期 5 用户',
  `label` int(2) NOT NULL COMMENT '标签 1 公司部门 2 公海 3 客户信息 4 交往记录 ',
  `sorting` int(5) NULL DEFAULT 1 COMMENT '排序 从小到大',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 307 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '自定义字段表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_query_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_query_copy`;
CREATE TABLE `72crm_admin_field_query_copy`  (
  `field_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `field_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自定义字段英文标识',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段名称',
  `type` int(2) NOT NULL DEFAULT 1 COMMENT '1 文本 2 单选 3 多选 4 日期 5 用户',
  `label` int(2) NOT NULL COMMENT '标签 1 公司部门 2 公海 3 客户信息 4 交往记录 ',
  `sorting` int(5) NULL DEFAULT 1 COMMENT '排序 从小到大',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '自定义字段表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_sort
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_sort`;
CREATE TABLE `72crm_admin_field_sort`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `label` int(2) NOT NULL COMMENT '标签 1 线索 2 客户 3 联系人 4 产品 5 商机 6 合同 7回款 8公海',
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段中文名称',
  `sort` int(5) NOT NULL DEFAULT 0 COMMENT '字段排序',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `is_hide` int(1) NOT NULL DEFAULT 1 COMMENT '是否隐藏 0、不隐藏 1、隐藏',
  `field_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12193 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段排序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_sort_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_sort_copy`;
CREATE TABLE `72crm_admin_field_sort_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `label` int(2) NOT NULL COMMENT '标签 1 线索 2 客户 3 联系人 4 产品 5 商机 6 合同 7回款 8公海',
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段中文名称',
  `sort` int(5) NOT NULL DEFAULT 0 COMMENT '字段排序',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `is_hide` int(1) NOT NULL DEFAULT 1 COMMENT '是否隐藏 0、不隐藏 1、隐藏',
  `field_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段排序表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_style
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_style`;
CREATE TABLE `72crm_admin_field_style`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '样式表id',
  `style` int(5) NULL DEFAULT NULL COMMENT '字段宽度',
  `type` int(2) NULL DEFAULT NULL COMMENT '字段类型 \'1 线索 2 客户 3 联系人 4 产品 5 商机 6 合同 7回款 8公海\'',
  `field_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 562 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段样式表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_field_style_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_field_style_copy`;
CREATE TABLE `72crm_admin_field_style_copy`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '样式表id',
  `style` int(5) NULL DEFAULT NULL COMMENT '字段宽度',
  `type` int(2) NULL DEFAULT NULL COMMENT '字段类型 \'1 线索 2 客户 3 联系人 4 产品 5 商机 6 合同 7回款 8公海\'',
  `field_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段样式表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_file`;
CREATE TABLE `72crm_admin_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `batch_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '批次id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_gys_basic_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_gys_basic_setting`;
CREATE TABLE `72crm_admin_gys_basic_setting`  (
  `id` int(11) NOT NULL,
  `gys_sjqx_flag` int(1) NULL DEFAULT 0,
  `xzgys_sjqx_flag` int(1) NULL DEFAULT 0,
  `gys_tip_flag` int(1) NULL DEFAULT 2,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_ipblacklistip
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_ipblacklistip`;
CREATE TABLE `72crm_admin_ipblacklistip`  (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `blackip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '黑名单ip',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '启用状态 0不启用  1启用',
  PRIMARY KEY (`ipid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '黑名单ip 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_ipwhitelist
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_ipwhitelist`;
CREATE TABLE `72crm_admin_ipwhitelist`  (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `start_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '起始ip',
  `end_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结束ip',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '启用状态 0不启用  1启用',
  PRIMARY KEY (`ipid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '白名单ip 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_jcsz
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_jcsz`;
CREATE TABLE `72crm_admin_jcsz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` int(1) NOT NULL COMMENT '标识',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sjqx` int(1) NOT NULL DEFAULT 0 COMMENT '数据权限：0否 1是',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `flag`(`flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_jcsz_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_jcsz_copy`;
CREATE TABLE `72crm_admin_jcsz_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` int(1) NOT NULL COMMENT '标识',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sjqx` int(1) NOT NULL DEFAULT 0 COMMENT '数据权限：0否 1是',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `flag`(`flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_jcsz_num
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_jcsz_num`;
CREATE TABLE `72crm_admin_jcsz_num`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` int(1) NOT NULL COMMENT '标识',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `sjqx` int(1) NOT NULL DEFAULT 0 COMMENT '数据权限：0没有控制  1审核时给予提示  2无法通过审核',
  `num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `flag`(`flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础设置 数值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_jcsz_num_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_jcsz_num_copy`;
CREATE TABLE `72crm_admin_jcsz_num_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` int(1) NOT NULL COMMENT '标识',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `sjqx` int(1) NOT NULL DEFAULT 0 COMMENT '数据权限：0没有控制  1审核时给予提示  2无法通过审核',
  `num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `flag`(`flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基础设置 数值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_jgkztx_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_jgkztx_setting`;
CREATE TABLE `72crm_admin_jgkztx_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hsws_setting` int(1) NULL DEFAULT 2,
  `cgmkdj` int(1) NULL DEFAULT 1,
  `xsmkdj` int(1) NULL DEFAULT 1,
  `cgxjd_control` int(1) NULL DEFAULT 1,
  `xsbjd_control` int(1) NULL DEFAULT 1,
  `cgdd_control` int(1) NULL DEFAULT 1,
  `xsdd_control` int(1) NULL DEFAULT 1,
  `cgsh_control` int(1) NULL DEFAULT 1,
  `xskd_control` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_locktimeset
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_locktimeset`;
CREATE TABLE `72crm_admin_locktimeset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '启用状态 0不启用 1启用',
  `xjd_days` int(1) NULL DEFAULT 0 COMMENT '列出几天的询价单',
  `xsdd_days` int(1) NULL DEFAULT 0 COMMENT '列出几天的销售订单',
  `lockweek` int(1) NULL DEFAULT NULL COMMENT '周几',
  `locktime` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '什么时间',
  `tiptime` int(2) NULL DEFAULT NULL COMMENT '提前几分钟进行提醒',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '追踪锁定时间设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_logoset
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_logoset`;
CREATE TABLE `72crm_admin_logoset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '启用状态 0不启用 1启用',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '思奉贸易' COMMENT '名称',
  `img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'log路径',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统logo设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_menu`;
CREATE TABLE `72crm_admin_menu`  (
  `menu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `parent_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '上级菜单ID',
  `menu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单名称',
  `realm` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `menu_type` int(1) NULL DEFAULT NULL COMMENT '菜单类型  1目录 2 菜单 3 按钮 4特殊',
  `sort` int(4) UNSIGNED NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `status` int(4) NULL DEFAULT 1 COMMENT '状态 1 启用 0 禁用',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单说明',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31211 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_menu_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_menu_copy`;
CREATE TABLE `72crm_admin_menu_copy`  (
  `menu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `parent_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '上级菜单ID',
  `menu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单名称',
  `realm` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `menu_type` int(1) NULL DEFAULT NULL COMMENT '菜单类型  1目录 2 菜单 3 按钮 4特殊',
  `sort` int(4) UNSIGNED NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `status` int(4) NULL DEFAULT 1 COMMENT '状态 1 启用 0 禁用',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单说明',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31211 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_mrp_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_mrp_setting`;
CREATE TABLE `72crm_admin_mrp_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mrp_calculate` int(1) NULL DEFAULT 1 COMMENT '1：实际库存   2：实际库存-预定数量  3：实际库存-预定数量-下限数量  4：实际库存+在途数量    5：实际库存+在途数量-预定数量   6：实际库存+在途数量-预定数量-下限数量',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_noticesetting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_noticesetting`;
CREATE TABLE `72crm_admin_noticesetting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '提醒类型',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notice_flag` int(1) NOT NULL DEFAULT 1 COMMENT '提醒设置：0不提醒  1提醒  ',
  `notice_toparent` int(1) NOT NULL DEFAULT 1 COMMENT '：0否  1是  ',
  `notice_tofix` int(1) NOT NULL DEFAULT 0 COMMENT '：0否  1是  ',
  `notice_tofixusers` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提醒人员',
  `module` int(1) NOT NULL DEFAULT 1 COMMENT '1crm 2销售  3采购 4财务  5仓库',
  `days` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '天数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提醒设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_noticesetting_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_noticesetting_copy`;
CREATE TABLE `72crm_admin_noticesetting_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '提醒类型',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notice_flag` int(1) NOT NULL DEFAULT 1 COMMENT '提醒设置：0不提醒  1提醒  ',
  `notice_toparent` int(1) NOT NULL DEFAULT 1 COMMENT '：0否  1是  ',
  `notice_tofix` int(1) NOT NULL DEFAULT 0 COMMENT '：0否  1是  ',
  `notice_tofixusers` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提醒人员',
  `module` int(1) NOT NULL DEFAULT 1 COMMENT '1crm 2销售  3采购 4财务  5仓库',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提醒设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_opermenu
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_opermenu`;
CREATE TABLE `72crm_admin_opermenu`  (
  `opermenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '操作按钮ID',
  `parent_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '上级菜单ID',
  `opermenu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作按钮菜单名称',
  `realm` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `menu_type` int(1) NULL DEFAULT NULL COMMENT '菜单类型  1目录 2 菜单 3 按钮 4特殊',
  `sort` int(4) UNSIGNED NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `status` int(4) NULL DEFAULT 1 COMMENT '状态 1 启用 0 禁用',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作按钮说明',
  PRIMARY KEY (`opermenu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作按钮权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_opermenu_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_opermenu_copy`;
CREATE TABLE `72crm_admin_opermenu_copy`  (
  `opermenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '操作按钮ID',
  `parent_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '上级菜单ID',
  `opermenu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作按钮菜单名称',
  `realm` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `menu_type` int(1) NULL DEFAULT NULL COMMENT '菜单类型  1目录 2 菜单 3 按钮 4特殊',
  `sort` int(4) UNSIGNED NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `status` int(4) NULL DEFAULT 1 COMMENT '状态 1 启用 0 禁用',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作按钮说明',
  PRIMARY KEY (`opermenu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作按钮权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_opermenu_copy_old
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_opermenu_copy_old`;
CREATE TABLE `72crm_admin_opermenu_copy_old`  (
  `opermenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '操作按钮ID',
  `parent_id` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '上级菜单ID',
  `opermenu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作按钮菜单名称',
  `realm` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `menu_type` int(1) NULL DEFAULT NULL COMMENT '菜单类型  1目录 2 菜单 3 按钮 4特殊',
  `sort` int(4) UNSIGNED NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `status` int(4) NULL DEFAULT 1 COMMENT '状态 1 启用 0 禁用',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作按钮说明',
  PRIMARY KEY (`opermenu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作按钮权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_point_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_point_setting`;
CREATE TABLE `72crm_admin_point_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xsje` int(2) NULL DEFAULT 2,
  `xssl` int(2) NULL DEFAULT 2,
  `cgje` int(2) NULL DEFAULT 2,
  `cgsl` int(2) NULL DEFAULT 2,
  `ckje` int(2) NULL DEFAULT 2,
  `cksl` int(2) NULL DEFAULT 2,
  `ckbbje` int(2) NULL DEFAULT 2,
  `ckbbsl` int(2) NULL DEFAULT 2,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_print_htmb
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_print_htmb`;
CREATE TABLE `72crm_admin_print_htmb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单据类型',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合同名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合同内容',
  `is_default` int(1) NOT NULL DEFAULT 0 COMMENT '是否默认模板',
  `sort` int(1) NOT NULL DEFAULT 1 COMMENT '排序',
  `rows` int(2) NOT NULL DEFAULT 100 COMMENT '单据显示行数',
  `fillspace` int(1) NOT NULL DEFAULT 0 COMMENT '是否补空白',
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `lastedit_time` datetime(0) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '打印合同模板 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_print_htmb_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_print_htmb_copy`;
CREATE TABLE `72crm_admin_print_htmb_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单据类型',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合同名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合同内容',
  `is_default` int(1) NOT NULL DEFAULT 0 COMMENT '是否默认模板',
  `sort` int(1) NOT NULL DEFAULT 1 COMMENT '排序',
  `rows` int(2) NOT NULL DEFAULT 100 COMMENT '单据显示行数',
  `fillspace` int(1) NOT NULL DEFAULT 0 COMMENT '是否补空白',
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `lastedit_time` datetime(0) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '打印合同模板 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_printsetting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_printsetting`;
CREATE TABLE `72crm_admin_printsetting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bjd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `xsdd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `xskd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `cgbjd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `cgdd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '打印设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_printsetting_copy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_printsetting_copy`;
CREATE TABLE `72crm_admin_printsetting_copy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bjd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `xsdd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `xskd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `cgbjd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  `cgdd` int(1) NOT NULL DEFAULT 0 COMMENT '：0不需要审核  1需要审核后才能打印',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '打印设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_product_ywm_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_product_ywm_setting`;
CREATE TABLE `72crm_admin_product_ywm_setting`  (
  `id` int(11) NOT NULL,
  `bmzc` int(1) NULL DEFAULT 2,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misc_background` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misc_1bars` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misc_barwidth` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misc_barheight` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bmsfxs` int(1) NULL DEFAULT 0,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_profitcal_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_profitcal_setting`;
CREATE TABLE `72crm_admin_profitcal_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profit_cal` int(1) NULL DEFAULT 1,
  `ph` int(1) NULL DEFAULT 0,
  `xlh` int(1) NULL DEFAULT 0,
  `cbdj` int(1) NULL DEFAULT 1,
  `xsdj` int(1) NULL DEFAULT 1,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_role`;
CREATE TABLE `72crm_admin_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `role_type` int(11) NULL DEFAULT NULL COMMENT '0、自定义角色1、管理角色 2、客户管理角色 3、人事角色 4、财务角色 5、项目角色 6、项目自定义角色 7、办公角色 8、项目管理角色',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int(3) NULL DEFAULT 1 COMMENT '1 启用 0 禁用',
  `data_type` int(1) NOT NULL DEFAULT 5 COMMENT '数据权限 1、本人，2、本人及下属，3、本部门，4、本部门及下属部门，5、全部 ',
  `is_hidden` int(1) NOT NULL DEFAULT 1 COMMENT '0 隐藏 1 不隐藏',
  `label` int(2) NULL DEFAULT NULL COMMENT '1 系统项目管理员角色 2 项目管理角色 3 项目编辑角色 4 项目只读角色',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_role_menu`;
CREATE TABLE `72crm_admin_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9274 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单对应关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_role_opermenu
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_role_opermenu`;
CREATE TABLE `72crm_admin_role_opermenu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `opermenu_id` int(11) NOT NULL COMMENT '操作权限按钮ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12528 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色操作按钮对应关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_sfk_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_sfk_setting`;
CREATE TABLE `72crm_admin_sfk_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khdyskqx` int(1) NULL DEFAULT 0,
  `gysdyskqx` int(1) NULL DEFAULT 0,
  `zdsh` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_sgdtocgdd_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_sgdtocgdd_setting`;
CREATE TABLE `72crm_admin_sgdtocgdd_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tocgddqx` int(1) NULL DEFAULT 3,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_sjqx_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_sjqx_setting`;
CREATE TABLE `72crm_admin_sjqx_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfyysjqx` int(1) NULL DEFAULT 1 COMMENT '是否应用数据权限 0否 1是',
  `czy` int(1) NULL DEFAULT 1,
  `ywy` int(1) NULL DEFAULT 1,
  `cgy` int(1) NULL DEFAULT 1,
  `gxr` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_sssf_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_sssf_setting`;
CREATE TABLE `72crm_admin_sssf_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sssf_flag` int(1) NULL DEFAULT 0 COMMENT '是否启用实收实发控制',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_system_security_setting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_system_security_setting`;
CREATE TABLE `72crm_admin_system_security_setting`  (
  `id` int(11) NOT NULL,
  `password_overdue_flag` int(1) NULL DEFAULT 0,
  `init_changepwd_flag` int(1) NULL DEFAULT 0,
  `password_strong_start` int(1) NULL DEFAULT NULL,
  `password_strong_end` int(1) NULL DEFAULT NULL,
  `password_include_flag` int(1) NULL DEFAULT 0,
  `password_error_flag` int(1) NULL DEFAULT NULL,
  `password_error_minute` int(1) NULL DEFAULT NULL,
  `password_error_cs` int(1) NULL DEFAULT NULL,
  `password_error_minute2` int(1) NULL DEFAULT NULL,
  `remember_password_flag` int(1) NULL DEFAULT NULL,
  `login_choose` int(1) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_systemlog
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_systemlog`;
CREATE TABLE `72crm_admin_systemlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL COMMENT '用户',
  `logtime` datetime(0) NOT NULL COMMENT '操作时间',
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作ip',
  `type` int(1) NOT NULL COMMENT '日志类型',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3239 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统日志 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_systemlog_delete
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_systemlog_delete`;
CREATE TABLE `72crm_admin_systemlog_delete`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL COMMENT '删除单据类型',
  `ddid` int(11) NOT NULL COMMENT '订单id',
  `dddh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单单号',
  `delete_time` datetime(0) NOT NULL COMMENT '删除时间',
  `delete_user` int(11) NOT NULL COMMENT '删除人员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统删除日志 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_termsetting
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_termsetting`;
CREATE TABLE `72crm_admin_termsetting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `px` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排序',
  `tkzt` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '条款主题',
  `tknr` varchar(5000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '条款内容',
  `cjr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `cjrq` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `qyzt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '启用状态。0、未启用；1、已启用；',
  `typeofcontact` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '合同类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '单据合同条款预设' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_termsetting_type
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_termsetting_type`;
CREATE TABLE `72crm_admin_termsetting_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '条款类型名称',
  `sort` int(1) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `lx` int(1) NOT NULL DEFAULT 1 COMMENT '条款模块类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '条款类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_user`;
CREATE TABLE `72crm_admin_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '安全符',
  `img` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sex` int(1) NULL DEFAULT NULL COMMENT '0 未选择 1 男 2 女 ',
  `dept_id` int(11) NULL DEFAULT NULL COMMENT '部门',
  `post` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位',
  `status` int(1) NULL DEFAULT 1 COMMENT '状态,0离职，账号不可用。1在职，账号可用',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '直属上级ID',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登录IP 注意兼容IPV6',
  `en_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password_changetime` datetime(0) NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `com_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `private_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `com_qq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_de` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `issaler_togw` int(1) NOT NULL DEFAULT 0 COMMENT '是否对接官网业务员  0否  1是  默认否。',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `islock` int(1) NOT NULL DEFAULT 0 COMMENT '锁定状态，0未锁定 1锁定',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_user_role`;
CREATE TABLE `72crm_admin_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色对应关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_version
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_version`;
CREATE TABLE `72crm_admin_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_num` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updatetime` date NULL DEFAULT NULL,
  `updateuser` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `content`(`content`) USING BTREE,
  INDEX `version_num`(`version_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_ylzd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_ylzd`;
CREATE TABLE `72crm_admin_ylzd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ylzd_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zdy_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `from` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_admin_ylzd_module
-- ----------------------------
DROP TABLE IF EXISTS `72crm_admin_ylzd_module`;
CREATE TABLE `72crm_admin_ylzd_module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjd`;
CREATE TABLE `72crm_crm_bjd`  (
  `bjd_id` int(11) NOT NULL AUTO_INCREMENT,
  `bjd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报价单号,规则遵守单号规则',
  `xjd_id` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '从哪些询价单转过来的',
  `customer_id` int(11) NOT NULL COMMENT '所属客户id',
  `contact_id` int(11) NOT NULL COMMENT '所属客户联系人id',
  `dwtt` int(1) NOT NULL COMMENT '单位抬头',
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_date` date NOT NULL COMMENT '创建日期',
  `hq` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `fplx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票类型  增值税发票  普通发票  收据',
  `zje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总金额',
  `zdzk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '整单折扣',
  `zkh_zje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣后总金额',
  `cbzje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '成本总金额',
  `status` int(1) NULL DEFAULT -1 COMMENT '审核状态。-1、未提交；0、未审核；1、已审核   2、审核未通过',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `pricelx` int(1) NOT NULL DEFAULT 2 COMMENT '单价类型。1、未税单价；2、含税单价',
  `typeofcontract` int(1) NOT NULL DEFAULT 1 COMMENT '条款类型',
  `from` int(1) NOT NULL DEFAULT 1 COMMENT '来源  1系统  2官网',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `gdlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bjr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fzbm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bjrq` date NULL DEFAULT NULL,
  `jhrq` date NULL DEFAULT NULL,
  `bjyxq` date NULL DEFAULT NULL,
  `bjjd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xsjh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xctx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bjd_id`) USING BTREE,
  UNIQUE INDEX `bjd_dh`(`bjd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjd_costinfo
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjd_costinfo`;
CREATE TABLE `72crm_crm_bjd_costinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单成本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjd_costinfo_history
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjd_costinfo_history`;
CREATE TABLE `72crm_crm_bjd_costinfo_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单成本信息 历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjd_costinfo_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjd_costinfo_operhistory`;
CREATE TABLE `72crm_crm_bjd_costinfo_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '客户id',
  `operator` int(11) NOT NULL COMMENT '操作用户ID',
  `operate_time` datetime(0) NOT NULL COMMENT '操作时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '修改记录内容,包括新建修改，分配转移不在内',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单 成本信息 操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjd_file`;
CREATE TABLE `72crm_crm_bjd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `bjd_id` int(11) NULL DEFAULT NULL COMMENT '报价单id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjd_httk
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjd_httk`;
CREATE TABLE `72crm_crm_bjd_httk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `bjdid` int(11) NULL DEFAULT NULL COMMENT '对应报价单主键id',
  `htzt` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题',
  `htnr` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `px` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排序',
  `typeofcontact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '条款类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单合同条款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_bjdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_bjdmx`;
CREATE TABLE `72crm_crm_bjdmx`  (
  `bjdmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `bjd_id` int(11) NOT NULL COMMENT '报价单id',
  `xjdmx_id` int(11) NULL DEFAULT NULL COMMENT '对应询价单明细id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NULL DEFAULT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `wsdj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '未税单价',
  `product_sl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '产品税率',
  `hsdj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '含税单价',
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '税金',
  `hk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货款',
  `hj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '合计',
  `zy` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bjdmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报价单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer`;
CREATE TABLE `72crm_crm_customer`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `ywy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `ssjt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户编码，客户名称的大写首字母',
  `khgm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '客户类型，1一般客户   2重要客户   3潜在客户 4无效客户',
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商务电话',
  `create_date` date NULL DEFAULT NULL COMMENT '传真',
  `khgj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `khsjhm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EMAIL',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户所在地',
  `khqq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户描述',
  `khsf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '客户来源,  1网络搜索  2客户介绍  3广告   4公司官网数据接入(官网接口)',
  `business_tel` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `postcode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人,外键参考用户表',
  `skype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `khcs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '审核状态 1已审核   0未审核.新建客户之后默认为已审核。重新编辑之后需要审核',
  `cz` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除状态  0未删除  1已删除(回收站中使用)',
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员,外键参考用户表',
  `khww` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后修改时间',
  `khqx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '返回至公共客户池时间',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户对应的业务员，外键参考用户表user，为0表示没有对应的业务员，即此客户为公共客户池(公海客户)',
  `gxr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shgj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shcs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdzb` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdzc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdzd` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khyh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khm` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `yhzh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xyed` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kpdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khsh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jwpl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qked` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `skqxsz_flag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `skqxsz_days` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cqwgmts` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_from` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xsfs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `yssj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hysx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qyxz` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fddbr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wtdlr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sxcpxx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `check_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delflag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `last_xgsj` datetime(0) NULL DEFAULT NULL,
  `backtime` datetime(0) NULL DEFAULT NULL,
  `last_ywy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `back_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_contact`;
CREATE TABLE `72crm_crm_customer_contact`  (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '对应客户ID',
  `contact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人名字',
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `contact_birthday` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人生日',
  `contact_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱',
  `contact_qq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人qq',
  `contact_gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '联系人性别 0保密   1男  2女',
  `from` int(1) NOT NULL DEFAULT 1 COMMENT '来源 1系统  2官网',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除状态 0未删除  1已删除',
  `zw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zycd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cz` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户联系人 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_contact_edit
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_contact_edit`;
CREATE TABLE `72crm_crm_customer_contact_edit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NULL DEFAULT NULL COMMENT '联系人ID',
  `customer_id` int(11) NOT NULL COMMENT '对应客户ID',
  `contact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人名字',
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `contact_birthday` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人生日',
  `contact_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱',
  `contact_qq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人qq',
  `contact_gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '联系人性别 0保密   1男  2女',
  `from` int(1) NOT NULL DEFAULT 1 COMMENT '来源 1系统  2官网',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除状态 0未删除  1已删除',
  `zw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zycd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cz` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户联系人编辑 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_edit
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_edit`;
CREATE TABLE `72crm_crm_customer_edit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `customer_id` int(11) NOT NULL COMMENT '客户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `ywy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ssjt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户编码，客户名称的大写首字母',
  `khgm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '客户类型，1一般客户   2重要客户   3潜在客户 4无效客户',
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商务电话',
  `create_date` date NULL DEFAULT NULL COMMENT '传真',
  `khgj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `khsjhm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EMAIL',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户所在地',
  `khqq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户描述',
  `khsf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '客户来源,  1网络搜索  2客户介绍  3广告   4公司官网数据接入(官网接口)',
  `business_tel` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `postcode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人,外键参考用户表',
  `skype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `khcs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '审核状态 1已审核   0未审核.新建客户之后默认为已审核。重新编辑之后需要审核',
  `cz` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除状态  0未删除  1已删除(回收站中使用)',
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员,外键参考用户表',
  `khww` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后修改时间',
  `khqx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '返回至公共客户池时间',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户对应的业务员，外键参考用户表user，为0表示没有对应的业务员，即此客户为公共客户池(公海客户)',
  `gxr` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shgj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shcs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdzb` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdzc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdzd` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khyh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khm` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `yhzh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xyed` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kpdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khsh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jwpl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qked` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `skqxsz_flag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `skqxsz_days` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cqwgmts` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_from` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xsfs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `yssj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hysx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qyxz` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fddbr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wtdlr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sxcpxx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `check_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delflag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `last_xgsj` datetime(0) NULL DEFAULT NULL,
  `backtime` datetime(0) NULL DEFAULT NULL,
  `last_ywy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `back_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户编辑表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_file`;
CREATE TABLE `72crm_crm_customer_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `customer_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_fpzy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_fpzy`;
CREATE TABLE `72crm_crm_customer_fpzy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '客户ID',
  `flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户转移和客户分配   1客户转移   2客户分配',
  `before_user` int(11) NULL DEFAULT NULL COMMENT '转移分配前负责人',
  `after_user` int(11) NULL DEFAULT NULL COMMENT '转移分配后负责人',
  `operator` int(11) NULL DEFAULT NULL COMMENT '操作人',
  `operate_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 316 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户分配转移记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_ghxx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_ghxx`;
CREATE TABLE `72crm_crm_customer_ghxx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '客户ID',
  `contact_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` int(11) NOT NULL COMMENT '创建人，参考用户ID',
  `create_time` date NOT NULL COMMENT '创建日期',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关怀主题',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关怀内容',
  `gh_date` date NULL DEFAULT NULL COMMENT '关怀日期',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关怀备注',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '18' COMMENT '启用状态 18不启用 19启用',
  `xsfzr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户关怀信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_jwjl
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_jwjl`;
CREATE TABLE `72crm_crm_customer_jwjl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '交往客户ID',
  `contact_id` int(11) NOT NULL,
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jwr` int(11) NULL DEFAULT NULL COMMENT '交往人',
  `jwtime_start` datetime(0) NULL DEFAULT NULL COMMENT '此次交往时间',
  `jwtime_end` datetime(0) NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL COMMENT '创建交往记录时间',
  `edit_time` datetime(0) NULL DEFAULT NULL COMMENT '修改交往记录时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交往内容',
  `remark` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `next_txtime` datetime(0) NULL DEFAULT NULL,
  `dp` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户交往记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_jwjlfile
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_jwjlfile`;
CREATE TABLE `72crm_crm_customer_jwjlfile`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `jwjl_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户交往记录id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户交往记录附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_operhistory`;
CREATE TABLE `72crm_crm_customer_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `operator` int(11) NOT NULL COMMENT '操作用户ID',
  `operate_time` datetime(0) NOT NULL COMMENT '操作时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '修改记录内容,包括新建修改，分配转移不在内',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_customer_zjsm
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_customer_zjsm`;
CREATE TABLE `72crm_crm_customer_zjsm`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `zjr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加人',
  `zjsj` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '追加时间',
  `shnr` varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明内容',
  `customer_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户追加说明' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_gys
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_gys`;
CREATE TABLE `72crm_crm_gys`  (
  `gys_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商编码，客户名称的大写首字母',
  `type` int(1) NULL DEFAULT 1 COMMENT '供应商类型，1德语类   2英语类   3中文类   4中英类',
  `business_tele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商务电话',
  `fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传真',
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EMAIL',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商所在地',
  `description` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户描述',
  `check_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '审核状态 1已审核   0未审核.新建供应商之后默认为已审核。重新编辑之后需要审核',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人,外键参考用户表',
  `create_date` date NULL DEFAULT NULL COMMENT '创建时间',
  `last_edittime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态  0未删除  1已删除(回收站中使用)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员,外键参考用户表',
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `fkqxsz_flag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkqxsz_days` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cgy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `szgj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `szsf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `szcs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khyh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khzh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `postcode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fddbr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wtdlr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jyfw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_edituser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`gys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_gys_contact
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_gys_contact`;
CREATE TABLE `72crm_crm_gys_contact`  (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `gys_id` int(11) NOT NULL COMMENT '对应客户ID',
  `contact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人名字',
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `contact_birthday` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人生日',
  `contact_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱',
  `contact_qq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人qq',
  `contact_gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '联系人性别 0保密   1男  2女',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除状态 0未删除  1已删除',
  `zycd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fax` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商联系人 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_gys_contact_edit
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_gys_contact_edit`;
CREATE TABLE `72crm_crm_gys_contact_edit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NULL DEFAULT NULL COMMENT '联系人ID',
  `gys_id` int(11) NOT NULL COMMENT '对应客户ID',
  `contact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人名字',
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `contact_birthday` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人生日',
  `contact_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱',
  `contact_qq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人qq',
  `contact_gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '联系人性别 0保密   1男  2女',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除状态 0未删除  1已删除',
  `zycd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fax` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商联系人编辑 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_gys_edit
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_gys_edit`;
CREATE TABLE `72crm_crm_gys_edit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gys_id` int(11) NOT NULL COMMENT '供应商ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商编码，客户名称的大写首字母',
  `type` int(1) NULL DEFAULT 1 COMMENT '供应商类型，1德语类   2英语类   3中文类   4中英类',
  `business_tele` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商务电话',
  `fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '传真',
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'EMAIL',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商所在地',
  `description` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户描述',
  `check_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '审核状态 1已审核   0未审核.新建供应商之后默认为已审核。重新编辑之后需要审核',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人,外键参考用户表',
  `create_date` date NULL DEFAULT NULL COMMENT '创建时间',
  `last_edittime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态  0未删除  1已删除(回收站中使用)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员,外键参考用户表',
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `fkqxsz_flag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkqxsz_days` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cgy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `szgj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `szsf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `szcs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khyh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `khzh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `postcode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fddbr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wtdlr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jyfw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_edituser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商编辑表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_gys_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_gys_file`;
CREATE TABLE `72crm_crm_gys_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `gys_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_gys_jwjl
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_gys_jwjl`;
CREATE TABLE `72crm_crm_gys_jwjl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gys_id` int(11) NOT NULL COMMENT '供应商ID',
  `contact_id` int(11) NULL DEFAULT NULL,
  `jwr` int(11) NOT NULL COMMENT '评价人',
  `jwtime` datetime(0) NOT NULL COMMENT '评价时间',
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评价内容',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_jjfa
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_jjfa`;
CREATE TABLE `72crm_crm_jjfa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fabh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `famc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xsjh_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fzr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhqx` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fajd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gxr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khfk` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_xgsj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shsj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nopass_reason` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_jjfa_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_jjfa_file`;
CREATE TABLE `72crm_crm_jjfa_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `jjfa_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_product
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_product`;
CREATE TABLE `72crm_crm_product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品ID：=品牌+产品型号',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌ID，外键参考品牌表id',
  `comname_id` int(11) NULL DEFAULT NULL COMMENT '产品品名ID，外键参考品名表ID',
  `product_modelnum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品型号',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位ID,外键参考产品计量单位表',
  `cost_price` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0.00' COMMENT '参考成本价',
  `sell_price` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0.00' COMMENT '参考售出价',
  `yjpfj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '一级批发价',
  `ejpfj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '二级批发价',
  `sjpfj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三级批发价',
  `sijpfj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '四批发价',
  `wjpfj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '五级批发价',
  `kcsx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '库存上限',
  `kcxx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '库存下线',
  `gys` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品描述',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品备注',
  `bzq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '保质期',
  `creator` int(11) NOT NULL COMMENT '创建人，外键参考用户表',
  `create_date` date NULL DEFAULT NULL COMMENT '创建日期',
  `last_edittime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改日期',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '产品状态：1启用  0停用，停用将不显示在系统中',
  `last_edituser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后修改用户',
  `islock_comname` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1082 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_product_brand
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_product_brand`;
CREATE TABLE `72crm_crm_product_brand`  (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品品牌ID',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父级品牌ID  0代表顶级',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '品牌名称',
  `sort` int(4) NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `price_rule_type` int(1) NULL DEFAULT 3 COMMENT '价格规则，加减乘除 1加 2减  3乘  4除',
  `price_rule_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格规则数目',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品牌说明',
  `qxlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxry` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxbm` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxjs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_product_brand_gys
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_product_brand_gys`;
CREATE TABLE `72crm_crm_product_brand_gys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL COMMENT '品牌ID',
  `gys_id` int(11) NOT NULL COMMENT '供应商ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 264 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '品牌供应商对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_product_comname
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_product_comname`;
CREATE TABLE `72crm_crm_product_comname`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品名ID',
  `name_cn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品名名称',
  `name_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文品名',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_date` date NULL DEFAULT NULL COMMENT '创建日期',
  `last_edittime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改日期',
  `tariff` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '关税',
  `hgbm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '海关编码',
  `hs_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '德国HS CODE',
  `function` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能',
  `theory` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原理',
  `usage` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用途',
  `flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否可以被删除，有产品选择了该品名则不能删除。0:无产品选择该品名，可删除 1产品选择该品名不可删除',
  `others` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '其他事项，描述无法描述的项目，数组形式。key=value;key=value形式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品品名表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_product_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_product_file`;
CREATE TABLE `72crm_crm_product_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_product_measureunit
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_product_measureunit`;
CREATE TABLE `72crm_crm_product_measureunit`  (
  `measure_unitid` int(11) NOT NULL AUTO_INCREMENT COMMENT '计量单位ID',
  `measure_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '计量单位民称',
  `creator` int(11) NOT NULL COMMENT '创建人，外键参考用户表',
  `create_date` date NULL DEFAULT NULL COMMENT '创建日期',
  `last_edittime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改日期',
  `status` int(1) NULL DEFAULT 1 COMMENT '产品状态：1启用  0停用，停用将不显示在系统中',
  PRIMARY KEY (`measure_unitid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品计量单位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjd`;
CREATE TABLE `72crm_crm_xjd`  (
  `xjd_id` int(11) NOT NULL AUTO_INCREMENT,
  `xjd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单号',
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `contact_id` int(11) NOT NULL DEFAULT 1,
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_date` date NOT NULL COMMENT '创建日期',
  `send_status` int(1) NOT NULL DEFAULT 0 COMMENT '邮件发送状态  0未发送  1已发送',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `from` int(1) NOT NULL DEFAULT 1 COMMENT '询价单来源，1系统录入   2官网  默认是系统录入',
  `gdlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '机会单',
  PRIMARY KEY (`xjd_id`) USING BTREE,
  UNIQUE INDEX `xjd_dh`(`xjd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '询价单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjd_costinfo
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjd_costinfo`;
CREATE TABLE `72crm_crm_xjd_costinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '询价单成本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjd_costinfo_history
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjd_costinfo_history`;
CREATE TABLE `72crm_crm_xjd_costinfo_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '询价单成本信息 历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjd_costinfo_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjd_costinfo_operhistory`;
CREATE TABLE `72crm_crm_xjd_costinfo_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '客户id',
  `operator` int(11) NOT NULL COMMENT '操作用户ID',
  `operate_time` datetime(0) NOT NULL COMMENT '操作时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '修改记录内容,包括新建修改，分配转移不在内',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '询价单 成本信息 操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjd_emailrecord_brand_gys
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjd_emailrecord_brand_gys`;
CREATE TABLE `72crm_crm_xjd_emailrecord_brand_gys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xjd_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `gys_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjd_file`;
CREATE TABLE `72crm_crm_xjd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `xjd_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '询价单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xjdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xjdmx`;
CREATE TABLE `72crm_crm_xjdmx`  (
  `xjdmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `xjd_id` int(11) NOT NULL COMMENT '询价单id',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '产品id',
  `brand_id` int(11) NULL DEFAULT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NULL DEFAULT NULL COMMENT '品名id',
  `quantity` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品数量',
  `place` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产地',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '明细备注',
  `feedback_unitprice` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '反馈单价',
  `feedback_ramark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '反馈备注',
  `feedback_hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '反馈货期',
  `bjr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bjsj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xjdmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '询价单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xsjh
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xsjh`;
CREATE TABLE `72crm_crm_xsjh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jhbh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhmc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhlx` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhly` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhtgz` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fzbm` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fzr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descriptioin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yjcjrq` date NULL DEFAULT NULL,
  `yjcjje` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhjd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhzt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cjknx` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_xgsj` datetime(0) NULL DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shsj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nopass_reason` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_crm_xsjh_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_crm_xsjh_file`;
CREATE TABLE `72crm_crm_xsjh_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `xsjh_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_info
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_info`;
CREATE TABLE `72crm_email_info`  (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '邮箱id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `mail_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户名称',
  `smtp_host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送邮件HOST',
  `smtp_pop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送邮件协议',
  `smtp_port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送邮箱端口',
  `pop_protocol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件协议',
  `pop_port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收邮件端口',
  `pop_host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收邮件服务器',
  `mail_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱账号',
  `mail_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱密码or授权码',
  `isflag` int(1) NULL DEFAULT 0 COMMENT '删除标志(0 可用,1 被删除)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`mail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_receive
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_receive`;
CREATE TABLE `72crm_email_receive`  (
  `receive_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '接收邮件id',
  `receive_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件邮箱',
  `send_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发件人邮箱',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态(0 未读,1 已读)',
  `mail_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件主题',
  `mail_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '邮件内容',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '邮件接收时间',
  `isfile` int(1) NULL DEFAULT NULL COMMENT '是否有附件:(0 无附件,1 有附件)',
  `isflag` int(1) NULL DEFAULT 0 COMMENT '删除标志(0 可用,1 被删除)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`receive_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_receive_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_receive_file`;
CREATE TABLE `72crm_email_receive_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件id',
  `receive_id` int(11) NOT NULL COMMENT '收件箱id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件名称',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件大小',
  `isflag` int(1) NULL DEFAULT 0 COMMENT '删除标志(0 可用,1 被删除)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_send
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_send`;
CREATE TABLE `72crm_email_send`  (
  `send_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发送邮件id',
  `mail_id` int(11) NOT NULL COMMENT '邮箱配置id',
  `send_user_id` int(11) NOT NULL COMMENT '发送邮件人id',
  `status` int(11) NULL DEFAULT NULL COMMENT '邮件状态(0 未发送,1 已发送,2 发送失败)',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '邮件创建时间',
  `mail_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送邮箱账号',
  `mail_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件收件人',
  `mail_copy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件抄送人',
  `mail_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件主题',
  `mail_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '邮件内容',
  `isflag` int(1) NULL DEFAULT 0 COMMENT '删除标志(0 可用,1 被删除)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员id',
  `isfile` int(1) NOT NULL COMMENT '是否有文件(0 有文件,1 无文件)',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`send_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_send_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_send_file`;
CREATE TABLE `72crm_email_send_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件id',
  `send_id` int(11) NULL DEFAULT NULL COMMENT '邮箱id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件名称',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件大小',
  `isflag` int(1) NULL DEFAULT 0 COMMENT '删除标志(0 可用,1 被删除)',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_yjmb
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_yjmb`;
CREATE TABLE `72crm_email_yjmb`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `gyslx` int(1) NOT NULL DEFAULT 1 COMMENT '供应商类型',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板内容',
  `mblx` int(1) NOT NULL DEFAULT 1 COMMENT '模板类型 1.询价邮件 2.下订单 3.催报价 4.采购订单催订单',
  `gyszlx` int(1) NULL DEFAULT -1 COMMENT '供应商子类型',
  `sfdfj` int(1) NOT NULL DEFAULT 0 COMMENT '是否带附件',
  `sfjjyj` int(1) NOT NULL DEFAULT 0 COMMENT '是否紧急邮件',
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_date` date NOT NULL COMMENT '创建日期',
  `lastedit_date` date NOT NULL COMMENT '最后修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮件模板 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_email_yjmb_gyszlx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_email_yjmb_gyszlx`;
CREATE TABLE `72crm_email_yjmb_gyszlx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '民称',
  `sort` int(1) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮件模板 供应商子类型 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_bankaccount
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_bankaccount`;
CREATE TABLE `72crm_finance_bankaccount`  (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账户名字',
  `account_num` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账户账号',
  `sort` int(1) NOT NULL COMMENT '排序',
  `je` double(20, 2) NULL DEFAULT NULL,
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `flag` int(1) NULL DEFAULT 1 COMMENT '1银行账户  2 现金 ',
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `account_name`(`account_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '银行账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_cgxsqtfy
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_cgxsqtfy`;
CREATE TABLE `72crm_finance_cgxsqtfy`  (
  `fyid` int(11) NOT NULL AUTO_INCREMENT COMMENT '费用ID',
  `dyid` int(11) NULL DEFAULT NULL COMMENT '收货id、开单ID',
  `fylxid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类型id,参考其他费用类型表',
  `fymc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用名称',
  `fyje` double(20, 2) NULL DEFAULT NULL COMMENT '费用金额',
  `flag` int(10) NULL DEFAULT NULL COMMENT '1、采购收货，2、销售开单',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态',
  `deletezy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `fylb` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fkzh` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款帐户',
  `fybl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用比例',
  PRIMARY KEY (`fyid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '进销存费用明细-采购销售其他费用' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_fkd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_fkd`;
CREATE TABLE `72crm_finance_fkd`  (
  `fkd_id` int(11) NOT NULL AUTO_INCREMENT,
  `fkd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收款单单号',
  `gys_id` int(11) NOT NULL COMMENT '客户id',
  `fkfs` int(11) NOT NULL COMMENT '收款方式',
  `bankaccount` int(11) NOT NULL COMMENT '收款账户',
  `creator` int(11) NOT NULL COMMENT '操作员',
  `create_date` date NOT NULL COMMENT '创建日期',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否' COMMENT '是否补单   是   否',
  `je` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收款金额',
  `dwtt` int(11) NOT NULL COMMENT '单位抬头',
  `fylb` int(1) NOT NULL DEFAULT 1 COMMENT '费用类别 1银行收款  2现金',
  `status` int(1) NULL DEFAULT -1 COMMENT '单据状态。',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `fkrq` date NOT NULL COMMENT '收款日期',
  `cgdd_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预收款单id',
  `cgsh_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '申购单id',
  `yfkd_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注描述',
  `dj_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '付款单' COMMENT '单据付款状态：付款单  核销付款',
  PRIMARY KEY (`fkd_id`) USING BTREE,
  UNIQUE INDEX `skd_dh`(`fkd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收款单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_fpgl_fpjxx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_fpgl_fpjxx`;
CREATE TABLE `72crm_finance_fpgl_fpjxx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水id号',
  `khid` int(11) NULL DEFAULT NULL COMMENT '客户编号（控件选择）',
  `khmc` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '客户名称（手动输入）',
  `gysid` int(6) NULL DEFAULT NULL COMMENT '供应商ID（控件选择）',
  `gysmc` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '供应商名称（手动输入）',
  `fprq` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '（收到、开出）日期',
  `kpr` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '开票人',
  `fpdm` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '发票代码',
  `fphm` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '发票号码',
  `fpje` double(10, 2) NULL DEFAULT NULL COMMENT '发票金额',
  `hkje` double(10, 2) NULL DEFAULT NULL COMMENT '货款金额',
  `sk` double(10, 2) NULL DEFAULT NULL COMMENT '税款',
  `dyywdjhid` varchar(2000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '对应业务单据号ID',
  `dyywdjh` varchar(2000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '对应业务单据号',
  `cjrq` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建日期',
  `cjr` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(1000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `kplx` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '1、采购收货或销售开单，2、供应商或客户欠票初始化',
  `flag` int(1) NULL DEFAULT NULL COMMENT '进销项发票标志（1进， 2销）',
  `delflag` int(1) NULL DEFAULT 0,
  `deletezy` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `shzt` varchar(5) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '-9' COMMENT '-9、未提交，0、未审核，1、已审核',
  `shr` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `shsj` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `qszt` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0' COMMENT '签收状态',
  `fhfz` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '发货方式',
  `fhdh` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '发货单号',
  `cyfid` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `cyfmc` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '承运方名称',
  `cyfdh` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '承运方查询电话',
  `fhje` double(50, 2) NULL DEFAULT NULL COMMENT '发货金额',
  `fhfylb` varchar(5) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fhfkzh` varchar(5) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '发货付款帐户',
  `wl_yfk` double(20, 2) NULL DEFAULT 0.00 COMMENT '物流已付款',
  `dwtt` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '发票进销项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_fpgl_jxfpqpcsh
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_fpgl_jxfpqpcsh`;
CREATE TABLE `72crm_finance_fpgl_jxfpqpcsh`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `qpph` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '' COMMENT '发票欠票-初始化-票号  XXCSH-2011-06-20-0001 ',
  `gysid` varchar(15) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `qpje` double(50, 2) NULL DEFAULT NULL COMMENT '金额',
  `cjrq` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT 'CURRENT_TIMESTAMP' COMMENT '创建日期',
  `cjr` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(2000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态',
  `deletezy` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '删除人员',
  `fpzt` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '票未开' COMMENT '发票状态：票未开；票已开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '进项发票欠票初始化' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_fpgl_xxfpqpcsh
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_fpgl_xxfpqpcsh`;
CREATE TABLE `72crm_finance_fpgl_xxfpqpcsh`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `qpph` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '' COMMENT '发票欠票-初始化-票号  XXCSH-2011-06-20-0001 ',
  `khid` varchar(15) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `qpje` double(50, 2) NULL DEFAULT NULL COMMENT '金额',
  `cjrq` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT 'CURRENT_TIMESTAMP' COMMENT '创建日期',
  `cjr` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(2000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态',
  `deletezy` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '删除人员',
  `fpzt` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '票未开' COMMENT '发票状态：票未开；票已开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '进项发票欠票初始化' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_gysqkcsh
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_gysqkcsh`;
CREATE TABLE `72crm_finance_gysqkcsh`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cshdh` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '进销存款项-初始化-单号  XSSK-CSH-0001',
  `gysid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商主键id',
  `je` double(50, 2) NULL DEFAULT NULL COMMENT '金额',
  `yfkje` double(50, 2) NULL DEFAULT NULL,
  `cjrq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'CURRENT_TIMESTAMP' COMMENT '创建日期',
  `fkqx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款期限',
  `cjr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `dwtt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位抬头',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态',
  `deletezy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `bzxx` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商欠款初始化' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_khqkcsh
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_khqkcsh`;
CREATE TABLE `72crm_finance_khqkcsh`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cshdh` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '进销存款项-初始化-单号  XSSK-CSH-0001',
  `khid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户ID',
  `je` double(50, 2) NULL DEFAULT NULL COMMENT '金额',
  `yskje` double(50, 2) NULL DEFAULT NULL,
  `cjrq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'CURRENT_TIMESTAMP' COMMENT '创建日期',
  `skqx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款期限',
  `cjr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `dwtt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位抬头',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除状态',
  `deletezy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `bzxx` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商欠款初始化' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtfylx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtfylx`;
CREATE TABLE `72crm_finance_qtfylx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtfymxft
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtfymxft`;
CREATE TABLE `72crm_finance_qtfymxft`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `djid` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '对应单据（收货、开单）主键id',
  `mxid` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '对应单据明细主键id',
  `fyid` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '费用主键id',
  `bfb` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '百分比,比例',
  `je` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '金额',
  `flag` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '单据类型，cgsh,xskd..',
  `fylx` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '费用类型  qtfy  wlfy',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '其他费用明细分摊 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtlsfk_fyxm
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtlsfk_fyxm`;
CREATE TABLE `72crm_finance_qtlsfk_fyxm`  (
  `fyxm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品品牌ID',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父级品牌ID  0代表顶级',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '品牌名称',
  `sort` int(4) NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品牌说明',
  `gxry` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxbm` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxjs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fyxm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtlsfk_fyzcd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtlsfk_fyzcd`;
CREATE TABLE `72crm_finance_qtlsfk_fyzcd`  (
  `djid` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `djbh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `zdr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '制单人',
  `ldrq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录单日期',
  `jbr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经办人',
  `ssbm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `wldwlx` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'wldwlx=gys,wldwlx=kh',
  `wldw` int(10) NULL DEFAULT NULL COMMENT '物流单位',
  `fkfs` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `fkzh` int(11) NULL DEFAULT NULL COMMENT '付款账户',
  `ph` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '批号',
  `hj` double(10, 2) NULL DEFAULT NULL COMMENT '合计',
  `bz` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `fylb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `shzt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-1' COMMENT '-1、未提交；0、未审核，1、已审核',
  `shr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  `shnr` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核内容',
  `thid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货主键id',
  PRIMARY KEY (`djid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '费用支出单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtlsfk_fyzcdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtlsfk_fyzcdmx`;
CREATE TABLE `72crm_finance_qtlsfk_fyzcdmx`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `xmlb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目类别',
  `dydjid` int(20) NULL DEFAULT NULL COMMENT 'fyzcd主键id',
  `je` double(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `zy` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `thid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '费用支出单明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtlsfk_qtsrd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtlsfk_qtsrd`;
CREATE TABLE `72crm_finance_qtlsfk_qtsrd`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `dh` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '单号',
  `cjr` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `cjrq` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建日期',
  `jbr` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '经办人',
  `ssbm` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '所属部门',
  `wldwlx` varchar(5) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT 'wldwlx=gys,wldwlx=kh',
  `wldw` int(10) NULL DEFAULT NULL COMMENT '往来单位',
  `skfs` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '收款方式',
  `skzh` int(10) NULL DEFAULT NULL COMMENT '收款账户',
  `ph` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '票号',
  `hj` double(10, 2) NULL DEFAULT NULL COMMENT '合计',
  `bz` varchar(4000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `srlb` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '收入类别',
  `srlbmc` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '收入类别名称',
  `shzt` varchar(5) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '-1' COMMENT '-9、未提交，0、未审核，1、已审核',
  `shr` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '审核时间',
  `thid` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '退货id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '其他收入单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtlsfk_qtsrdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtlsfk_qtsrdmx`;
CREATE TABLE `72crm_finance_qtlsfk_qtsrdmx`  (
  `mxid` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xmlb` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '项目类别',
  `je` double(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `zy` varchar(4000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '摘要',
  `dyid` int(20) NULL DEFAULT NULL COMMENT '对应主表id',
  `thid` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '退货id',
  PRIMARY KEY (`mxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '其他类收入单明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_qtlsfk_zkd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_qtlsfk_zkd`;
CREATE TABLE `72crm_finance_qtlsfk_zkd`  (
  `djid` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `djbh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `zdr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '制单人',
  `cjrq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `jsr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经手人',
  `ssbm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `bz` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `zrzh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入账户',
  `zczh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出账户',
  `je` double(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `ph` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '票号',
  `shzt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-1' COMMENT '-1、未提交，0、未审核，1、已审核',
  `shr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`djid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转款单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_rlktable
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_rlktable`;
CREATE TABLE `72crm_finance_rlktable`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sgid` int(11) NULL DEFAULT NULL COMMENT '申购id',
  `kdid` int(11) NULL DEFAULT NULL COMMENT '开单id',
  `ddid` int(11) NOT NULL COMMENT '订单id',
  `yskd_id` int(11) NOT NULL COMMENT '预收款单',
  `rlje` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '认领金额',
  `currenttimeMills` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '时间搓',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '核销状态 0未核销 1已核销',
  `rltype` int(1) NOT NULL DEFAULT 0 COMMENT '认领类型 0申购 1开单  2申购临时 3开单临时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '认领款 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_skd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_skd`;
CREATE TABLE `72crm_finance_skd`  (
  `skd_id` int(11) NOT NULL AUTO_INCREMENT,
  `skd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收款单单号',
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `skfs` int(11) NOT NULL COMMENT '收款方式',
  `bankaccount` int(11) NOT NULL COMMENT '收款账户',
  `creator` int(11) NOT NULL COMMENT '操作员',
  `create_date` date NOT NULL COMMENT '创建日期',
  `je` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收款金额',
  `dwtt` int(11) NOT NULL COMMENT '单位抬头',
  `fylb` int(1) NOT NULL DEFAULT 1 COMMENT '费用类别 1银行收款  2现金',
  `status` int(1) NULL DEFAULT -1 COMMENT '单据状态。',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `skrq` date NOT NULL COMMENT '收款日期',
  `yskd_id` int(11) NULL DEFAULT NULL COMMENT '预收款单id',
  `sgd_id` int(11) NULL DEFAULT NULL COMMENT '申购单id',
  `xskd_id` int(11) NULL DEFAULT NULL COMMENT '销售开单id',
  `xsdd_id` int(11) NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注描述',
  `dj_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '收款单' COMMENT '单据收款状态 ：收款单  核销收款',
  `sfbd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否',
  `delflag` int(1) NULL DEFAULT 0,
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isadmin_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否管理员删除 1是 0否',
  `delete_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`skd_id`) USING BTREE,
  UNIQUE INDEX `skd_dh`(`skd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收款单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_skfs
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_skfs`;
CREATE TABLE `72crm_finance_skfs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收款名',
  `sort` int(1) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收款方式 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_yfkd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_yfkd`;
CREATE TABLE `72crm_finance_yfkd`  (
  `yfkd_id` int(11) NOT NULL AUTO_INCREMENT,
  `yfkd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '预收款单单号',
  `gys_id` int(11) NOT NULL COMMENT '客户id',
  `fkfs` int(11) NOT NULL COMMENT '收款方式',
  `bankaccount` int(11) NOT NULL COMMENT '收款账户',
  `creator` int(11) NOT NULL COMMENT '操作员',
  `create_date` date NOT NULL COMMENT '创建日期',
  `je` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '预收款金额',
  `syje` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '剩余金额',
  `dwtt` int(11) NOT NULL COMMENT '单位抬头',
  `fylb` int(1) NOT NULL DEFAULT 1 COMMENT '费用类别 1银行收款  2现金',
  `status` int(1) NULL DEFAULT -1 COMMENT '单据状态。',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `fkrq` date NOT NULL COMMENT '收款日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否',
  `fswxhx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否',
  PRIMARY KEY (`yfkd_id`) USING BTREE,
  UNIQUE INDEX `yskd_dh`(`yfkd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '预收款单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_yfkjs
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_yfkjs`;
CREATE TABLE `72crm_finance_yfkjs`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `gysid` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '供应商id',
  `je` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '金额',
  `wbje` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '外币金额',
  `cjrq` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建日期',
  `cjr` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(4000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `dwtt` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '单位抬头',
  `currency` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '外币币种',
  `rate_rmb` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '人民币汇率',
  `shzt` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0' COMMENT '审核状态',
  `shr` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(80) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '审核时间',
  `fylb` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fkfs` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '付款方式',
  `fkzh` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '付款账户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '应付款减少' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_yfkzj
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_yfkzj`;
CREATE TABLE `72crm_finance_yfkzj`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `gysid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商id',
  `je` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `wbje` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外币金额',
  `cjrq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `cjr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dwtt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位抬头',
  `currency` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外币币种',
  `rate_rmb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人民币汇率',
  `shzt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态',
  `shr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  `fylb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fkfs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `fkzh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款账户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应付款增加' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_yskd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_yskd`;
CREATE TABLE `72crm_finance_yskd`  (
  `yskd_id` int(11) NOT NULL AUTO_INCREMENT,
  `yskd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '预收款单单号',
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `skfs` int(11) NOT NULL COMMENT '收款方式',
  `bankaccount` int(11) NOT NULL COMMENT '收款账户',
  `creator` int(11) NOT NULL COMMENT '操作员',
  `create_date` date NOT NULL COMMENT '创建日期',
  `je` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '预收款金额',
  `syje` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '剩余金额',
  `dwtt` int(11) NOT NULL COMMENT '单位抬头',
  `fylb` int(1) NOT NULL DEFAULT 1 COMMENT '费用类别 1银行收款  2现金',
  `status` int(1) NULL DEFAULT -1 COMMENT '单据状态。',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `skrq` date NOT NULL COMMENT '收款日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否',
  `fswxhx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否',
  `delfalg` int(1) NULL DEFAULT 0 COMMENT '1已删除 0 未删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isadmin_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否管理员删除 1是 0否',
  `delete_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除使劲',
  PRIMARY KEY (`yskd_id`) USING BTREE,
  UNIQUE INDEX `yskd_dh`(`yskd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '预收款单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_yskjs
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_yskjs`;
CREATE TABLE `72crm_finance_yskjs`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `khid` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '供应商id',
  `je` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '金额',
  `wbje` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '外币金额',
  `cjrq` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建日期',
  `cjr` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(4000) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  `dwtt` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '单位抬头',
  `currency` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '外币币种',
  `rate_rmb` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '人民币汇率',
  `shzt` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '0' COMMENT '审核状态',
  `shr` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(80) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '审核时间',
  `fylb` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '费用类别',
  `skfs` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '付款方式',
  `skzh` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '付款账户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci COMMENT = '应付款减少' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_finance_yskzj
-- ----------------------------
DROP TABLE IF EXISTS `72crm_finance_yskzj`;
CREATE TABLE `72crm_finance_yskzj`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `khid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商id',
  `je` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `wbje` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外币金额',
  `cjrq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `cjr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `bz` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dwtt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位抬头',
  `currency` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外币币种',
  `rate_rmb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人民币汇率',
  `shzt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态',
  `shr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  `fylb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `skfs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `skzh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款账户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应付款增加' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgdd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgdd`;
CREATE TABLE `72crm_jxc_cgdd`  (
  `cgdd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cgdd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '采购订单单号,规则遵守单号规则',
  `sgd_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '申购单id,多个用逗号分隔',
  `gys_id` int(11) NOT NULL COMMENT '供应商id',
  `contact_id` int(11) NOT NULL COMMENT '联系人ID',
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` int(11) NOT NULL COMMENT '创建人',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单  0否,创建日期为当天日期   1是，创建日期可选',
  `create_date` date NOT NULL COMMENT '创建日期',
  `jhrq` date NULL DEFAULT NULL COMMENT '交货日期',
  `fkqx` date NULL DEFAULT NULL COMMENT '付款期限',
  `fplx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '增值税发票' COMMENT '发票类型  1:增值税发票  2 普通发票  3收据',
  `jhdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交货地址',
  `czy` int(11) NULL DEFAULT NULL COMMENT '操作员',
  `ywy` int(11) NULL DEFAULT NULL COMMENT '务业员',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `zje` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总金额',
  `zdzk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '整单折扣',
  `zkh_zje` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣后总金额',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `dwtt` int(1) NOT NULL COMMENT '单位抬头',
  `gysdddh` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商订单单号',
  `gysfpdh` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商发票单号',
  `status` int(1) NOT NULL DEFAULT -1 COMMENT '单据状态。-1未提交  1未审核  2执行中货未到 3执行中货未收全  4执行完毕  5终止执行 6审核未通过  7强制执行完毕',
  `tstj_user` int(11) NULL DEFAULT NULL COMMENT '退审提交人',
  `tstj_time` datetime(0) NULL DEFAULT NULL COMMENT '退审提交时间',
  `tstj_reason` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退审提交原因',
  `tsshr` int(11) NULL DEFAULT NULL COMMENT '退审审核人',
  `tsshsj` datetime(0) NULL DEFAULT NULL COMMENT '退审审核时间',
  `tssh_nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退审审核不通过原因',
  `tsh_status` int(1) NOT NULL DEFAULT 0 COMMENT 'int1退审核状态0没有退审核状态  -2退审提交未审核  -1退审提交审核未通过1退审提交审核通过  2执行完毕的单据退审审核通过3执行中货未收全单据 退审审核通过4执行中货未到-但有下推收货单的 退审审核通过 ',
  `ck` int(11) NULL DEFAULT NULL COMMENT '仓库',
  `cgddlx` int(1) NOT NULL DEFAULT 1 COMMENT '采购订单类型',
  `zzdd_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '终止执行原因',
  `qzzxwb_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '强制执行完毕原因',
  `typeofcontract` int(1) NOT NULL COMMENT '条款类型',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型。1、大货；2、单独   3 国内',
  `cbzje` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成本总金额',
  `gwyzf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `yhzzf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `kdf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递费',
  `wbbz` int(1) NULL DEFAULT NULL COMMENT '外币币种ID',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `zwbcb` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `actualkg` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实际重量',
  `actualv` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实际体积',
  `pricelx` int(1) NOT NULL DEFAULT 2 COMMENT '单价类型。1、未税单价；2、含税单价',
  `send_status` int(1) NOT NULL DEFAULT 0 COMMENT '询价邮件发送状态  0未发送  1已发送',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识，0未删除 1已删除',
  `deletezy` int(11) NOT NULL COMMENT '删除职员ID',
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `isadmin_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否是管理员删除 0否 1是。',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fksf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qtwbfyhj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qtbbfyhj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bjdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cgdd_id`) USING BTREE,
  UNIQUE INDEX `cgdd_dh`(`cgdd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgdd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgdd_file`;
CREATE TABLE `72crm_jxc_cgdd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `cgdd_id` int(11) NULL DEFAULT NULL COMMENT '采购订单id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgdd_httk
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgdd_httk`;
CREATE TABLE `72crm_jxc_cgdd_httk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cgddid` int(11) NULL DEFAULT NULL COMMENT '对应采购订单主键id',
  `htzt` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题',
  `htnr` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `px` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排序',
  `typeofcontact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '条款类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单合同条款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgdd_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgdd_operhistory`;
CREATE TABLE `72crm_jxc_cgdd_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cgddid` int(11) NOT NULL COMMENT '采购订单id',
  `operator` int(11) NOT NULL COMMENT '操作用户ID',
  `operate_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作记录表',
  `reason` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 248 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单 操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgddmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgddmx`;
CREATE TABLE `72crm_jxc_cgddmx`  (
  `cgddmx_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细id',
  `cgdd_id` int(11) NOT NULL COMMENT '采购订单id',
  `sgdmx_id` int(11) NOT NULL COMMENT '申购单明细id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NULL DEFAULT NULL COMMENT '品名id',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `order_quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单数量',
  `yxtsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '已下推数量',
  `yshsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '已收货数量',
  `wbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价',
  `zk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `cgdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购单价',
  `sl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '税率',
  `wbhsdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币含税单价',
  `wbsj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币税金',
  `wbhk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币货款',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `wbhj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币合计',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '人民币单价',
  `rmbhj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '人民币合计',
  `cpkg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `zy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `gwyzf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `yhzzf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账',
  `kdf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递费',
  `wbbz` int(1) NULL DEFAULT NULL COMMENT '币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '本币信息',
  `wbcount` int(1) NOT NULL DEFAULT 0 COMMENT '外币增加几行',
  `bbcount` int(1) NOT NULL DEFAULT 0 COMMENT '本币增加几行',
  `wbsum` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币合计',
  `bbsum` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '本币合计',
  `delfalg` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识',
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货数量',
  `qhsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '欠货数量',
  `qhje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '欠货金额',
  PRIMARY KEY (`cgddmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgsh
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgsh`;
CREATE TABLE `72crm_jxc_cgsh`  (
  `cgsh_id` int(11) NOT NULL AUTO_INCREMENT,
  `cgsh_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '采购收货单号,规则遵守单号规则',
  `cgdd_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购订单单id,多个用逗号分隔',
  `gys_id` int(11) NOT NULL COMMENT '供应商id',
  `contact_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` int(11) NOT NULL COMMENT '创建人',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单  0否,创建日期为当天日期   1是，创建日期可选',
  `create_date` date NOT NULL COMMENT '创建日期',
  `jhrq` date NULL DEFAULT NULL COMMENT '交货日期',
  `fkqx` date NULL DEFAULT NULL COMMENT '付款期限',
  `fplx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '增值税发票' COMMENT '发票类型  1:增值税发票  2 普通发票  3收据',
  `jhdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交货地址',
  `czy` int(11) NULL DEFAULT NULL COMMENT '操作员',
  `ywy` int(11) NULL DEFAULT NULL COMMENT '务业员',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `zje` double(20, 2) NULL DEFAULT NULL COMMENT '总金额',
  `zdzk` double(5, 2) NULL DEFAULT NULL COMMENT '整单折扣',
  `zkh_zje` double(20, 2) NULL DEFAULT NULL COMMENT '折扣后总金额',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `dwtt` int(1) NOT NULL COMMENT '单位抬头',
  `status` int(1) NOT NULL DEFAULT -1 COMMENT '单据状态。-1未提交  1未审核  2已收货  ',
  `ck` int(11) NULL DEFAULT NULL COMMENT '仓库',
  `cgshlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '采购订单类型',
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cgsgfs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fhje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fylb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fhfmc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fhfcxdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fhdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `yjkx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sjrksj` datetime(0) NULL DEFAULT NULL COMMENT '实际入库时间',
  `fkzh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款账户id',
  `shsm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cgsh_id`) USING BTREE,
  UNIQUE INDEX `cgsh_dh`(`cgsh_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购收货主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgsh_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgsh_file`;
CREATE TABLE `72crm_jxc_cgsh_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `cgsh_id` int(11) NULL DEFAULT NULL COMMENT '采购收货id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购收货附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgshmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgshmx`;
CREATE TABLE `72crm_jxc_cgshmx`  (
  `cgshmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `cgsh_id` int(11) NOT NULL COMMENT '采购订单id',
  `cgddmx_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购订单明细id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NULL DEFAULT NULL COMMENT '品名id',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `order_quantity` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货数量',
  `wsdj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hsdj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cgshmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购收货明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgyd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgyd`;
CREATE TABLE `72crm_jxc_cgyd`  (
  `cgyd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cgyd_dh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgsh_id` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgdd_id` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gys_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  `remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ck` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thrq` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfbd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dwtt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thfs` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thskfs` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thzh` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ywy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gxr` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thzje` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL,
  `shr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nopass_reason` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `precelx` int(1) NULL DEFAULT 2 COMMENT '1未税  2含税',
  `from` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '系统',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '1已删除  0未删除',
  `deletezy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `last_edittime` datetime(0) NULL DEFAULT NULL,
  `sjcksj` datetime(0) NULL DEFAULT NULL,
  `ckr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cksm` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cgyd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgyd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgyd_file`;
CREATE TABLE `72crm_jxc_cgyd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `cgyd_id` int(11) NULL DEFAULT NULL COMMENT '采购异动id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_cgydmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_cgydmx`;
CREATE TABLE `72crm_jxc_cgydmx`  (
  `cgydmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `cgyd_id` int(11) NOT NULL,
  `cgshmx_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `th_quantity` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货数量',
  `shd_quantity` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货单原数量',
  `sf_quantity` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实发数量',
  `measure_unitid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wsdj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hsdj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_sl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cbj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hk` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zy` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delflag` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cgydmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ck
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ck`;
CREATE TABLE `72crm_jxc_ck`  (
  `ck_id` int(11) NOT NULL AUTO_INCREMENT,
  `ck_jc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ck_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '仓库名字',
  `ck_admin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '仓库管理员',
  `sort` int(1) NOT NULL COMMENT '排序',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ck_id`) USING BTREE,
  UNIQUE INDEX `ck_name`(`ck_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '仓库表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_ckd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_ckd`;
CREATE TABLE `72crm_jxc_ckgl_ckd`  (
  `ckd_id` int(11) NOT NULL AUTO_INCREMENT,
  `ckd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出库单号,规则遵守单号规则',
  `dydjlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应单据类型',
  `dydjid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应单据id',
  `dydjdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应单据单号',
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建日期',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入库状态  待出库 已出库',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `ckr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库人',
  `cksj` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  `mustck` int(1) NOT NULL DEFAULT 0 COMMENT '必须出库吗?  0:非必须  1 必须 ',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `cksm` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库说明',
  PRIMARY KEY (`ckd_id`) USING BTREE,
  UNIQUE INDEX `ckd_dh`(`ckd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_ckdb
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_ckdb`;
CREATE TABLE `72crm_jxc_ckgl_ckdb`  (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `dbdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单号,规则遵守单号规则',
  `dcck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '调出仓库',
  `drck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '调入仓库',
  `kdr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单人',
  `kdrq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单日期',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sfycrk` int(1) NOT NULL DEFAULT 0 COMMENT '0否 1是',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单',
  `sm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `fhfs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货方式',
  `fylb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fhdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货单号',
  `fhje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货金额',
  `cyfmc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承运方民称',
  `cyfdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承运方电话',
  PRIMARY KEY (`dbid`) USING BTREE,
  UNIQUE INDEX `dbdh`(`dbdh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '仓库调拨单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_ckdbmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_ckdbmx`;
CREATE TABLE `72crm_jxc_ckgl_ckdbmx`  (
  `dbmxid` int(11) NOT NULL AUTO_INCREMENT,
  `dbid` int(11) NOT NULL COMMENT '单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数量',
  `before_quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`dbmxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调拨单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_ckdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_ckdmx`;
CREATE TABLE `72crm_jxc_ckgl_ckdmx`  (
  `ckdmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `ckd_id` int(11) NOT NULL COMMENT '出库单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`ckdmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_cpjc
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_cpjc`;
CREATE TABLE `72crm_jxc_ckgl_cpjc`  (
  `jcid` int(11) NOT NULL AUTO_INCREMENT,
  `jcdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单号,规则遵守单号规则',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `jbr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经办人',
  `kdr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单人',
  `kdrq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单日期',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sfycrk` int(1) NOT NULL DEFAULT 0 COMMENT '0否 1是',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单',
  `sm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`jcid`) USING BTREE,
  UNIQUE INDEX `jcdh`(`jcdh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品进仓单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_cpjcmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_cpjcmx`;
CREATE TABLE `72crm_jxc_ckgl_cpjcmx`  (
  `jcmxid` int(11) NOT NULL AUTO_INCREMENT,
  `jcid` int(11) NOT NULL COMMENT '单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`jcmxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '产品进仓单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_ll
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_ll`;
CREATE TABLE `72crm_jxc_ckgl_ll`  (
  `llid` int(11) NOT NULL AUTO_INCREMENT,
  `lldh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '领料单号,规则遵守单号规则',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `llr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '领料人',
  `kdr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单人',
  `kdrq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单日期',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sfycrk` int(1) NOT NULL DEFAULT 0 COMMENT '0否 1是',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单',
  `llrq` date NULL DEFAULT NULL COMMENT '领料日期',
  `xsdd_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应销售订单id',
  `xsdd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应销售订单单号',
  PRIMARY KEY (`llid`) USING BTREE,
  UNIQUE INDEX `lldh`(`lldh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '领料单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_llmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_llmx`;
CREATE TABLE `72crm_jxc_ckgl_llmx`  (
  `llmxid` int(11) NOT NULL AUTO_INCREMENT,
  `llid` int(11) NOT NULL COMMENT '领料单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `before_quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原数量',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`llmxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '领料单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_pdd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_pdd`;
CREATE TABLE `72crm_jxc_ckgl_pdd`  (
  `pdid` int(11) NOT NULL AUTO_INCREMENT,
  `pddh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单号,规则遵守单号规则',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `kdr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单人',
  `kdrq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单日期',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sfycrk` int(1) NOT NULL DEFAULT 0 COMMENT '0否 1是',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单',
  `sm` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `pdlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盘点类型',
  PRIMARY KEY (`pdid`) USING BTREE,
  UNIQUE INDEX `pddh`(`pddh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '盘点单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_pddmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_pddmx`;
CREATE TABLE `72crm_jxc_ckgl_pddmx`  (
  `pddmxid` int(11) NOT NULL AUTO_INCREMENT,
  `pddid` int(11) NOT NULL COMMENT '单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `kc_quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '库存数量',
  `actual_quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实际数量',
  `pdcz` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '盘点差值',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`pddmxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '盘点单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_rkd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_rkd`;
CREATE TABLE `72crm_jxc_ckgl_rkd`  (
  `rkd_id` int(11) NOT NULL AUTO_INCREMENT,
  `rkd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入库单号,规则遵守单号规则',
  `dydjlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应单据类型',
  `dydjid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应单据id',
  `dydjdh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应单据单号',
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人',
  `create_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建日期',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入库状态  待入库 已入库',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `rkr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库人',
  `rksj` datetime(0) NULL DEFAULT NULL COMMENT '入库时间',
  `mustrk` int(1) NOT NULL DEFAULT 0 COMMENT '必须入库吗?  0:非必须  1 必须 ',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `rksm` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库说明',
  PRIMARY KEY (`rkd_id`) USING BTREE,
  UNIQUE INDEX `rkd_dh`(`rkd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_rkdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_rkdmx`;
CREATE TABLE `72crm_jxc_ckgl_rkdmx`  (
  `rkdmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `rkd_id` int(11) NOT NULL COMMENT '入库单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`rkdmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_tl
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_tl`;
CREATE TABLE `72crm_jxc_ckgl_tl`  (
  `tlid` int(11) NOT NULL AUTO_INCREMENT,
  `tldh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '退料单号,规则遵守单号规则',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `tlr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退料人',
  `kdr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单人',
  `kdrq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开单日期',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sfycrk` int(1) NOT NULL DEFAULT 0 COMMENT '0否 1是',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单',
  `tlrq` date NULL DEFAULT NULL COMMENT '退料日期',
  PRIMARY KEY (`tlid`) USING BTREE,
  UNIQUE INDEX `tldh`(`tldh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退料单 主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_ckgl_tlmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_ckgl_tlmx`;
CREATE TABLE `72crm_jxc_ckgl_tlmx`  (
  `tlmxid` int(11) NOT NULL AUTO_INCREMENT,
  `tlid` int(11) NOT NULL COMMENT '领料单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `dj` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `je` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '金额',
  `zy` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ylzd1` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `ylzd2` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `ylzd3` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `ylzd4` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段4',
  `ylzd5` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段5',
  `ylzd6` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段6',
  `ylzd7` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段7',
  `ylzd8` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段8',
  `ylzd9` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段9',
  `ylzd10` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`tlmxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退料单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_dj_jwjl
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_dj_jwjl`;
CREATE TABLE `72crm_jxc_dj_jwjl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dj_module` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dj_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jwr` int(11) NOT NULL,
  `jwtime` datetime(0) NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_express
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_express`;
CREATE TABLE `72crm_jxc_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comp_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sf` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cs` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dz` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postcode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jyfw` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cjr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cjrq` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delflag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识 0未删除 1已删除',
  `deletezy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fddbr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wtdlr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_sgd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_sgd`;
CREATE TABLE `72crm_jxc_sgd`  (
  `sgd_id` int(11) NOT NULL AUTO_INCREMENT,
  `sgd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单号,规则遵守单号规则',
  `xsdd_id` int(11) NULL DEFAULT NULL COMMENT '对应的销售订单',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '对应的客户id',
  `contact_id` int(11) NULL DEFAULT NULL COMMENT '对应的联系人id',
  `dwtt` int(11) NULL DEFAULT NULL COMMENT '单位抬头',
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_date` date NOT NULL COMMENT '创建日期',
  `status` int(1) NULL DEFAULT -1 COMMENT '状态。-1、未提交；0、未审核；1、审核通过  2、审核不通过',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sqr` int(11) NULL DEFAULT NULL COMMENT '申请人',
  `sqrq` date NULL DEFAULT NULL COMMENT '申请日期',
  `sqyy` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '申请原因',
  `cgr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购人，逗号分隔',
  `cgqx` date NULL DEFAULT NULL COMMENT '采购期限',
  `sgzje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '申购总金额',
  `rlzje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '认领总金额',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '删除标识，0未删除 1已删除',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除职员ID',
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `sgdlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '销售订单申购单',
  `ck` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isadmin_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否为管理员删除',
  PRIMARY KEY (`sgd_id`) USING BTREE,
  INDEX `sgd_dh`(`sgd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申购单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_sgd_costinfo
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_sgd_costinfo`;
CREATE TABLE `72crm_jxc_sgd_costinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申购单成本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_sgd_costinfo_history
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_sgd_costinfo_history`;
CREATE TABLE `72crm_jxc_sgd_costinfo_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申购单成本信息 历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_sgd_costinfo_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_sgd_costinfo_operhistory`;
CREATE TABLE `72crm_jxc_sgd_costinfo_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '客户id',
  `operator` int(11) NOT NULL COMMENT '操作用户ID',
  `operate_time` datetime(0) NOT NULL COMMENT '操作时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作记录表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 509 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申购单 成本信息 操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_sgd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_sgd_file`;
CREATE TABLE `72crm_jxc_sgd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `sgd_id` int(11) NULL DEFAULT NULL COMMENT '申购单id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申购单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_sgdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_sgdmx`;
CREATE TABLE `72crm_jxc_sgdmx`  (
  `sgdmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `sgd_id` int(11) NOT NULL COMMENT '申购单id',
  `xsddmx_id` int(11) NULL DEFAULT NULL COMMENT '对应销售订单明细id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NULL DEFAULT NULL COMMENT '品名id',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `order_quantity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单数量',
  `sg_quantity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '申购数量',
  `zy` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `cpkg` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '产品重量',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识',
  `kcsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sxsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sgdmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '申购单 明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_cgwlgzxx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_cgwlgzxx`;
CREATE TABLE `72crm_jxc_wlgl_cgwlgzxx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gzr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟踪人',
  `gzsj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟踪时间',
  `gzjl` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟踪记录',
  `cgshid` int(20) NULL DEFAULT NULL COMMENT '采购收货单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '进销存——采购管理——物流跟踪信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_qtkdgl
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_qtkdgl`;
CREATE TABLE `72crm_jxc_wlgl_qtkdgl`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `wlgsid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `wlfy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流费用',
  `wldh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `wlgsdh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司电话',
  `bz` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `fhfs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货方式',
  `cjr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `cjrq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `delflag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除状态',
  `fylb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fkzh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款账号',
  `wl_yfk` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '已付款',
  `jjr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人',
  `sjr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `jjsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件时间',
  `shiy` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '其他快递管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_wlgsfk
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_wlgsfk`;
CREATE TABLE `72crm_jxc_wlgl_wlgsfk`  (
  `fkid` int(11) NOT NULL AUTO_INCREMENT COMMENT '付款ID',
  `fkdh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款单号',
  `wlgsid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司主键id',
  `fkfs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `fkje` double(20, 2) NULL DEFAULT 0.00 COMMENT '付款金额',
  `fylb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fkzh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款账户',
  `cjrq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `czy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作员',
  `bz` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `shr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  `shzt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态：0、未审核，1、已审核',
  `delflag` int(20) NULL DEFAULT 0 COMMENT '删除标识',
  `deletezy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人',
  `fklx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款类型',
  PRIMARY KEY (`fkid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流公司付款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_wlgsfkmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_wlgsfkmx`;
CREATE TABLE `72crm_jxc_wlgl_wlgsfkmx`  (
  `fkmxid` int(20) NOT NULL AUTO_INCREMENT COMMENT '付款明细id',
  `fkid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款id',
  `fkdh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款单号',
  `zje` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '每单总金额',
  `yfk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应付款',
  `wfk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '未付款',
  `bcfk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本次付款',
  `djid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据ID',
  `djbh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `djlx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据类型,eg cgrk xskd ckdb jxfp xxfp',
  `djrq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据日期',
  `delflag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除状态',
  `deletezy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人',
  `shr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `shsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核时间',
  `shzt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态：0、未审核，1、已审核',
  `fylb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类别',
  `fkzh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款账户',
  `fkfs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `wlgsid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司id',
  `cjrq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`fkmxid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流公司付款明细 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_wlqsxx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_wlqsxx`;
CREATE TABLE `72crm_jxc_wlgl_wlqsxx`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `xskdid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开单id',
  `lrry` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入人员',
  `lrsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入时间',
  `qsr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签收人',
  `qssj` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签收时间',
  `bzxx` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `qszt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '签收状态  0未签收 1已签收',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物流签收信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_wlqsxx_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_wlqsxx_file`;
CREATE TABLE `72crm_jxc_wlgl_wlqsxx_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `qs_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '签收id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客户附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_wlgl_xswlgzxx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_wlgl_xswlgzxx`;
CREATE TABLE `72crm_jxc_wlgl_xswlgzxx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gzr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟踪人',
  `gzsj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟踪时间',
  `gzjl` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟踪记录',
  `xskdid` int(20) NULL DEFAULT NULL COMMENT '销售开单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '进销存——销售管理——物流跟踪信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsdd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsdd`;
CREATE TABLE `72crm_jxc_xsdd`  (
  `xsdd_id` int(11) NOT NULL AUTO_INCREMENT,
  `xsdd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '销售单号,规则遵守单号规则',
  `xjd_id` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '从哪些询价单转过来的',
  `bjd_id` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '从哪些报价单转过来的',
  `customer_id` int(11) NOT NULL COMMENT '所属客户id',
  `contact_id` int(11) NOT NULL COMMENT '所属客户联系人id',
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dwtt` int(1) NOT NULL COMMENT '单位抬头',
  `creator` int(11) NOT NULL COMMENT '创建人',
  `create_date` date NOT NULL COMMENT '创建日期',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '否',
  `hq` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `fplx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '增值税发票' COMMENT '发票类型  增值税发票   普通发票  收据',
  `zje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总金额',
  `zdzk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '整单折扣',
  `zkh_zje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣后总金额',
  `cbzje` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成本总金额',
  `status` int(1) NULL DEFAULT -1 COMMENT '单据状态。',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `zzzx_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qzzxwb_reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pricelx` int(1) NOT NULL DEFAULT 2 COMMENT '单价类型。1、未税单价；2、含税单价',
  `typeofcontract` int(1) NOT NULL COMMENT '条款类型',
  `from` int(1) NOT NULL DEFAULT 1 COMMENT '来源  1系统   2官网',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `jhrq` date NULL DEFAULT NULL COMMENT '交货日期',
  `skqx` date NULL DEFAULT NULL COMMENT '收款期限',
  `shdz` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `ywy` int(11) NULL DEFAULT NULL COMMENT '业务员',
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ck` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓库',
  `ysk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '已收款',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除人员',
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `isadmin_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否是管理员删除 默认0否 1是',
  `xsddlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gdzt` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xsdd_id`) USING BTREE,
  UNIQUE INDEX `xsdd_dh`(`xsdd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 221 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsdd_costinfo
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsdd_costinfo`;
CREATE TABLE `72crm_jxc_xsdd_costinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单成本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsdd_costinfo_history
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsdd_costinfo_history`;
CREATE TABLE `72crm_jxc_xsdd_costinfo_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '单据明细id',
  `bjlx` int(1) NOT NULL DEFAULT 1 COMMENT '报价类型',
  `zwbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总外币成本',
  `zrmbcb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '总人民币成本',
  `gwyzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国外运杂费',
  `gjyf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国际运费',
  `wbbz` int(2) NULL DEFAULT NULL COMMENT '外币币种',
  `hl` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '汇率',
  `zzs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增值税',
  `hq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货期',
  `yhzzf` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行转账费',
  `wbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增外币信息',
  `bbinfo` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他新增本币信息',
  `wbcount` int(2) NULL DEFAULT NULL COMMENT '其他外币成本信息增加了几行',
  `bbcount` int(2) NULL DEFAULT NULL COMMENT '其他本币成本信息增加了几行',
  `wbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他外币成本信息总和',
  `bbsum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他本币成本信息总和',
  `creator` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_timestamp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间戳',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `quantity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weight` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '重量',
  `wbdj_zkq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣前',
  `zk` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `wbdj_zkh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外币单价折扣后',
  `gs` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关税',
  `rmbdj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '人民币单价',
  `gysid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 489 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单成本信息 历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsdd_costinfo_operhistory
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsdd_costinfo_operhistory`;
CREATE TABLE `72crm_jxc_xsdd_costinfo_operhistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `djmxid` int(11) NOT NULL COMMENT '客户id',
  `operator` int(11) NOT NULL COMMENT '操作用户ID',
  `operate_time` datetime(0) NOT NULL COMMENT '操作时间',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作记录表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 469 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单 成本信息 操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsdd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsdd_file`;
CREATE TABLE `72crm_jxc_xsdd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `xsdd_id` int(11) NULL DEFAULT NULL COMMENT '销售订单id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsdd_httk
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsdd_httk`;
CREATE TABLE `72crm_jxc_xsdd_httk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `xsddid` int(11) NULL DEFAULT NULL COMMENT '对应销售订单主键id',
  `htzt` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题',
  `htnr` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `px` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排序',
  `typeofcontact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '条款类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 611 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单合同条款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsddmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsddmx`;
CREATE TABLE `72crm_jxc_xsddmx`  (
  `xsddmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `xsdd_id` int(11) NOT NULL COMMENT '销售订单id',
  `xjdmx_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应询价单明细id',
  `bjdmx_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应报价单明细id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NULL DEFAULT NULL COMMENT '品名id',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `ysgsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `yxtsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `yfhsl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `wsdj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '未税单价',
  `product_sl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '产品税率',
  `hsdj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0.00' COMMENT '含税单价',
  `sj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '税金',
  `hk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货款',
  `hj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '合计',
  `zy` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识 0未删除 1已删除',
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xsddmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xskd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xskd`;
CREATE TABLE `72crm_jxc_xskd`  (
  `xskd_id` int(11) NOT NULL AUTO_INCREMENT,
  `xskd_dh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '销售开单单号,规则遵守单号规则',
  `xsdd_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '销售订单id',
  `customer_id` int(11) NOT NULL COMMENT '所属客户id',
  `contact_id` int(11) NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shdz` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ck` int(11) NOT NULL COMMENT '仓库ID',
  `fplx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '增值税发票' COMMENT '发票类型 1增值税  2普通 3收据',
  `hj` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '合计',
  `zje` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `zdzk` double(20, 2) NULL DEFAULT NULL,
  `zkh_zje` double(20, 2) NULL DEFAULT NULL,
  `creator` int(11) NOT NULL COMMENT '创建人',
  `sfbd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否补单  0否,创建日期为当天日期   1是，创建日期可选',
  `create_date` date NOT NULL COMMENT '创建日期',
  `ywy` int(11) NULL DEFAULT NULL COMMENT '务业员',
  `status` int(1) NULL DEFAULT -1 COMMENT '状态。-1、未提交；1、未审核；2、审核通过  3、审核不通过    4、已发货  ',
  `nopass_reason` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核不通过原因',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `shsj` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `shr` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `bcrlk` double(20, 2) NULL DEFAULT 0.00 COMMENT '本次认领款',
  `fhfs` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cyfmc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承运方名称',
  `cyfdh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承运方电话',
  `fhfy` double(20, 2) NULL DEFAULT NULL COMMENT '发货费用',
  `fylb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fhdh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货单号',
  `dwtt` int(1) NOT NULL COMMENT '单位抬头',
  `pricelx` int(1) NOT NULL DEFAULT 2 COMMENT '单价类型。1、未税单价；2、含税单价',
  `fp_status` int(1) NOT NULL DEFAULT 1 COMMENT '发票状态：1、票未开  ；2、票已开    3票作废',
  `delflag` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识，0未删除 1已删除',
  `deletezy` int(11) NULL DEFAULT NULL COMMENT '删除职员ID',
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `idadmin_delete` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否是管理员删除 1是 0否',
  `jhrq` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `skqx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kdlx` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xsddyjk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xsddsyqk` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fhrq` datetime(0) NULL DEFAULT NULL,
  `sjcksj` datetime(0) NULL DEFAULT NULL COMMENT '实际出库日期',
  `fhsm` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货说明',
  `fhr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkzh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xskd_id`) USING BTREE,
  UNIQUE INDEX `xskd_dh`(`xskd_dh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售开单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xskd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xskd_file`;
CREATE TABLE `72crm_jxc_xskd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `xskd_id` int(11) NULL DEFAULT NULL COMMENT '销售订单id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售开单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xskdmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xskdmx`;
CREATE TABLE `72crm_jxc_xskdmx`  (
  `xskdmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `xskd_id` int(11) NOT NULL COMMENT '销售开单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `brand_id` int(11) NOT NULL COMMENT '产品品牌id',
  `commname_id` int(11) NOT NULL COMMENT '品名id',
  `measure_unitid` int(11) NOT NULL COMMENT '计量单位',
  `quantity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品数量',
  `wsdj` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '未税单价',
  `product_sl` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '产品税率',
  `hsdj` double(20, 2) NOT NULL DEFAULT 0.00 COMMENT '含税单价',
  `sj` double(20, 2) NULL DEFAULT NULL COMMENT '税金',
  `hk` double(20, 2) NULL DEFAULT NULL COMMENT '货款',
  `hj` double(20, 2) NULL DEFAULT NULL COMMENT '合计',
  `zy` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `xsddmx_id` int(11) NULL DEFAULT NULL COMMENT '销售订单明细id',
  `delfalg` int(1) NOT NULL DEFAULT 0 COMMENT '删除标识',
  `ylzd1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xskdmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售开单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsyd
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsyd`;
CREATE TABLE `72crm_jxc_xsyd`  (
  `xsyd_id` int(11) NOT NULL AUTO_INCREMENT,
  `xsyd_dh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xskd_id` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xsdd_id` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  `remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ck` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thrq` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfbd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dwtt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thfs` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thfkfs` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thzh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ywy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gxr` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thzje` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shsj` datetime(0) NULL DEFAULT NULL,
  `shr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nopass_reason` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `precelx` int(1) NULL DEFAULT 2 COMMENT '1未税  2含税',
  `from` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '系统',
  `delflag` int(1) NULL DEFAULT 0 COMMENT '1已删除  0未删除',
  `deletezy` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_date` datetime(0) NULL DEFAULT NULL,
  `idadmin_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否是管理元删除 0否 1是',
  `last_edittime` datetime(0) NULL DEFAULT NULL,
  `sjrksj` datetime(0) NULL DEFAULT NULL COMMENT '实际入库时间',
  `rkr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rksm` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xsyd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsyd_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsyd_file`;
CREATE TABLE `72crm_jxc_xsyd_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `xsyd_id` int(11) NULL DEFAULT NULL COMMENT '销售异动id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '销售订单附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_jxc_xsydmx
-- ----------------------------
DROP TABLE IF EXISTS `72crm_jxc_xsydmx`;
CREATE TABLE `72crm_jxc_xsydmx`  (
  `xsydmx_id` int(11) NOT NULL AUTO_INCREMENT,
  `xsyd_id` int(11) NOT NULL,
  `xskdmx_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `th_quantity` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kd_quantity` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ss_quantity` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实收数量',
  `measure_unitid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wsdj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hsdj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_sl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cbj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hk` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hj` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zy` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delflag` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `ylzd1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd3` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd4` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd5` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd6` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd7` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd8` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd9` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ylzd10` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xsydmx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_notice_message
-- ----------------------------
DROP TABLE IF EXISTS `72crm_notice_message`;
CREATE TABLE `72crm_notice_message`  (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user` int(11) NOT NULL COMMENT '被提醒人',
  `from_user` int(11) NOT NULL COMMENT '来源人',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息类型',
  `module` int(1) NOT NULL COMMENT '归属模块',
  `notice_time` datetime(0) NOT NULL COMMENT '提醒时间',
  `content` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息内容',
  `read` int(1) NOT NULL DEFAULT 0 COMMENT '是否已读，默认未读   0未读  1已读',
  `dyid` int(11) NULL DEFAULT NULL COMMENT '对应实体OR单据ID',
  `is_costnotice` int(1) NOT NULL DEFAULT 0 COMMENT '是成本修改提醒吗?0 否  1是',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5810 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息提醒表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_oa_download
-- ----------------------------
DROP TABLE IF EXISTS `72crm_oa_download`;
CREATE TABLE `72crm_oa_download`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `group` int(1) NOT NULL DEFAULT 1 COMMENT '分组 1 OA  2销售 3采购  4财务',
  `qxlx` int(1) NULL DEFAULT 0 COMMENT '0 全体人员  1指定类型',
  `gxry` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxbm` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gxjs` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '常用下载表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_oa_report
-- ----------------------------
DROP TABLE IF EXISTS `72crm_oa_report`;
CREATE TABLE `72crm_oa_report`  (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '汇报名称',
  `report_content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '汇报内容',
  `report_date` date NOT NULL COMMENT '汇报时间',
  `user_to` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '汇报给谁,提交至：多个用户逗号分开',
  `user_from` int(11) NULL DEFAULT NULL COMMENT '谁汇报的',
  `user_cjr` int(11) NOT NULL COMMENT '创建人',
  `pj` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT ' 领导对汇报的评价',
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '工作汇报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_oa_report_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_oa_report_file`;
CREATE TABLE `72crm_oa_report_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `report_id` int(11) NULL DEFAULT NULL COMMENT '汇报id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '工作汇报附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_oa_task
-- ----------------------------
DROP TABLE IF EXISTS `72crm_oa_task`;
CREATE TABLE `72crm_oa_task`  (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `task_content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务内容',
  `standard` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '完成标准',
  `degree` int(1) NOT NULL DEFAULT 1 COMMENT '任务级别  1一般 2紧急',
  `user_fzr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务负责人',
  `user_gzr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务告知人',
  `user_zxr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务执行人',
  `user_cjr` int(11) NOT NULL COMMENT '任务创建人',
  `start` date NOT NULL COMMENT '任务开始时间',
  `end` date NOT NULL COMMENT '任务结束时间',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT ' 任务执行情况 1暂未执行 2正在执行 3延误 4已完成',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 72crm_oa_task_file
-- ----------------------------
DROP TABLE IF EXISTS `72crm_oa_task_file`;
CREATE TABLE `72crm_oa_task_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件名称',
  `size` int(10) NOT NULL COMMENT '附件大小（字节）',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件真实路径',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件路径',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'file' COMMENT '文件类型',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for batchInsert
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert`;
delimiter ;;
CREATE PROCEDURE `batchInsert`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,1,1,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert1
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert1`;
delimiter ;;
CREATE PROCEDURE `batchInsert1`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,1,1,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert10
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert10`;
delimiter ;;
CREATE PROCEDURE `batchInsert10`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),1,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert11
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert11`;
delimiter ;;
CREATE PROCEDURE `batchInsert11`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),1+rand()*500,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert12
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert12`;
delimiter ;;
CREATE PROCEDURE `batchInsert12`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),MD5(RAND()),1,5,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert13
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert13`;
delimiter ;;
CREATE PROCEDURE `batchInsert13`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),(MD5(RAND()),1,5),1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert14
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert14`;
delimiter ;;
CREATE PROCEDURE `batchInsert14`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),substring(MD5(RAND()),1,5),1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert15
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert15`;
delimiter ;;
CREATE PROCEDURE `batchInsert15`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),substring(MD5(RAND()),1,5),1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert16
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert16`;
delimiter ;;
CREATE PROCEDURE `batchInsert16`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator,comname_id,create_date,last_edittime) VALUES(null,ROUND(RAND() * 40 + 51),substring(MD5(RAND()),1,5),1,3,ROUND(RAND() * 25 + 30),2020-08-28,2020-08-28);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert17
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert17`;
delimiter ;;
CREATE PROCEDURE `batchInsert17`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator,comname_id,create_date,last_edittime) VALUES(null,ROUND(RAND() * 40 + 51),substring(MD5(RAND()),1,5),1,3,ROUND(RAND() * 25 + 30),'2020-08-28','2020-08-28');
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert18
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert18`;
delimiter ;;
CREATE PROCEDURE `batchInsert18`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator,comname_id,create_date,last_edittime,gys) VALUES(null,ROUND(RAND() * 40 + 51),substring(MD5(RAND()),1,5),1,3,ROUND(RAND() * 25 + 30),'2020-08-28','2020-08-28',ROUND(RAND() * 65 + 1));
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert19
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert19`;
delimiter ;;
CREATE PROCEDURE `batchInsert19`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator,comname_id,create_date,last_edittime,gys) VALUES(null,ROUND(RAND() * 40 + 51),substring(MD5(RAND()),1,5),1,3,ROUND(RAND() * 25 + 30),'2020-08-28','2020-08-28',ROUND(RAND() * 65 + 1));
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert2
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert2`;
delimiter ;;
CREATE PROCEDURE `batchInsert2`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),1,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert3
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert3`;
delimiter ;;
CREATE PROCEDURE `batchInsert3`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),getRandName(),('测试'+i),3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert4
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert4`;
delimiter ;;
CREATE PROCEDURE `batchInsert4`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),getRandName(),('测试'+i),3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert5
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert5`;
delimiter ;;
CREATE PROCEDURE `batchInsert5`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),('测试'+i),1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert6
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert6`;
delimiter ;;
CREATE PROCEDURE `batchInsert6`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),('测试')+i,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert7
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert7`;
delimiter ;;
CREATE PROCEDURE `batchInsert7`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),i,1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for batchInsert8
-- ----------------------------
DROP PROCEDURE IF EXISTS `batchInsert8`;
delimiter ;;
CREATE PROCEDURE `batchInsert8`(in args int)
BEGIN
declare i int default 1;
start TRANSACTION;
while i <= args DO
INSERT INTO 72crm_crm_product(product_id,brand_id,product_modelnum,measure_unitid,creator) VALUES(null,ROUND(RAND() * 40 + 51),i+'测试',1,3);
set i = i+1;
end while;
COMMIT;
end
;;
delimiter ;

-- ----------------------------
-- Function structure for rand_num
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_num`;
delimiter ;;
CREATE FUNCTION `rand_num`()
 RETURNS int(5)
BEGIN   
 DECLARE i INT DEFAULT 0;  
 SET i = FLOOR(100+RAND()*10);  
RETURN i;  
 END
;;
delimiter ;

-- ----------------------------
-- Function structure for rand_string
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_string`;
delimiter ;;
CREATE FUNCTION `rand_string`(n int)
 RETURNS varchar(255) CHARSET gbk
begin
declare chars_str varchar(52) default 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
declare return_str varchar(255) default '';
declare i int default 0;
while i<n do
set return_str=concat(return_str,substring(chars_str,floor(1+rand()*52),1));
set i=i+1;
end while;
return return_str;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
