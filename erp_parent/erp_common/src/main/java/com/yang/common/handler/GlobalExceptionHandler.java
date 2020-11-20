package com.yang.common.handler;

import com.yang.common.entity.Result;
import com.yang.common.exception.ErpException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Description: 全局异常处理
 * @author: caoshenyang
 * @date: 2020.11.20
 */
@ControllerAdvice
@Slf4j
public class GlobalExceptionHandler {
    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public Result error(HttpServletRequest request, HttpServletResponse response, Exception e) throws IOException {
        e.printStackTrace();
        log.error(e.getMessage());
        if (e.getClass() == ErpException.class) {
            ErpException ce = (ErpException) e;
            return new Result(ce.getCode());
        } else {
            return Result.ERROR();
        }
    }
}
