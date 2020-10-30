package com.yang.erp.module.crm.entity;


import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;

import java.util.Date;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 客户表
 * </p>
 *
 * @author caoshenyang
 * @since 2020-10-30
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("erp_customer")
@ApiModel(value = "Customer对象", description = "客户表")
public class Customer extends Model<Customer> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "客户ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "客户名称")
    private String customerName;

    @ApiModelProperty(value = "客户编码")
    private String customerCode;

    @ApiModelProperty(value = "客户类型，1一般客户   2重要客户   3潜在客户 4无效客户")
    private Integer type;

    @ApiModelProperty(value = "商务电话")
    private String businessTele;

    @ApiModelProperty(value = "传真")
    private String fax;

    @ApiModelProperty(value = "邮编")
    private String postcode;

    @ApiModelProperty(value = "EMAIL")
    private String email;

    @ApiModelProperty(value = "客户所在地")
    private String address;

    @ApiModelProperty(value = "客户描述")
    private String description;

    @ApiModelProperty(value = "客户来源,  1网络搜索  2客户介绍  3广告   4公司官网数据接入(官网接口)")
    private Integer customerFrom;

    @ApiModelProperty(value = "收货地址")
    private String deliveryAddress;

    @ApiModelProperty(value = "联系人")
    private Integer contactId;

    @ApiModelProperty(value = "创建人,外键参考用户表")
    private Integer creator;

    @ApiModelProperty(value = "审核状态")
    private Integer status;

    @ApiModelProperty(value = "删除状态  0未删除  1已删除(回收站中使用)")
    @TableLogic
    private Integer flag;

    @ApiModelProperty(value = "操作人员,外键参考用户表")
    private Integer operator;

    @ApiModelProperty(value = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;

    @ApiModelProperty(value = "最后修改时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date gmtModified;

    @ApiModelProperty(value = "返回至公共客户池时间")
    private Date backDate;

    @ApiModelProperty(value = "客户对应的业务员")
    private Integer salesman;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
