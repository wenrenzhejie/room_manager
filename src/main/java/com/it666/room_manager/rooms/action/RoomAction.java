package com.it666.room_manager.rooms.action;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.it666.room_manager.order.service.OrderService;
import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.rooms.service.RoomService;
import com.it666.room_manager.utils.TargetStrategy;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import java.io.IOException;
import java.util.Date;
import java.util.List;

public class RoomAction extends ActionSupport implements ModelDriven<Room> {
    private Room room = new Room();
    private RoomService roomService;
    private OrderService orderService;
    private Date beginDate1;
    private Date endDate1;

    public void setBeginDate1(Date beginDate1) {
        this.beginDate1 = beginDate1;
    }

    public void setEndDate1(Date endDate1) {
        this.endDate1 = endDate1;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @Override
    public Room getModel() {
        return room;
    }

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }
    public String chooseDate(){
        ActionContext.getContext().getValueStack().set("cid",room.getCategory().getCid());
        return "chooseDate";
    }
    public String findByCategoryId(){
        ActionContext.getContext().getSession().put("beginDate",beginDate1);
        ActionContext.getContext().getSession().put("endDate",endDate1);
        List<Room> roomList = roomService.findByCategoryId(room.getCategory().getCid());
        System.out.println(roomList.size());
        System.out.println(beginDate1);
        System.out.println(endDate1);
        for(Room r:roomList){
            boolean b = orderService.isOrdered(beginDate1,endDate1,r);
            System.out.println(b);
            if(b){
                r.setSell(true);
            }else{
                r.setSell(false);
            }
        }
        ActionContext.getContext().getValueStack().set("roomList",roomList);
        return "findByCategoryId";
    }
    public String findById() throws IOException {
        TargetStrategy ts = new TargetStrategy(Room.class);
        //这里表示仅转换CrmPost中的id和name属性
        ts.setFields(new String[] {"rid", "rnum","price","image","sell","rdesc"});
        ts.setReverse(true);

        Room room1 = roomService.findById(room);
        Gson gson = new GsonBuilder().setExclusionStrategies(ts).create();
        String s = gson.toJson(room1);
        System.out.println(s);
        ServletActionContext.getResponse().setContentType("text/xml;charset=utf-8");
        ServletActionContext.getResponse().getWriter().write(s);
        return NONE;
    }
}
