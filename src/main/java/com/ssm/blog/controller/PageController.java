package com.ssm.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/24 9:28
 * @Description: 使用iframe组合页面
 */
@Controller
public class PageController {
    @RequestMapping("/blogList")
    public String toBlogList(){
        return "/user/blogList";
    }

    @RequestMapping("/right")
    public String toRight(){
        return "/user/right";
    }

    @RequestMapping("/header")
    public String toHeader(){
        return "/user/header";
    }

    @RequestMapping("/homePage")
    public String toMain(){
        return "/user/main";
    }

    @RequestMapping("/lkxTest")
    public String toLkxTest(){
        return "/user/main";
    }

    @RequestMapping("/action")
    public String action(){
        return "/user/action";
    }
}
