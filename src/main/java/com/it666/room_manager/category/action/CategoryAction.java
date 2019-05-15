package com.it666.room_manager.category.action;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.category.service.CategoryService;
import com.it666.room_manager.utils.TargetStrategy;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import java.io.IOException;
import java.util.List;

public class CategoryAction extends ActionSupport implements ModelDriven<Category> {
    private Category category = new Category();
    private CategoryService categoryService;
    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @Override
    public Category getModel() {
        return category;
    }
        public String search() throws IOException {
            List<Category> list = categoryService.findAllCategory();
            TargetStrategy ts = new TargetStrategy(Category.class);
            //这里表示仅转换CrmPost中的id和name属性
            ts.setFields(new String[] {"postId", "postName"});
            ts.setReverse(true);

            Gson gson = new GsonBuilder().setExclusionStrategies(ts).create();
            String s = gson.toJson(list);
            ServletActionContext.getResponse().getWriter().write(s);
            return NONE;
    }

    public String findAllCategory(){
        System.out.println("aaaaaaaaaaaaaaaaa");
        List<Category> categoryList = categoryService.findAllCategory();
        ActionContext.getContext().getValueStack().set("categoryList",categoryList);
        return "findAll";
    }
}
