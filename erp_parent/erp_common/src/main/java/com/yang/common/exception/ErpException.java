package com.yang.common.exception;

import com.yang.common.entity.ResultCode;
import lombok.Data;

/**
 * @Description: 自定义异常
 * @author: caoshenyang
 * @date: 2020.11.20
 */
@Data
public class ErpException extends RuntimeException {

    private static final long serialVersionUID = 1L;
    private ResultCode code = ResultCode.SERVER_ERROR;

    public ErpException() {
    }

    public ErpException(ResultCode resultCode) {
        super(resultCode.message());
        this.code = resultCode;
    }
}
