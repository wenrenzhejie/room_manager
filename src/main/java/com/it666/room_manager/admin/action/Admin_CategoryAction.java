package com.it666.room_manager.admin.action;

import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.category.service.CategoryService;
import com.it666.room_manager.order.service.OrderService;
import com.it666.room_manager.page.PageBean;
import com.it666.room_manager.rooms.service.RoomService;
import com.it666.room_manager.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import sun.security.provider.certpath.PKIXTimestampParameters;

import java.util.List;

public class Admin_CategoryAction implements ModelDriven<Category> {
    private Category category = new Category();
    @Override
    public Category getModel() {
        return category;
    }
    private CategoryService categoryService;
    private int pageSize = 3;
    private int currentPage = 1;

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    public String findAllCategory(){
        PageBean<Category> pageBean = categoryService.getPageBean(pageSize,currentPage);
        List<Category> categoryList = pageBean.getData();
        ActionContext.getContext().getValueStack().set("categoryList",categoryList);
        System.out.println(pageBean.getCurrentPageNum());
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAllCategory";
    }

    public String addCategory(){
        System.out.println("addCategory");
        categoryService.addCategory(category);
        return "addCategory";
    }

    public String editCategory(){
        Category category1 = categoryService.findCategoryById(category);
        System.out.println(category1.getCname());
        ActionContext.getContext().getValueStack().push(category1);
        return "editCategory";
    }
    public String realEditCategory(){
        categoryService.updateCategory(category);
        return "realEditCategory";
    }

    public String deleteCategory(){
        categoryService.deleteCategory(category);
        return "deleteCategory";
    }
}
