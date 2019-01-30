package com.ssm.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

    @RequestMapping("/main")
    public String toMain(){
        return "/user/main";
    }

    @RequestMapping("/personalPage")
    public String toHomePage(HttpServletRequest request){
        HttpSession session = request.getSession();
        if (session.getAttribute("loginEmail") == null || session.getAttribute("loginEmail")==""){
            return "/user/main";
        }else{
            return "user/personalPage";
        }

    }

    @RequestMapping("/writeBlog")
    public String toWirteBlog(HttpServletRequest request){
        HttpSession session = request.getSession();
        if (session.getAttribute("loginEmail") == null || session.getAttribute("loginEmail")==""){
            return "/user/main";
        }else{
            return "user/writeBlog";
        }
    }

}
