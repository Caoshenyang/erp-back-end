-- 客户表
CREATE TABLE `erp_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `customer_code` varchar(255) DEFAULT NULL COMMENT '客户编码',
  `type` int(1) DEFAULT '1' COMMENT '客户类型，1一般客户   2重要客户   3潜在客户 4无效客户',
  `business_tele` varchar(50) DEFAULT NULL COMMENT '商务电话',
  `fax` varchar(50) DEFAULT NULL COMMENT '传真',
  `postcode` varchar(50) DEFAULT NULL COMMENT '邮编',
  `email` varchar(300) DEFAULT NULL COMMENT 'EMAIL',
  `address` varchar(200) DEFAULT NULL COMMENT '客户所在地',
  `description` varchar(8000) DEFAULT NULL COMMENT '客户描述',
  `customer_from` int(1) DEFAULT '1' COMMENT '客户来源,  1网络搜索  2客户介绍  3广告   4公司官网数据接入(官网接口)',
  `delivery_address` varchar(400) DEFAULT NULL COMMENT '收货地址',
  `contact_id` int(11) DEFAULT NULL COMMENT '联系人',
  `creator` int(11) DEFAULT NULL COMMENT '创建人,外键参考用户表',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT '1' COMMENT '审核状态',
  `flag` int(1) DEFAULT '0' COMMENT '删除状态  0未删除  1已删除(回收站中使用)',
  `operator` int(11) DEFAULT NULL COMMENT '操作人员,外键参考用户表',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `back_date` timestamp NULL DEFAULT NULL COMMENT '返回至公共客户池时间',
  `salesman` int(11) NOT NULL COMMENT '客户对应的业务员',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客户表';