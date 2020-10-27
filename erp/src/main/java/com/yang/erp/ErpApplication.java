package com.yang.erp;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 启动类
 * @author caoshenyang
 */
@RequestMapping
@SpringBootApplication
@MapperScan(basePackages = "com.yang.erp")
public class ErpApplication {

    public static void main(String[] args) {
        SpringApplication.run(ErpApplication.class, args);
    }

    @GetMapping("/")
    public String index(){
        return "redirect:http://localhost:8080/erp/swagger-ui.html";
    }
}
