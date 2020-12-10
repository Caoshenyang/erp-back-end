package com.yang.system.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.common.entity.PageResult;
import com.yang.common.entity.Result;
import com.yang.common.entity.ResultCode;
import com.yang.system.entity.User;
import com.yang.system.entity.vo.UserQuery;
import com.yang.system.service.UserService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-26
 */
@RestController
@RequestMapping("/system/user")
public class UserController {

    @Autowired
    private UserService userServiceImpl;

    @ApiOperation(value = "用户分页查询")
    @PostMapping(value = "pageUserCondition/{page}/{limit}")
    public Result pageUserCondition(
            @ApiParam(name = "page", value = "当前页", required = true)
            @PathVariable Long page,
            @ApiParam(name = "limit", value = "每页显示几条", required = true)
            @PathVariable Long limit,
            @ApiParam(name = "userQuery", value = "查询条件对象", required = false)
            @RequestBody(required = false)
                    UserQuery userQuery) {
        Page<User> pageParam = new Page<>(page, limit);
        userServiceImpl.pageQuery(pageParam, userQuery);
        List<User> records = pageParam.getRecords();
        long total = pageParam.getTotal();
        return new Result(ResultCode.SUCCESS, new PageResult<User>(total, records));
    }

    @ApiOperation(value = "根据用户Id查询用户信息")
    @GetMapping("getUserInfoById/{id}")
    public Result getUser(
            @ApiParam(name = "id", value = "用户对象id", required = true)
            @PathVariable String id) {
        User user = userServiceImpl.getById(id);
        return new Result(ResultCode.SUCCESS, user);
    }

    @ApiOperation(value = "新增用户")
    @PostMapping("addUser")
    public Result pageListUser(
            @ApiParam(name = "User", value = "用户对象", required = true)
            @RequestBody User user) {
        boolean save = userServiceImpl.save(user);
        return save ? Result.SUCCESS() : Result.ERROR();
    }

    @ApiOperation(value = "修改用户")
    @PutMapping("updateUser")
    public Result updateUser(
            @ApiParam(name = "User", value = "用户对象", required = true)
            @RequestBody User User) {
        boolean b = userServiceImpl.updateById(User);
        return b ? Result.SUCCESS() : Result.ERROR();
    }

    @ApiOperation(value = "逻辑删除用户")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public Result removeUser(
            @ApiParam(name = "id", value = "用户Id", required = true)
            @PathVariable String id) {
        boolean b = userServiceImpl.removeById(id);
        return b ? Result.SUCCESS() : Result.ERROR();
    }


}

