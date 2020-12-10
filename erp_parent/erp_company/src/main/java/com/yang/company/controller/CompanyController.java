package com.yang.company.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.common.entity.PageResult;
import com.yang.common.entity.Result;
import com.yang.common.entity.ResultCode;
import com.yang.company.entity.Company;
import com.yang.company.entity.vo.CompanyQuery;
import com.yang.company.service.CompanyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
@Api(description = "公司管理")
@RestController
@RequestMapping("/company/company")
@CrossOrigin
public class CompanyController {

    @Autowired
    private CompanyService companyService;

    @ApiOperation(value = "公司分页条件查询")
    @PostMapping(value = "pageCompanyCondition/{page}/{limit}")
    public Result pageCompanyCondition(
            @ApiParam(name = "page", value = "当前页", required = true)
            @PathVariable Long page,
            @ApiParam(name = "limit", value = "每页显示几条", required = true)
            @PathVariable Long limit,
            @ApiParam(name = "companyQuery", value = "查询条件对象", required = false)
            @RequestBody(required = false)
                    CompanyQuery companyQuery) {
        Page<Company> pageParam = new Page<>(page, limit);
        companyService.pageQuery(pageParam, companyQuery);
        List<Company> records = pageParam.getRecords();
        long total = pageParam.getTotal();
        return new Result(ResultCode.SUCCESS, new PageResult<Company>(total, records));
    }

    @ApiOperation(value = "根据公司Id查询")
    @GetMapping("getCompany/{id}")
    public Result getCompany(
            @ApiParam(name = "id", value = "公司对象id", required = true)
            @PathVariable String id) {
        Company Company = companyService.getById(id);
        return new Result(ResultCode.SUCCESS, Company);
    }

    @ApiOperation(value = "新增公司")
    @PostMapping("addCompany")
    public Result pageListCompany(
            @ApiParam(name = "Company", value = "公司对象", required = true)
            @RequestBody Company Company) {
        boolean save = companyService.save(Company);
        return save ? Result.SUCCESS() : Result.ERROR();
    }

    @ApiOperation(value = "逻辑删除公司")
    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public Result removeCompany(
            @ApiParam(name = "id", value = "公司Id", required = true)
            @PathVariable String id) {
        boolean b = companyService.removeById(id);
        return b ? Result.SUCCESS() : Result.ERROR();
    }

    @ApiOperation(value = "修改公司")
    @PutMapping("updateCompany")
    public Result updateCompany(
            @ApiParam(name = "Company", value = "公司对象", required = true)
            @RequestBody Company Company) {
        boolean b = companyService.updateById(Company);
        return b ? Result.SUCCESS() : Result.ERROR();
    }

}

