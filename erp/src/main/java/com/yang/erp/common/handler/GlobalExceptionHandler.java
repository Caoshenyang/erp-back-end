package com.yang.erp.common.handler;

import com.yang.erp.common.exception.ErpException;
import com.yang.erp.common.utils.R;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 统一异常处理类
 *
 * @author caoshenyang
 */
@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public R error(Exception e) {
        e.printStackTrace();
        return R.error();

    }

    @ExceptionHandler(ArithmeticException.class)
    @ResponseBody
    public R error(ArithmeticException e) {
        e.printStackTrace();
        return R.error().message("自定义异常");

    }

    @ExceptionHandler(ErpException.class)
    @ResponseBody
    public R error(ErpException e) {
        e.printStackTrace();
        return R.error().message(e.getMsg()).code(e.getCode());

    }
}
