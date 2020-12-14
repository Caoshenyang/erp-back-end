package com.yang.company.entity.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Description: 部门查询对象
 * @author: caoshenyang
 * @date: 2020.12.09
 */
@Data
public class DepartmentQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "企业ID")
    private String companyId;

    @ApiModelProperty(value = "部门名称")
    private String name;

}