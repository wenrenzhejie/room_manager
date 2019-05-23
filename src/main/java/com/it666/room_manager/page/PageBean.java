package com.it666.room_manager.page;

import java.util.List;

public class PageBean<T>{
    private int totalPages;
    private int pageSize;
    private int currentPageNum;
    private int totalRecord;
    private List<T> data;

    private int begin;
    private int end;

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPageNum() {
        return currentPageNum;
    }

    public void setCurrentPageNum(int currentPageNum) {
        this.currentPageNum = currentPageNum;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public PageBean(int pageSize, int currentPageNum, int totalRecord) {
        this.pageSize = pageSize;
        this.currentPageNum = currentPageNum;
        this.totalRecord = totalRecord;
        this.totalPages = (this.totalRecord+pageSize-1)/this.pageSize;

        this.begin =1;
        this.end = 5;
        if(this.end > totalPages){
            this.end = totalPages;
        }else{
            this.begin = this.currentPageNum -2;
            this.end = this.currentPageNum + 2;

            if(this.begin < 1){
                this.begin = 1;
                this.end = 5;
            }

            if(this.end > this.totalPages){
                this.end = this.totalPages;
                this.begin = this.end - 4;
            }
        }

    }
}
