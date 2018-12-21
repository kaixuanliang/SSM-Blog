package com.ssm.blog.controller;

import com.ssm.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:51
 */
@Controller
public class UserController {
    @Autowired
    private IUserService userService;

    public void setUserService(String userId){
        System.out.println("测试成功");
    }
}
