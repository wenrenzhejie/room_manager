package com.it666.room_manager.admin.action;

import com.it666.room_manager.category.domain.Category;
import com.it666.room_manager.category.service.CategoryService;
import com.it666.room_manager.page.PageBean;
import com.it666.room_manager.rooms.domain.Room;
import com.it666.room_manager.rooms.service.RoomService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

public class Admin_RoomAction extends ActionSupport implements ModelDriven<Room> {
    private Room room = new Room();
    private RoomService roomService;
    private CategoryService categoryService;
    private File myimage;
    private String myimageFileName;
    private String myimageContentType;

    public File getMyimage() {
        return myimage;
    }

    public void setMyimage(File myimage) {
        this.myimage = myimage;
    }

    public String getMyimageFileName() {
        return myimageFileName;
    }

    public void setMyimageFileName(String myimageFileName) {
        this.myimageFileName = myimageFileName;
    }

    public String getMyimageContentType() {
        return myimageContentType;
    }

    public void setMyimageContentType(String myimageContentType) {
        this.myimageContentType = myimageContentType;
    }

    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    private int pageSize = 3;
    private int currentPage = 1;

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    @Override
    public Room getModel() {
        return room;
    }

    public String findAllRooms(){
        PageBean<Room> pageBean = roomService.getPageBean(pageSize,currentPage);
        List<Room> roomList = pageBean.getData();
        ActionContext.getContext().getValueStack().set("roomList",roomList);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAllRooms";
    }

    public String addRoom(){
        String path = ServletActionContext.getServletContext().getRealPath("/images");
        String fileName = UUID.randomUUID().toString()+"_"+myimageFileName;
        String savePathName = "images/"+fileName;
        room.setImage(savePathName);
        try {
            File f = new File(path,fileName);
            if(!f.exists()){
                boolean newFile = f.createNewFile();
            }
            FileUtils.copyFile(myimage,f);
            roomService.addRoom(room);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "addRoom";

    }

    public String beforeAddRoom(){
        List<Category> categoryList = categoryService.findAllCategory();
        ActionContext.getContext().getValueStack().set("categoryList",categoryList);
        return "beforeAddRoom";
    }

    public String beforeEditRoom(){
        Room room1 = roomService.findById(room);
        List<Category> categoryList = categoryService.findAllCategory();
        ActionContext.getContext().getValueStack().set("categoryList",categoryList);
        ActionContext.getContext().getValueStack().push(room1);
        return "beforeEditRoom";
    }

    public String editRoom(){
        System.out.println("editRoom");
        String path = ServletActionContext.getServletContext().getRealPath("/images");
        String fileName = UUID.randomUUID().toString()+"_"+myimageFileName;
        String savePathName = "images/"+fileName;
        room.setImage(savePathName);
        try {
            File f = new File(path,fileName);
            if(!f.exists()){
                boolean newFile = f.createNewFile();
            }
            FileUtils.copyFile(myimage,f);
            roomService.update(room);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "editRoom";
    }

    public String deleteRoom(){
        roomService.deleteById(room);
        return "deleteRoom";
    }


}
