package com.it666.room_manager.category.dao;
import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.page.PageBean;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao{
    @Override
    public List<Category> findAllCategory() {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Category.class);
        List<Category> categoryList = (List<Category>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        return categoryList;
    }

    @Override
    public void addCategory(Category category) {
        this.getHibernateTemplate().save(category);
    }

    @Override
    public void deleteCategory(Category category) {
        this.getHibernateTemplate().delete(category);
    }

    @Override
    public Category findCategoryById(Category category) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Category.class);
        detachedCriteria.add(Restrictions.eq("cid",category.getCid()));
        List<Category> categoryList = (List<Category>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        if(categoryList.size() > 0){
            return categoryList.get(0);
        }
        return null;
    }

    @Override
    public void updateCategory(Category category) {
        this.getHibernateTemplate().update(category);
    }

    @Override
    public PageBean<Category> getPageBean(int pageSize,int currentPage) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Category.class);
        List<Category> categoryList = (List<Category>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        List<Category> categoryList1= (List<Category>) this.getHibernateTemplate().findByCriteria(detachedCriteria, (currentPage - 1) * pageSize, pageSize);
        PageBean pageBean = new PageBean(pageSize, currentPage, categoryList.size());
        pageBean.setData(categoryList1);
        return pageBean;
    }

}
