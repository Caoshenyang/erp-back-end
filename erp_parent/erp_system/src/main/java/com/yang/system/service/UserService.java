package com.yang.system.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yang.system.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.yang.system.entity.vo.UserQuery;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author caoshenyang
 * @since 2020-11-26
 */
public interface UserService extends IService<User> {

    void pageQuery(Page<User> pageParam, UserQuery userQuery);
}
