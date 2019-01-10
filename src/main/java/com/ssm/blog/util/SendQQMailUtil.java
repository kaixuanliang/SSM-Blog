package com.ssm.blog.util;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * @Author: LiangKaiXuan
 * @Date: 2018/12/25 11:21
 */
public class SendQQMailUtil {
    public static String sendMail(String fromEmail,String toEmail)throws AddressException,MessagingException{
        Properties properties = new Properties();
        properties.put("mail.transport.protocol", "smtp");// 连接协议
        properties.put("mail.smtp.host", "smtp.qq.com");// 主机名
        properties.put("mail.smtp.port", 465);// 端口号
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");// 设置是否使用ssl安全连接 ---一般都使用
        properties.put("mail.debug", "true");// 设置是否显示debug信息 true 会在控制台显示相关信息

        //得到会话对象
        Session session = Session.getInstance(properties);

        //获取邮件对象
        Message message = new MimeMessage(session);

        //设置邮箱发件人
        message.setFrom(new InternetAddress(fromEmail));

        //设置收件人
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));

        //设置邮件标题
        message.setSubject("欢迎注册SSM-Blog");

        //设置邮件的验证码
        String checkCode = RandomUtil.makeRandom();
        message.setText("亲爱的"+toEmail+",您的SSM-Blog验证码为："+checkCode);

        //得到邮差对象
        Transport transport = session.getTransport();

        //连接自己的邮箱账户
        transport.connect(fromEmail,"kfsnrmfrldisdcdi");

        //发送邮件
        transport.sendMessage(message,message.getAllRecipients());
        transport.close();

        return checkCode;
    }
}
