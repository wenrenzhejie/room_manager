package com.it666.room_manager.order.dao;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.rooms.domain.Room;
import org.aspectj.weaver.ast.Or;

import java.util.Date;
import java.util.List;

public interface OrderDao {
    public void saveOrder(Order order);
    public List<Order> findByRid(Room room);
}
