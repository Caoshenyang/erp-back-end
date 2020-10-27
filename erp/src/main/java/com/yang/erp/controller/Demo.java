package com.yang.erp.controller;

import com.yang.erp.common.exception.ErpException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Demo {

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    public int hello(){
        int a = 0;
        try {
            a = 1/0;
        } catch (ErpException e) {
          throw new ErpException(50000,e.getMsg());
        }
        return a;
    }

}
