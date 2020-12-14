package com.yang.company.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.common.entity.PageResult;
import com.yang.common.entity.Result;
import com.yang.common.entity.ResultCode;
import com.yang.company.entity.Company;
import com.yang.company.entity.Department;
import com.yang.company.entity.vo.DepartmentQuery;
import com.yang.company.service.DepartmentService;
import io.swagger.annotations.Api;
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
@Api(description = "部门管理")
@RestController
@RequestMapping("/company/department")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @ApiOperation(value = "部门分页条件查询")
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

    @ApiOperation(value = "根据部门Id查询")
    @GetMapping("getDepartment/{id}")
    public Result getDepartment(
            @ApiParam(name = "id", value = "部门对象id", required = true)
            @PathVariable String id) {
        Department department = departmentService.getById(id);
        return new Result(ResultCode.SUCCESS, department);
    }

    @ApiOperation(value = "新增公司")
    @PostMapping("addDepartment")
    public Result pageListCompany(
            @ApiParam(name = "Department", value = "部门对象", required = true)
            @RequestBody Department department) {
        boolean save = departmentService.save(department);
        return save ? Result.SUCCESS() : Result.ERROR();
    }

    @ApiOperation(value = "逻辑删除部门")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public Result removeDepartment(
            @ApiParam(name = "id", value = "公司Id", required = true)
            @PathVariable String id) {
        boolean b = departmentService.removeById(id);
        return b ? Result.SUCCESS() : Result.ERROR();
    }

    @ApiOperation(value = "修改公司")
    @PutMapping("updateDepartment")
    public Result updateCompany(
            @ApiParam(name = "Department", value = "部门对象", required = true)
            @RequestBody Department department) {
        boolean b = departmentService.updateById(department);
        return b ? Result.SUCCESS() : Result.ERROR();
    }

}

