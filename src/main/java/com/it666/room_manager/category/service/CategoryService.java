package com.it666.room_manager.category.service;

import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.page.PageBean;

import java.util.List;

public interface CategoryService {
    public List<Category> findAllCategory();
    public void addCategory(Category category);

    public void deleteCategory(Category category);

    public Category findCategoryById(Category category);

    public void updateCategory(Category category);

    public PageBean<Category> getPageBean(int pageSize,int currentPage);
}
