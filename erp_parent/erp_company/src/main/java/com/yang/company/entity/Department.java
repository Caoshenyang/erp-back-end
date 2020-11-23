package com.yang.company.entity;

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
 *   部门类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("co_department")
@ApiModel(value="Department对象", description="")
public class Department extends Model<Department> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.ID_WORKER_STR)
    private String id;

    @ApiModelProperty(value = "企业ID")
    private String companyId;

    @ApiModelProperty(value = "父级部门ID")
    private String parentId;

    @ApiModelProperty(value = "部门名称")
    private String name;

    @ApiModelProperty(value = "部门编码")
    private String code;

    @ApiModelProperty(value = "部门类别")
    private String category;

    @ApiModelProperty(value = "负责人ID")
    private String managerId;

    @ApiModelProperty(value = "城市")
    private String city;

    @ApiModelProperty(value = "介绍")
    private String introduce;

    @ApiModelProperty(value = "部门负责人")
    private String manager;

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
        return this.id;
    }

}
