package com.yang.company.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.company.entity.Department;
import com.baomidou.mybatisplus.extension.service.IService;
import com.yang.company.entity.vo.DepartmentQuery;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-23
 */
public interface DepartmentService extends IService<Department> {

    void pageQueryDepartment(Page<Department> pageParam, DepartmentQuery departmentQuery);
}
