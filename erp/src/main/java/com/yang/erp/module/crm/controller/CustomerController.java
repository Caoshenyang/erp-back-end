package com.yang.erp.module.crm.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.erp.common.utils.R;
import com.yang.erp.module.crm.entity.Customer;
import com.yang.erp.module.crm.service.CustomerService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 客户表 前端控制器
 * </p>
 *
 * @author caoshenyang
 * @since 2020-10-29
 */
@RestController
@RequestMapping("/crm/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerServiceImpl;

    @ApiOperation(value = "分页客户列表")
    @GetMapping("{page}/{limit}")
    public R pageList(
            @ApiParam(name = "page", value = "当前页码", required = true)
            @PathVariable Long page,
            @ApiParam(name = "limit", value = "每页记录数", required = true)
            @PathVariable Long limit) {
        Page<Customer> pageParam = new Page<>(page, limit);
        customerServiceImpl.pageQuery(pageParam, null);
        List<Customer> records = pageParam.getRecords();
        long total = pageParam.getTotal();
        return R.ok().data("total", total).data("rows", records);
    }
}

