package com.yang.company.service.impl;

import com.yang.company.entity.Company;
import com.yang.company.mapper.CompanyMapper;
import com.yang.company.service.CompanyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-20
 */
@Service
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {

}
