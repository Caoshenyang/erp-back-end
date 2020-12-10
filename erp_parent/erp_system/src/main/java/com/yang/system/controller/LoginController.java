package com.yang.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.yang.common.entity.Result;
import com.yang.common.entity.ResultCode;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

/**
 * @Description: 登录
 * @author: caoshenyang
 * @date: 2020.11.26
 */
@RestController
@RequestMapping("/system")
@CrossOrigin
public class LoginController {

    @ApiOperation(value = "登录")
    @PostMapping("login")
    public Result login() {
        JSONObject resultJson = new JSONObject();
        resultJson.put("token","admin");
        return new Result(ResultCode.SUCCESS,resultJson);
    }

    @ApiOperation(value = "登录")
    @GetMapping("info")
    public Result info() {
        JSONObject resultJson = new JSONObject();
        resultJson.put("roles","[admin]");
        resultJson.put("name","admin");
        resultJson.put("avatar","https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        return new Result(ResultCode.SUCCESS,resultJson);
    }
}
