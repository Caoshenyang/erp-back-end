package com.yang.erp.module.crm.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.erp.module.crm.entity.Customer;
import com.yang.erp.module.crm.mapper.CustomerMapper;
import com.yang.erp.module.crm.query.CustomerQuery;
import com.yang.erp.module.crm.service.CustomerService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * <p>
 * 客户表 服务实现类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-10-29
 */
@Service
public class CustomerServiceImpl extends ServiceImpl<CustomerMapper, Customer> implements CustomerService {

    @Override
    public void pageQuery(Page<Customer> pageParam, CustomerQuery customerQuery) {
        QueryWrapper<Customer> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("id");
        if (customerQuery == null) {
            baseMapper.selectPage(pageParam, queryWrapper);
            return;
        }
        String customerName = customerQuery.getCustomerName();
        Integer type = customerQuery.getType();
        String begin = customerQuery.getBegin();
        String end = customerQuery.getEnd();
        if (!StringUtils.isEmpty(customerName)) {
            queryWrapper.like("customer_name", customerName);
        }
        if (!StringUtils.isEmpty(type)) {
            queryWrapper.eq("type", type);
        }
        if (!StringUtils.isEmpty(begin)) {
            queryWrapper.ge("create_date", begin);
        }
        if (!StringUtils.isEmpty(end)) {
            queryWrapper.le("create_date", end);
        }
        baseMapper.selectPage(pageParam, queryWrapper);
    }
}
