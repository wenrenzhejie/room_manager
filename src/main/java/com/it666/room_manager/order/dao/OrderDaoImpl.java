package com.it666.room_manager.order.dao;

import com.it666.room_manager.order.domain.Order;
import com.it666.room_manager.rooms.domain.Room;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.Date;
import java.util.List;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{

    @Override
    public void saveOrder(Order order) {
        this.getHibernateTemplate().save(order);
    }

    @Override
    public List<Order> findByRid(Room room) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Order.class);
        detachedCriteria.add(Restrictions.eq("room.rid",room.getRid()));
        return (List<Order>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
    }
}
