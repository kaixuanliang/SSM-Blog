package com.ssm.blog.controller;

import com.ssm.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:51
 */
@Controller
public class UserController {
    @Autowired
    private IUserService userService;

    @RequestMapping("/sendEmailCode")
    public void print(){
        System.out.println("测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试");
    }
}
