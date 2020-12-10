package com.yang.system.entity;

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
 * 用户表
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("sys_user")
@ApiModel(value = "User对象", description = "用户表")
public class User extends Model<User> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "ID")
    @TableId(value = "id", type = IdType.ID_WORKER_STR)
    private String id;

    @ApiModelProperty(value = "手机号码")
    private String mobile;

    @ApiModelProperty(value = "用户名称")
    private String username;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "头像")
    private String avatar;

    @ApiModelProperty(value = "启用状态 0是禁用，1是启用")
    private Integer enableState;

    @ApiModelProperty(value = "部门ID")
    private String departmentId;

    @ApiModelProperty(value = "入职时间", example = "2020-10-30 11:53:03")
    private Date timeOfEntry;

    @ApiModelProperty(value = "聘用形式")
    private Integer formOfEmployment;

    @ApiModelProperty(value = "工号")
    private String workNumber;

    @ApiModelProperty(value = "管理形式")
    private String formOfManagement;

    @ApiModelProperty(value = "工作城市")
    private String workingCity;

    @ApiModelProperty(value = "转正时间", example = "2020-10-30 11:53:03")
    private Date correctionTime;

    @ApiModelProperty(value = "在职状态 1.在职 2.离职")
    private Integer inServiceStatus;

    @ApiModelProperty(value = "企业ID")
    private String companyId;

    @ApiModelProperty(value = "企业名称")
    private String companyName;

    @ApiModelProperty(value = "部门名称")
    private String departmentName;

    @ApiModelProperty(value = "创建时间", example = "2020-10-30 11:53:03")
    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;

    @ApiModelProperty(value = "更新时间", example = "2020-10-30 11:53:03")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date gmtModified;

    @ApiModelProperty(value = "逻辑删除 1（true）已删除， 0（false）未删除")
    @TableLogic
    private Boolean isDeleted;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
