package com.it666.room_manager.admin.action;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.order.service.OrderService;
import com.it666.room_manager.page.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;

public class Admin_OrderAction extends ActionSupport implements ModelDriven<Order> {
    private Order order = new Order();
    private OrderService orderService;
    private int pageSize = 3;
    private int currentPage = 1;

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @Override
    public Order getModel() {
        return order;
    }

    public String findAllOrders(){
        PageBean<Order> pageBean = orderService.getPageBean(pageSize,currentPage);
        List<Order> orderList = pageBean.getData();
        ActionContext.getContext().getValueStack().set("orderList",orderList);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAllOrders";
    }


}
