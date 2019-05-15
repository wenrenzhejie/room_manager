package com.it666.room_manager.rooms.action;

import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.rooms.service.RoomService;
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
        System.out.println("findByCategoryId");
        System.out.println(room.getCategory().getCid());
        List<Room> roomList = roomService.findByCategoryId(room.getCategory().getCid());
        System.out.println(roomList.size());
        return "findByCategoryId";
    }
}
