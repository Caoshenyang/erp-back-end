package com.yang.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.system.entity.User;
import com.yang.system.entity.vo.UserQuery;
import com.yang.system.mapper.UserMapper;
import com.yang.system.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-26
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Override
    public void pageQuery(Page<User> pageParam, UserQuery userQuery) {
        //构建条件
        String username = userQuery.getUsername();
        String mobile = userQuery.getMobile();

        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("gmt_create");
        if (!StringUtils.isEmpty(username)) {
            wrapper.like("username", username);
        }
        if (!StringUtils.isEmpty(mobile)) {
            wrapper.eq("mobile", mobile);
        }
        baseMapper.selectPage(pageParam, wrapper);
    }
}
