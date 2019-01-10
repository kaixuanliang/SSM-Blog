package com.ssm.blog.service.impl;

import com.ssm.blog.bean.User;
import com.ssm.blog.dao.IUserDao;
import com.ssm.blog.service.IUserService;
import com.ssm.blog.util.SendQQMailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;


/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:52
 */
@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao iUserDao;

    public boolean checkEmail(String email){
        if(iUserDao.checkEmail(email) == 0){
            return true;
        }else {
            return false;
        }
    }

    public boolean insertEmailAndCode(String email,String checkCode){
        return iUserDao.insertEmailAndCode(email,checkCode);
    }

    public boolean verifyCheckCode(String email,String checkCode){
        if(iUserDao.verifyCheckCode(email,checkCode) == 1){
            return true;
        }else{
            return false;
        }
    }

    public boolean userRegister(String email,String password){
        return iUserDao.userRegister(email,password);
    }

    public boolean userLogin(String loginEmail,String loginPassword){
        if (iUserDao.userLogin(loginEmail,loginPassword) == 1){
            return true;
        }else{
            return false;
        }
    }
}
