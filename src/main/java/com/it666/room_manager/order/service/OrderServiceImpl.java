package com.it666.room_manager.order.service;

import com.it666.room_manager.order.dao.OrderDao;
import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.rooms.domain.Room;

import java.util.Date;
import java.util.List;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao;

    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    public void addOrder(Order order) {
        orderDao.saveOrder(order);
    }

    @Override
    public boolean isOrdered(Date beginDate,Date endDate, Room room) {
        boolean flag = false;
       List<Order> orderList = orderDao.findByRid(room);
        System.out.println("ssssssssssize:"+orderList.size());
       if(orderList.size() != 0){
            for(Order order:orderList){
                long begin = order.getBeginDate().getTime();
                long end = order.getEndDate().getTime();
                long time1 = beginDate.getTime();
                long time2 = endDate.getTime();
                if((time1 >= begin && time1 <end) ||(time2 >= begin && time2 <end)  ){
                    flag = true;
                    break;
                }
            }
       }
       return flag;
    }
}
