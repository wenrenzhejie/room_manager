package com.it666.room_manager.category.dao;
import com.it666.room_manager.category.domain.Category;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao{
    @Override
    public List<Category> findAllCategory() {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Category.class);
        List<Category> categoryList = (List<Category>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        return categoryList;
    }
}
