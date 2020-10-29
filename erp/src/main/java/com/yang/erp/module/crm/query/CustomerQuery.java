package com.yang.erp.module.crm.query;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 *  客户查询对象
 * </p>
 *
 * @author caoshenyang
 * @since 2020-10-29
 */
@Data
public class CustomerQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "客户名称,模糊查询")
    private String customerName;
    @ApiModelProperty(value = "客户类型，1一般客户   2重要客户   3潜在客户 4无效客户")
    private Integer type;
    @ApiModelProperty(value = "查询开始时间", example = "2019-01-01 10:10:10")
    private String begin;
    @ApiModelProperty(value = "查询结束时间", example = "2019-12-01 10:10:10")
    private String end;
}
