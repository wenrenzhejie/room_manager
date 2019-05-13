package com.it666.room_manager.user.action;

import com.it666.room_manager.user.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {
    private User user = new User();
    @Override
    public User getModel() {
        return user;
    }


    public String regist(){
        Object verifyCode = ActionContext.getContext().getSession().get("verifyCode");
        System.out.println(verifyCode);
        System.out.println("regist");
        return NONE;
    }
}
