package com.it666.room_manager.category.service;

import com.it666.room_manager.category.dao.CategoryDao;
import com.it666.room_manager.category.domain.Category;

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
}
