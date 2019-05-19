package com.it666.room_manager.order.service;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.rooms.domain.Room;

import java.util.Date;

public interface OrderService {
    public void addOrder(Order order);
    public boolean isOrdered(Date beginDate,Date endDate, Room room);

}
