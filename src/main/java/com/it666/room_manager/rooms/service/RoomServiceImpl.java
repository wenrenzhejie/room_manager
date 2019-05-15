package com.it666.room_manager.rooms.service;

import com.it666.room_manager.rooms.dao.RoomDao;
import com.it666.room_manager.rooms.domain.Room;

import java.util.List;

public class RoomServiceImpl implements RoomService {
    private RoomDao roomDao;

    public void setRoomDao(RoomDao roomDao) {
        this.roomDao = roomDao;
    }

    @Override
    public List<Room> findByCategoryId(String cid) {
        return roomDao.findByCategoryId(cid);
    }

    @Override
    public Room findById(Room room) {
        return roomDao.findById(room);
    }
}
