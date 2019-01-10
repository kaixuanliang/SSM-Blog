package com.ssm.blog.controller;

import com.ssm.blog.service.IUserService;
import com.ssm.blog.util.MessageUtil;
import com.ssm.blog.util.SendQQMailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/21 10:51
 */
@Controller
@SessionAttributes(value = {"loginEmail","loginPassword"})
public class UserController {
    @Autowired
    private IUserService userService;

    //校验邮箱是否可以注册
    @RequestMapping("/checkEmail")
    @ResponseBody
    public MessageUtil checkEmail(@RequestParam("email")String email){
        if(userService.checkEmail(email) == true){
            return MessageUtil.emailIsUsed(true);
        }else{
            return MessageUtil.emailIsUsed(false);
        }
    }

    //发送邮箱验证码
    @RequestMapping("/sendEmailCode")
    @ResponseBody
    public MessageUtil sendEmailCode(@RequestParam("email")String email)throws MessagingException{
        if (userService.checkEmail(email)){
            String checkCode = SendQQMailUtil.sendMail("2926996881@qq.com",email);
            userService.insertEmailAndCode(email,checkCode);
            return MessageUtil.success().add("message",100);
        }else{
            return MessageUtil.fail().add("message",200);
        }
    }

    //校验邮箱验证码
    @RequestMapping("/verifyCheckCode")
    @ResponseBody
    public MessageUtil verifyCheckCode(@RequestParam("email")String email,@RequestParam("checkCode")String checkCode){
        System.out.println(email);
        System.out.println(checkCode);
        if (userService.verifyCheckCode(email,checkCode) == true){
            return MessageUtil.emailIsUsed(true);
        }else{
            return MessageUtil.emailIsUsed(false);
        }
    }

    @RequestMapping("/userRegister")
    @ResponseBody
    public MessageUtil userRegister(@RequestParam("email")String email,@RequestParam("password")String password){
        if (userService.userRegister(email,password) == true){
            return MessageUtil.emailIsUsed(true);
        }else{
            return MessageUtil.emailIsUsed(false);
        }
    }

    @RequestMapping("/checkLoginEmail")
    @ResponseBody
    public MessageUtil checkLoginEmail(@RequestParam("loginEmail")String LoginEmail){
        if(userService.checkEmail(LoginEmail) == false){
            return MessageUtil.emailIsUsed(true);
        }else{
            return MessageUtil.emailIsUsed(false);
        }
    }

    //用户登录
    @RequestMapping("/userLogin")
    @ResponseBody
    public MessageUtil userLogin(Map<String,Object>map,@RequestParam("loginEmail")String loginEmail, @RequestParam("loginPassword")String loginPassword){
        System.out.println(loginEmail+""+loginPassword);
        if (userService.userLogin(loginEmail,loginPassword) == true){
            map.put("loginEmail",loginEmail);
            map.put("loginPassword",loginPassword);
            return MessageUtil.emailIsUsed(true);
        }else{
            return MessageUtil.emailIsUsed(false);
        }
    }

    //用户退出
    @RequestMapping("/quit")
    public String userQuit(HttpServletRequest request, SessionStatus sessionStatus){
        request.getSession().removeAttribute("loginEmail");
        request.getSession().removeAttribute("loginPassword");
        sessionStatus.setComplete();
        return "/user/main";
    }
}
