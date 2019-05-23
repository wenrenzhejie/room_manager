package com.it666.room_manager.admin.action;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.order.service.OrderService;
import com.it666.room_manager.page.PageBean;
import com.it666.room_manager.user.domain.User;
import com.it666.room_manager.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;

public class Admin_UserAction extends ActionSupport implements ModelDriven<User> {
    private User user = new User();
    private UserService userService;
    private int pageSize = 3;
    private int currentPage = 1;

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    @Override
    public User getModel() {
        return user;
    }

    public String findAllUsers(){
        PageBean<User> pageBean = userService.getPageBean(pageSize,currentPage);
        List<User> userList = pageBean.getData();
        ActionContext.getContext().getValueStack().set("userList",userList);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAllUsers";
    }
}
