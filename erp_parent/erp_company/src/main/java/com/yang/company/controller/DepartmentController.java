package com.yang.company.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.common.entity.PageResult;
import com.yang.common.entity.Result;
import com.yang.common.entity.ResultCode;
import com.yang.company.entity.Department;
import com.yang.company.entity.vo.DepartmentQuery;
import com.yang.company.service.DepartmentService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
@RestController
@RequestMapping("/company/department")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @ApiOperation(value = "公司分页条件查询")
    @PostMapping(value = "pageDepartmentCondition/{page}/{limit}")
    public Result pageDepartmentCondition(
            @ApiParam(name = "page", value = "当前页", required = true)
            @PathVariable Long page,
            @ApiParam(name = "limit", value = "每页显示几条", required = true)
            @PathVariable Long limit,
            @ApiParam(name = "departmentQuery", value = "查询条件对象", required = false)
            @RequestBody(required = false)
                    DepartmentQuery departmentQuery) {
        Page<Department> pageParam = new Page<>();
        departmentService.pageQueryDepartment(pageParam, departmentQuery);
        List<Department> records = pageParam.getRecords();
        long total = pageParam.getTotal();
        return new Result(ResultCode.SUCCESS, new PageResult<Department>(total, records));
    }

}

