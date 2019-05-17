package com.it666.room_manager.order.domain;

import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.user.domain.User;

public class Order{
    private String oid;
    private User user;
    private Room room;
    private double subtotal;

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}
