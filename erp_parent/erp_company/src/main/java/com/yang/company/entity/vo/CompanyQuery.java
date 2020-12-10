package com.yang.company.entity.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Description: 公司查询对象
 * @author: caoshenyang
 * @date: 2020.11.23
 */
@Data
public class CompanyQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "公司名称")
    private String name;

    @ApiModelProperty(value = "企业登录账号ID")
    private String managerId;

    @ApiModelProperty(value = "查询开始时间")
    private String begin;

    @ApiModelProperty(value = "查询结束时间")
    private String end;

}
