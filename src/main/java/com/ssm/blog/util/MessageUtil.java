package com.ssm.blog.util;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/26 10:21
 * @Description: 数据返回
 */
public class MessageUtil {
    //状态码
    private int code;

    //提示信息
    private String message;

    //校验邮箱
    private boolean valid;

    //用户返回给浏览器的数据
    private Map<String,Object> extend = new HashMap<String, Object>();

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public  String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public boolean getValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }

    public static MessageUtil success(){
        MessageUtil messageUtil = new MessageUtil();
        messageUtil.setCode(100);
        messageUtil.setMessage("处理成功！");
        return messageUtil;
    }

    public static MessageUtil fail(){
        MessageUtil messageUtil = new MessageUtil();
        messageUtil.setCode(200);
        messageUtil.setMessage("处理失败！");
        return messageUtil;
    }

    public static MessageUtil emailIsUsed(boolean valid){
        MessageUtil messageUtil = new MessageUtil();
        messageUtil.setValid(valid);
        return messageUtil;
    }

    public MessageUtil add(String key,Object value){
        this.getExtend().put(key,value);
        return this;
    }
}
