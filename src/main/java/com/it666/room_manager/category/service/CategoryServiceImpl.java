package com.it666.room_manager.category.service;

import com.it666.room_manager.category.dao.CategoryDao;
import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.page.PageBean;

import java.util.List;

public class CategoryServiceImpl implements CategoryService {
    private CategoryDao categoryDao;
    public void setCategoryDao(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @Override
    public List<Category> findAllCategory() {
        return categoryDao.findAllCategory();
    }

    @Override
    public void addCategory(Category category) {
        categoryDao.addCategory(category);
    }

    @Override
    public void deleteCategory(Category category) {
        categoryDao.deleteCategory(category);
    }

    @Override
    public Category findCategoryById(Category category) {
        return categoryDao.findCategoryById(category);
    }

    @Override
    public void updateCategory(Category category) {
        categoryDao.updateCategory(category);
    }

    @Override
    public PageBean<Category> getPageBean(int pageSize,int currentPage) {
        return categoryDao.getPageBean(pageSize,currentPage);
    }
}
