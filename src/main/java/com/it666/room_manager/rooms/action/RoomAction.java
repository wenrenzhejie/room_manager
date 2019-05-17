package com.it666.room_manager.rooms.action;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.rooms.service.RoomService;
import com.it666.room_manager.utils.HibernateProxyTypeAdapter;
import com.it666.room_manager.utils.TargetStrategy;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import java.io.IOException;
import java.util.List;

public class RoomAction extends ActionSupport implements ModelDriven<Room> {
    private Room room = new Room();
    private RoomService roomService;
    @Override
    public Room getModel() {
        return room;
    }

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    public String findByCategoryId(){
        List<Room> roomList = roomService.findByCategoryId(room.getCategory().getCid());
        ActionContext.getContext().getValueStack().set("roomList",roomList);
        System.out.println( roomList.get(0).isSell());
        return "findByCategoryId";
    }
    public String findById() throws IOException {
        TargetStrategy ts = new TargetStrategy(Room.class);
        //这里表示仅转换CrmPost中的id和name属性
        ts.setFields(new String[] {"rid", "rnum","price","image","sell"});
        ts.setReverse(true);

        Room room1 = roomService.findById(room);
        System.out.println(room1);
        Gson gson = new GsonBuilder().setExclusionStrategies(ts).create();
        String s = gson.toJson(room1);
        ServletActionContext.getResponse().getWriter().write(s);
        return NONE;
    }
}
