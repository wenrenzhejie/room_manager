package com.it666.room_manager.order.action;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.order.service.OrderService;
import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.rooms.service.RoomService;
import com.it666.room_manager.user.domain.User;
import com.it666.room_manager.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.Date;
import java.util.UUID;

public class OrderAction extends ActionSupport implements ModelDriven<Order> {
    private OrderService orderService;
    private RoomService roomService;
    private UserService userService;
    private Date beginDate;
    private Date endDate;
    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    private Order order = new Order();
    @Override
    public Order getModel() {
        return order;
    }

    public String preOrder(){
        System.out.println(order.getRoom().getRid());
        return "preOrder";
    }

    public String addOrder(){
        order.setOid(UUID.randomUUID().toString());
        String uid = (String) ActionContext.getContext().getSession().get("uid");

        User u = userService.findById(uid);
        u.setIdCard(order.getUser().getIdCard());
        u.setTelephone(order.getUser().getTelephone());
        u.setReal_name(order.getUser().getReal_name());

        Room r = roomService.findById(order.getRoom());
        r.setSell(true);

        order.setUser(u);
        order.setRoom(r);
        long l = endDate.getTime() - beginDate.getTime();
        int d = (int) (l/(24*60*60*1000));
        System.out.println(d);
        order.setSubtotal(r.getPrice()*d);

        orderService.addOrder(order);
        Room byId = roomService.findById(r);
        System.out.println(byId.getOrderSet().size());
        User u1 = userService.findById(uid);
        return NONE;
    }

    public String allOrders(){
        return "allOrders";
    }
}
