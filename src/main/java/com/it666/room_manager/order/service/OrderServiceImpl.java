package com.it666.room_manager.order.service;

import com.it666.room_manager.order.dao.OrderDao;
import com.it666.room_manager.order.domain.Order;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao;

    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    public void addOrder(Order order) {
        orderDao.saveOrder(order);
    }
}
