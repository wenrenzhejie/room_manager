package com.it666.room_manager.rooms.service;

import com.it666.room_manager.page.PageBean;
import com.it666.room_manager.rooms.domain.Room;

import java.util.List;

public interface RoomService {
    public List<Room> findByCategoryId(String cid);

    public Room findById(Room room);
    public void update(Room r);
    public List<Room> findAllRooms();

    public PageBean<Room> getPageBean(int pageSize, int currentPage);

    public void addRoom(Room room);

    public void deleteById(Room room);
}
