package com.it666.room_manager.rooms.service;

import com.it666.room_manager.rooms.domain.Room;

import java.util.List;

public interface RoomService {
    public List<Room> findByCategoryId(String cid);
}
