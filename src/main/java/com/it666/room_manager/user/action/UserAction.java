package com.it666.room_manager.user.action;

import cn.itcast.mail.Mail;
import cn.itcast.mail.MailUtils;
import com.it666.room_manager.user.domain.User;
import com.it666.room_manager.user.exception.UserException;
import com.it666.room_manager.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import javax.mail.Session;
import java.text.MessageFormat;
import java.util.Properties;
import java.util.UUID;

public class UserAction extends ActionSupport implements ModelDriven<User> {
    private User user = new User();
    @Override
    public User getModel() {
        return user;
    }
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String regist(){
        String verifyCode = (String) ActionContext.getContext().getSession().get("verifyCode");
        String username = user.getUsername();
        String password = user.getPassword();
        String email = user.getEmail();
        String code = user.getCode();

        if(username==null||username.trim().length()==0) {
            this.addFieldError("username", "用户名不能为空");
        }else if(username.length() <3 || username.length()>10) {
            this.addFieldError("username", "用户名长度需在3~10之间");
        }

        if(password==null||password.trim().length()==0) {
            this.addFieldError("password", "密码不能为空");
        }else if(password.length() <3 || password.length()>10) {
            this.addFieldError("password", "密码长度需在3~10之间");
        }

        if(email==null||email.trim().length()==0) {
            this.addFieldError("email", "邮箱不能为空");
        }else if(!email.matches("\\w+@\\w+\\.\\w+")) {
            this.addFieldError("email", "email格式不正确");
        }

        if(!code.equalsIgnoreCase(verifyCode)) {
            this.addFieldError("code", "验证码输入错误");
        }

        if(this.getFieldErrors().size()>0) {
            return "regist_failed";
        }
        //来到这里说明填写的信息长度符合规范
        String uuid = UUID.randomUUID().toString();
        uuid = new String(uuid.replace("-",""));
        user.setUid(uuid);
        String activeCode = UUID.randomUUID().toString();
       user.setActivecode(activeCode);
        try {
            userService.regist(user);
            //走到这里，已保存成功
            //发送邮件
            Properties pro = new Properties();
            try {
                pro.load(this.getClass().getClassLoader().getResourceAsStream("email_temp.properties"));
                String host = pro.getProperty("host");
                String uname=pro.getProperty("uname");
                String pwd = pro.getProperty("pwd");
                String from = pro.getProperty("from");
                String receiver = user.getEmail();
                String subject = pro.getProperty("subject");
                String content=pro.getProperty("content");
                System.out.println("code："+user.getActivecode());
                //替换占位符
                String format = MessageFormat.format(content, user.getActivecode());
                System.out.println("format:"+format);

                Session session = MailUtils.createSession(host, uname, pwd);
                Mail mail = new Mail(from, receiver, subject, format);
                MailUtils.send(session, mail);
            }  catch (Exception e) {
                e.printStackTrace();
            }
        } catch (UserException e) {
            String message = e.getMessage();
            this.addFieldError("regist_failed1",message);
        }
        if(this.getFieldErrors().size()>0) {
            return "regist_failed";
        }
        if(email.contains("163")){
            ActionContext.getContext().getValueStack().set("web","https://mail.163.com/");
        }else{
            ActionContext.getContext().getValueStack().set("web","https://mail.qq.com/cgi-bin/loginpage");
        }
        return "regist_success";
    }

    public String active(){
        try {
            System.out.println("active");
            userService.active(user);
            System.out.println(user.getActivecode());
        } catch (UserException e) {
            String message = e.getMessage();
            this.addFieldError("active_msg",message);
            return "active_failed";
        }
        return "active_success";
    }

    public String login(){
        try {
            System.out.println("钱");
            System.out.println(user.getUsername());
            System.out.println(user.getPassword());
            userService.login(user);
            System.out.println("h后");
        } catch (UserException e) {
            this.addFieldError("login_error",e.getMessage());
            return "login_failed";
        }
        ActionContext.getContext().getSession().put("userName",user.getUsername());
        System.out.println("user");
        return "login_success";
    }

    public String quit(){
        ActionContext.getContext().getSession().remove("userName");
        return "quit_success";
    }
}
