package com.yang.erp.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Demo {

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    public int hello(){
        return 1/0;
    }

}
