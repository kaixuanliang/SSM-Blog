package com.ssm.blog.dao;

import com.ssm.blog.bean.User;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:51
 */
public interface IUserDao {
    User selectUser(String userId);
}
