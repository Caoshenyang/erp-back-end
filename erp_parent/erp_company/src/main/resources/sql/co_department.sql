CREATE TABLE `co_department` (
	`id` VARCHAR ( 40 ) NOT NULL,
	`company_id` VARCHAR ( 255 ) NOT NULL COMMENT '企业ID',
	`parent_id` VARCHAR ( 255 ) DEFAULT NULL COMMENT '父级部门ID',
	`name` VARCHAR ( 255 ) NOT NULL COMMENT '部门名称',
	`code` VARCHAR ( 255 ) NOT NULL COMMENT '部门编码',
	`category` VARCHAR ( 255 ) DEFAULT NULL COMMENT '部门类别',
	`manager_id` VARCHAR ( 255 ) DEFAULT NULL COMMENT '负责人ID',
	`city` VARCHAR ( 255 ) DEFAULT NULL COMMENT '城市',
	`introduce` text COMMENT '介绍',
	`manager` VARCHAR ( 40 ) DEFAULT NULL COMMENT '部门负责人',
	`gmt_create` datetime NOT NULL COMMENT '创建时间',
	`gmt_modified` datetime NOT NULL COMMENT '更新时间',
	`is_deleted` TINYINT ( 1 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
PRIMARY KEY ( `id` )
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT='部门表';