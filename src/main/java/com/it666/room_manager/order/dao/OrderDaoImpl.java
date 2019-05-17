package com.it666.room_manager.order.dao;

import com.it666.room_manager.order.domain.Order;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{

    @Override
    public void saveOrder(Order order) {
        this.getHibernateTemplate().save(order);
    }
}
