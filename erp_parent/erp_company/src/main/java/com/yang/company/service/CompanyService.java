package com.yang.company.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.company.entity.Company;
import com.baomidou.mybatisplus.extension.service.IService;
import com.yang.company.entity.vo.CompanyQuery;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
public interface CompanyService extends IService<Company> {

    /**
     * 公司分页条件查询
     * @param pageParam 查询条件
     * @param companyQuery 查询对象
     */
    void pageQuery(Page<Company> pageParam, CompanyQuery companyQuery);
}
