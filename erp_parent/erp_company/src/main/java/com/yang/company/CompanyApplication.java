package com.yang.company;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @Description: 启动类
 * @author: caoshenyang
 * @date: 2020.11.20
 */
@SpringBootApplication
@MapperScan(basePackages = "com.yang")
@ComponentScan(basePackages = "com.yang")
public class CompanyApplication {

    public static void main(String[] args) {
        SpringApplication.run(CompanyApplication.class, args);
    }

}
