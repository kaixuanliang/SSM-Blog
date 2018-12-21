package com.ssm.blog.service.impl;

import com.ssm.blog.bean.User;
import com.ssm.blog.dao.IUserDao;
import com.ssm.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:52
 */
@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao iUserDao;

    @Override
    public User selectUser(String userId) {
        return iUserDao.selectUser(userId);
    }
}
