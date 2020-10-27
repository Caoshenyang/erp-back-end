package com.yang.erp.common.exception;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author caoshenyang
 */

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ErpException extends RuntimeException {

    @ApiModelProperty(value = "状态码")
    private Integer code;

    private String msg;


}
