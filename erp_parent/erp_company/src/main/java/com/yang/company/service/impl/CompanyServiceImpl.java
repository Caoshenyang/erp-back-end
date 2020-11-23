package com.yang.company.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.company.entity.Company;
import com.yang.company.entity.vo.CompanyQuery;
import com.yang.company.mapper.CompanyMapper;
import com.yang.company.service.CompanyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
@Service
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {

    @Override
    public void pageQuery(Page<Company> pageParam, CompanyQuery companyQuery) {
        //构建条件
        String name = companyQuery.getName();
        String managerId = companyQuery.getManagerId();
        String begin = companyQuery.getBegin();
        String end = companyQuery.getEnd();
        QueryWrapper<Company> wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("gmt_create");
        if (!StringUtils.isEmpty(name)) {
            wrapper.like("name", name);
        }
        if (!StringUtils.isEmpty(managerId)) {
            wrapper.eq("manager_id", managerId);
        }
        if (!StringUtils.isEmpty(begin)) {
            wrapper.ge("gmt_create", begin);
        }
        if (!StringUtils.isEmpty(end)) {
            wrapper.le("gmt_create", end);
        }
        baseMapper.selectPage(pageParam, wrapper);
    }

}
