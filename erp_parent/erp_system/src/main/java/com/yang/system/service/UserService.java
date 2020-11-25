package com.yang.system.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.yang.system.entity.User;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author testjava
 * @since 2020-01-12
 */
public interface UserService extends IService<User> {

    User selectByUsername(String username);
}
