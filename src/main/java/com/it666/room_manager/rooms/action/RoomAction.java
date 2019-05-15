package com.it666.room_manager.rooms.action;

import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.rooms.service.RoomService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

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
    public String findById(){
        System.out.println("findById");
        System.out.println(room.getRid());
        Room room1 = roomService.findById(room);
        ActionContext.getContext().getValueStack().push(room1);
        return "findById";
    }
}
