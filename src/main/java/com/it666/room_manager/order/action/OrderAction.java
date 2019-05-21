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
import java.util.List;
import java.util.UUID;

public class OrderAction extends ActionSupport implements ModelDriven<Order> {
    private OrderService orderService;
    private RoomService roomService;
    private UserService userService;

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
        order.setUser(u);
        order.setRoom(r);
        long l = order.getEndDate().getTime() - order.getBeginDate().getTime();
        int d = (int) (l/(24*60*60*1000));
        order.setSubtotal(r.getPrice()*d);
        order.setSuccessTime(new Date());
        orderService.addOrder(order);
        Room byId = roomService.findById(r);
        System.out.println(byId.getOrderSet().size());
        User u1 = userService.findById(uid);
        return "addOrder";
    }

    public String findByUserId(){
        String uid = (String) ActionContext.getContext().getSession().get("uid");
        List<Order> orderList = orderService.findByUserId(uid);
        ActionContext.getContext().getValueStack().set("orderList",orderList);
        return "findByUserId";
    }

    public String cancle(){
        orderService.deleteById(order);
        return "cancle";
    }
    public String payAll(){
        String uid = (String) ActionContext.getContext().getSession().get("uid");
        System.out.println(uid);
        orderService.payAll(uid);
        return "payAll";
    }

    public String payById(){
        System.out.println("aaaaaaaaaaaaaa");
        System.out.println(order.getOid());
        orderService.payById(order.getOid());
        return "payById";
    }
    public String payByIdPre(){
        ActionContext.getContext().getValueStack().set("oid",order.getOid());
        return "payByIdPre";
    }
}
