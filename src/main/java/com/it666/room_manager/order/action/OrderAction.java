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

    public void validateAddOrder() {
        System.out.println("validateaddOrder");
        System.out.println(order.getUser().getIdCard());

        if(order.getUser().getIdCard().length() != 18){
            this.addActionMessage("身份证号码错误");
        }
        String telephone = order.getUser().getTelephone();
        System.out.println(telephone);
        if(telephone.length() != 11){
            this.addActionMessage("手机号码错误");
        }
        char[] chars = telephone.toCharArray();
        for(int i =0;i < chars.length;i++){
            if(chars[i] < '0' || chars[i] > '9'){
                this.addActionMessage("手机号码错误");
                break;
            }
        }
    }

    public String addOrder(){
        System.out.println(this.getActionMessages().size());
        if(this.getActionMessages().size() > 0){
            return "unQuality";
        }
        order.setOid(UUID.randomUUID().toString());
        String uid = (String) ActionContext.getContext().getSession().get("uid");
        User u = userService.findById(uid);
        u.setIdCard(order.getUser().getIdCard());
        u.setTelephone(order.getUser().getTelephone());
        u.setReal_name(order.getUser().getReal_name());
        Room r = roomService.findById(order.getRoom());
        long l = order.getEndDate().getTime() - order.getBeginDate().getTime();
        int d = (int) (l/(24*60*60*1000));
        order.setSubtotal(r.getPrice()*d);
        int addScore = (int) (order.getSubtotal()*0.1);
        u.setScore(u.getScore()+addScore);
        order.setUser(u);
        order.setRoom(r);
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
        String uid = (String) ActionContext.getContext().getSession().get("uid");
        User u = userService.findById(uid);
        int score = (int) (order.getSubtotal()*0.1);
        u.setScore(u.getScore() - score);
        userService.updateUser(u);
        orderService.deleteById(order);
        return "cancle";
    }
    public String payAll(){
        String uid = (String) ActionContext.getContext().getSession().get("uid");
        orderService.payAll(uid);
        return "payAll";
    }

    public String payById(){
        orderService.payById(order.getOid());
        return "payById";
    }
    public String payByIdPre(){
        ActionContext.getContext().getValueStack().set("oid",order.getOid());
        return "payByIdPre";
    }
}
