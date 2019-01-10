package com.ssm.blog.dao;

import com.ssm.blog.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:51
 */
public interface IUserDao {

    //判断邮箱是否已经被注册
    int checkEmail(@Param("email") String email);

    //将邮箱和验证码插入数据库
    boolean insertEmailAndCode(@Param("email")String email,@Param("checkCode") String checkCode);

    //校验邮箱验证码
    int verifyCheckCode(@Param("email")String email,@Param("checkCode") String checkCode);

    //用户注册，插入密码
    boolean userRegister(@Param("email")String email,@Param("password")String password);

    //用户登录
    int userLogin(@Param("loginEmail")String loginEmail,@Param("loginPassword")String loginPassword);

}
