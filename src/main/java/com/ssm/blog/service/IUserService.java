package com.ssm.blog.service;

import com.ssm.blog.bean.User;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:52
 */
public interface IUserService {
    User selectUser(String userId);
}
