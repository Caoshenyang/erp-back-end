package com.yang.company.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yang.company.entity.Department;
import com.yang.company.entity.vo.DepartmentQuery;
import com.yang.company.mapper.DepartmentMapper;
import com.yang.company.service.DepartmentService;
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
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

    @Override
    public void pageQueryDepartment(Page<Department> pageParam, DepartmentQuery departmentQuery) {
        //构建条件
        String name = departmentQuery.getCompanyId();
        QueryWrapper<Department> wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("gmt_create");
        if (!StringUtils.isEmpty(name)) {
            wrapper.like("name", name);
        }
        DepartmentMapper baseMapper = getBaseMapper();
        baseMapper.selectPage(pageParam,wrapper);
    }
}
