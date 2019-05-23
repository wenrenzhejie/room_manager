package com.it666.room_manager.rooms.dao;

import com.it666.room_manager.page.PageBean;
import com.it666.room_manager.rooms.domain.Room;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class RoomDaoImpl extends HibernateDaoSupport implements RoomDao {
    @Override
    public List<Room> findByCategoryId(String cid) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Room.class);
        detachedCriteria.add(Restrictions.eq("category.cid",cid));
        List<Room> byCriteria = (List<Room>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        return byCriteria;
    }

    @Override
    public Room findById(Room room) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Room.class);
        detachedCriteria.add(Restrictions.eq("rid",room.getRid()));
        List<Room> roomList = (List<Room>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        if(roomList.size() == 1){
            return roomList.get(0);
        }
        return null;
    }

    @Override
    public void update(Room r) {
        this.getHibernateTemplate().update(r);
    }

    @Override
    public List<Room> findAllRooms() {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Room.class);
        List<Room> roomList = (List<Room>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        return roomList;
    }
    @Override
    public PageBean<Room> getPageBean(int pageSize, int currentPage) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Room.class);
        List<Room> roomList = (List<Room>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        List<Room> roomList1= (List<Room>) this.getHibernateTemplate().findByCriteria(detachedCriteria, (currentPage - 1) * pageSize, pageSize);
        PageBean pageBean = new PageBean(pageSize, currentPage, roomList.size());
        pageBean.setData(roomList1);
        return pageBean;
    }

    @Override
    public void addRoom(Room room) {
        this.getHibernateTemplate().save(room);
    }

    @Override
    public void deleteById(Room room) {
        this.getHibernateTemplate().delete(room);
    }
}
