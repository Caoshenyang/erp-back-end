-- 系统用户表
CREATE TABLE `sys_user` (
	`id` VARCHAR ( 40 ) NOT NULL COMMENT 'ID',
	`mobile` VARCHAR ( 40 ) NOT NULL COMMENT '手机号码',
	`username` VARCHAR ( 255 ) NOT NULL COMMENT '用户名称',
	`password` VARCHAR ( 255 ) DEFAULT NULL COMMENT '密码',
	`avatar` VARCHAR ( 255 ) DEFAULT NULL COMMENT '头像',
	`enable_state` INT ( 2 ) DEFAULT '1' COMMENT '启用状态 0是禁用，1是启用',
	`department_id` VARCHAR ( 40 ) DEFAULT NULL COMMENT '部门ID',
	`time_of_entry` datetime DEFAULT NULL COMMENT '入职时间',
	`form_of_employment` INT ( 1 ) DEFAULT NULL COMMENT '聘用形式',
	`work_number` VARCHAR ( 20 ) DEFAULT NULL COMMENT '工号',
	`form_of_management` VARCHAR ( 8 ) DEFAULT NULL COMMENT '管理形式',
	`working_city` VARCHAR ( 16 ) DEFAULT NULL COMMENT '工作城市',
	`correction_time` datetime DEFAULT NULL COMMENT '转正时间',
	`in_service_status` INT ( 1 ) DEFAULT NULL COMMENT '在职状态 1.在职 2.离职',
	`company_id` VARCHAR ( 40 ) DEFAULT NULL COMMENT '企业ID',
	`company_name` VARCHAR ( 40 ) DEFAULT NULL COMMENT '企业名称',
	`department_name` VARCHAR ( 40 ) DEFAULT NULL COMMENT '部门名称',
	`gmt_create` datetime NOT NULL COMMENT '创建时间',
	`gmt_modified` datetime NOT NULL COMMENT '更新时间',
	`is_deleted` TINYINT ( 1 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
	PRIMARY KEY ( `id` ),
UNIQUE KEY `idx_user_phone` ( `mobile` ) USING BTREE
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT='用户表';

-- 角色表
CREATE TABLE `sys_role` (
	`id` VARCHAR ( 40 ) NOT NULL COMMENT '角色id',
	`role_name` VARCHAR ( 20 ) NOT NULL COMMENT '角色名称',
	`role_code` VARCHAR ( 20 ) DEFAULT NULL COMMENT '角色编码',
	`remark` VARCHAR ( 255 ) DEFAULT NULL COMMENT '备注',
	`is_deleted` TINYINT ( 1 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
	`gmt_create` datetime NOT NULL COMMENT '创建时间',
	`gmt_modified` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY ( `id` )
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '角色表';

-- 权限表
CREATE TABLE `sys_permission` (
	`id` VARCHAR ( 40 ) NOT NULL COMMENT '编号',
	`pid` VARCHAR ( 40 ) NOT NULL COMMENT '所属上级',
	`name` VARCHAR ( 20 ) NOT NULL COMMENT '名称',
	`type` TINYINT ( 3 ) NOT NULL DEFAULT '0' COMMENT '类型(1:菜单,2:按钮)',
	`permission_value` VARCHAR ( 50 ) DEFAULT NULL COMMENT '权限值',
	`path` VARCHAR ( 100 ) DEFAULT NULL COMMENT '访问路径',
	`component` VARCHAR ( 100 ) DEFAULT NULL COMMENT '组件路径',
	`icon` VARCHAR ( 50 ) DEFAULT NULL COMMENT '图标',
	`status` TINYINT ( 4 ) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
	`is_deleted` TINYINT ( 1 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
	`gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT NULL COMMENT '更新时间',
	PRIMARY KEY ( `id` ),
KEY `idx_pid` ( `pid` )
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '权限表';

-- 角色权限表
CREATE TABLE `sys_role_permission` (
	`id` VARCHAR ( 40 ) NOT NULL DEFAULT '',
	`role_id` VARCHAR ( 40 ) NOT NULL DEFAULT '',
	`permission_id` VARCHAR ( 40 ) NOT NULL DEFAULT '',
	`is_deleted` TINYINT ( 1 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
	`gmt_create` datetime NOT NULL COMMENT '创建时间',
	`gmt_modified` datetime NOT NULL COMMENT '更新时间',
	PRIMARY KEY ( `id` ),
	KEY `idx_role_id` ( `role_id` ),
	KEY `idx_permission_id` ( `permission_id` )
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '角色权限';

-- 用户角色表
CREATE TABLE `sys_user_role` (
	`id` VARCHAR ( 40 ) NOT NULL COMMENT '主键id',
	`role_id` VARCHAR ( 40 ) NOT NULL COMMENT '角色id',
	`user_id` VARCHAR ( 40 ) NOT NULL DEFAULT '0' COMMENT '用户id',
	`is_deleted` TINYINT ( 1 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
	`gmt_create` datetime NOT NULL COMMENT '创建时间',
	`gmt_modified` datetime NOT NULL COMMENT '更新时间',
	PRIMARY KEY ( `id` ),
	KEY `idx_role_id` ( `role_id` ),
KEY `idx_user_id` ( `user_id` )
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT '用户角色表';