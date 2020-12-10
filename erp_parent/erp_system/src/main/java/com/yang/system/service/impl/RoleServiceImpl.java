package com.yang.system.service.impl;

import com.yang.system.entity.Role;
import com.yang.system.mapper.RoleMapper;
import com.yang.system.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 角色表 服务实现类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-26
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

}
