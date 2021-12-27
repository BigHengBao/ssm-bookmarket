package com.heng.ssm.service.impl;

import com.heng.ssm.base.BaseDao;
import com.heng.ssm.base.BaseServiceImpl;
import com.heng.ssm.entity.User;
import com.heng.ssm.mapper.UserMapper;
import com.heng.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public BaseDao<User> getBaseDao() {
        return userMapper;
    }
}
