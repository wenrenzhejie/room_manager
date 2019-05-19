package com.it666.room_manager.order.service;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.rooms.domain.Room;

import java.util.Date;
import java.util.List;

public interface OrderService {
    public void addOrder(Order order);
    public boolean isOrdered(Date beginDate,Date endDate, Room room);
    public List<Order> findByUserId(String uid);
    public void deleteById(Order order);
    public void payAll(String uid);
    public void payById(String oid);
}
