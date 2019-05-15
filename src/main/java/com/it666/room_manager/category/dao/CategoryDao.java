package com.it666.room_manager.category.dao;

import com.it666.room_manager.category.domain.Category;

import java.util.List;

public interface CategoryDao {
    public List<Category> findAllCategory();
}
