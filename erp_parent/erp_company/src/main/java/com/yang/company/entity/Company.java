package com.yang.company.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.util.Date;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-20
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("co_company")
@ApiModel(value="Company对象", description="")
public class Company extends Model<Company> {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "ID")
    private String id;

    @ApiModelProperty(value = "公司名称")
    private String name;

    @ApiModelProperty(value = "企业登录账号ID")
    private String managerId;

    @ApiModelProperty(value = "当前版本")
    private String version;

    @ApiModelProperty(value = "续期时间")
    private Date renewalDate;

    @ApiModelProperty(value = "到期时间")
    private Date expirationDate;

    @ApiModelProperty(value = "公司地区")
    private String companyArea;

    @ApiModelProperty(value = "公司地址")
    private String companyAddress;

    @ApiModelProperty(value = "营业执照-图片ID")
    private String businessLicenseId;

    @ApiModelProperty(value = "法人代表")
    private String legalRepresentative;

    @ApiModelProperty(value = "公司电话")
    private String companyPhone;

    @ApiModelProperty(value = "邮箱")
    private String mailbox;

    @ApiModelProperty(value = "公司规模")
    private String companySize;

    @ApiModelProperty(value = "所属行业")
    private String industry;

    @ApiModelProperty(value = "备注")
    private String remarks;

    @ApiModelProperty(value = "审核状态")
    private String auditState;

    @ApiModelProperty(value = "状态")
    private Integer state;

    @ApiModelProperty(value = "当前余额")
    private Double balance;

    @ApiModelProperty(value = "创建时间",example = "2020-10-30 11:53:03")
    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;

    @ApiModelProperty(value = "更新时间",example = "2020-10-30 11:53:03")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date gmtModified;

    @ApiModelProperty(value = "逻辑删除 1（true）已删除， 0（false）未删除")
    @TableLogic
    private Boolean isDeleted;

    @Override
    protected Serializable pkVal() {
        return null;
    }

}
