package com.ssm.blog.controller;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

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


    //froala_editor实现图片上传
    @RequestMapping("/uploadImgEditor")
    @ResponseBody
    public String uploadImgEditor(@RequestParam(value = "file") MultipartFile file,@RequestParam Map<String,String> params, HttpServletRequest request)throws  Exception{
        Map<String,Object> ret=new HashMap<String, Object>();
        try {
            String path="/upload/";
            Map<String,String> name = uploadFile(path,file, request);
            ret.put("link","http://" + request.getServerName() + ":" + request.getServerPort() + "/SSM-Blog" + path + name.get("saveName"));
            System.out.println(ret.get("link"));
            // 返回前台
            return JSON.toJSONString(ret);

        } catch (Exception e) {
            e.printStackTrace();
            return JSON.toJSONString("fail");
        }
    }

    public Map<String,String> uploadFile(String path,MultipartFile file, HttpServletRequest request) throws IOException {
        Map<String,String> result=new HashMap<String,String>();
        String fileName = file.getOriginalFilename();
        String basePath=request.getSession().getServletContext().getRealPath("/");
        System.out.println(basePath);
        String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();
        String saveName= UUID.randomUUID().toString()+'.'+fileType;

        File tempFile = new File(basePath+path, String.valueOf(saveName));
        if (!tempFile.getParentFile().exists()) {    //创建文件夹
            tempFile.getParentFile().mkdir();
        }

        try{
            if (!tempFile.exists()) {
                tempFile.createNewFile();
            }
            file.transferTo(tempFile);
        }catch (Exception e){
            e.printStackTrace();
        }

        result.put("fileName",fileName);
        result.put("saveName",saveName);
        return result;
    }



}
