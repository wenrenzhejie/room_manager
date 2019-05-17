package com.it666.room_manager.user.dao;

import com.it666.room_manager.user.domain.User;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
    @Override
    public User findByName(String username) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(User.class);
        detachedCriteria.add(Restrictions.eq("username",username));
        List<User> list = (List<User>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        if(list.size() != 0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public User findByEmail(String email) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(User.class);
        detachedCriteria.add(Restrictions.eq("email",email));
        List<User> list = (List<User>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        if(list.size() != 0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public void regist(User user) {
        this.getHibernateTemplate().save(user);
    }

    @Override
    public User findByActiveCode(String activecode) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(User.class);
        detachedCriteria.add(Restrictions.eq("activecode",activecode));
        List<User> list = (List<User>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        if(list.size() != 0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public void active(User u1) {
        this.getHibernateTemplate().update(u1);
    }

    @Override
    public void updateUser(User u) {
        this.getHibernateTemplate().update(u);
    }

    @Override
    public User findById(String uid) {
        return this.getHibernateTemplate().get(User.class,uid);
    }
}
