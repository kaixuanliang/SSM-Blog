package com.ssm.blog.service;


import com.ssm.blog.bean.User;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:52
 */
public interface IUserService {
    boolean checkEmail(String email);

    boolean insertEmailAndCode(String email,String checkCode);

    boolean verifyCheckCode(String email,String checkCode);

    boolean userRegister(String email,String password);

    boolean userLogin(String loginEmail,String loginPassword);
}
