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
        System.out.println(uid);

        User u = userService.findById(uid);
        u.setIdCard(order.getUser().getIdCard());
        u.setTelephone(order.getUser().getTelephone());

        Room r = roomService.findById(order.getRoom());
        r.setSell(true);

        order.setUser(u);
        order.setRoom(r);
        order.setSubtotal(r.getPrice());

        orderService.addOrder(order);
        Room byId = roomService.findById(r);
        System.out.println(byId.getOrderSet().size());
        User u1 = userService.findById(uid);
        System.out.println(u1);

        return NONE;
    }

    public String allOrders(){
        return "allOrders";
    }
}
