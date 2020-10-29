package com.yang.erp.module.crm.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.erp.module.crm.entity.Customer;
import com.baomidou.mybatisplus.extension.service.IService;
import com.yang.erp.module.crm.query.CustomerQuery;

/**
 * <p>
 * 客户表 服务类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-10-29
 */
public interface CustomerService extends IService<Customer> {

    /**
     * 客户分页查询
     * @param pageParam 查询条件
     * @param customerQuery 查询对象
     */
    void pageQuery(Page<Customer> pageParam, CustomerQuery customerQuery);
}
