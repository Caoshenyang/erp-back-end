package com.yang.company.service.impl;

import com.yang.company.entity.Department;
import com.yang.company.mapper.DepartmentMapper;
import com.yang.company.service.DepartmentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

}
