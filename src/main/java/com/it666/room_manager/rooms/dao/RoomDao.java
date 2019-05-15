package com.it666.room_manager.rooms.dao;

import com.it666.room_manager.rooms.domain.Room;

import java.util.List;

public interface RoomDao {
    public List<Room> findByCategoryId(String cid);

    public Room findById(Room room);
}
