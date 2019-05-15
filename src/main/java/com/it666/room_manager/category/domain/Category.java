package com.it666.room_manager.category.domain;

import com.it666.room_manager.rooms.domain.Room;

import java.util.HashSet;
import java.util.Set;

public class Category {
    private String cid;
    private String cname;
    private Set<Room> roomSet = new HashSet<>();

    public Set<Room> getRoomSet() {
        return roomSet;
    }

    public void setRoomSet(Set<Room> roomSet) {
        this.roomSet = roomSet;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}
