package com.it666.room_manager.rooms.service;

import com.it666.room_manager.page.PageBean;
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

    @Override
    public void update(Room r) {
        roomDao.update(r);
    }

    @Override
    public List<Room> findAllRooms() {
        return roomDao.findAllRooms();
    }

    @Override
    public PageBean<Room> getPageBean(int pageSize, int currentPage) {
        return roomDao.getPageBean(pageSize,currentPage);
    }

    @Override
    public void addRoom(Room room) {
        roomDao.addRoom(room);
    }

    @Override
    public void deleteById(Room room) {
        roomDao.deleteById(room);
    }
}
