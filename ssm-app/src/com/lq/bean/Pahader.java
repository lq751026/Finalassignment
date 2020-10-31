package com.lq.bean;

import java.util.ArrayList;
import java.util.List;

public class Pahader<T> {
    private Integer pages;  //当前的页数
    private Integer topages; //总页数
    private Integer size; //显示的条数
    private  Integer total; //总记录数
    private List<T> list;
 public Pahader(){

 }
    public Pahader(Integer pages, Integer size, Integer total) {
        this.pages = pages;
        this.size = size;
        this.total = total;

        if (this.total%this.size==0){
            this.topages=this.total/this.size;
        }else{
            this.topages=this.total/this.size+1;
        }
        if(this.pages<=0){
            this.pages=1;
        }
        if(this.pages>=this.topages){
            this.pages=this.topages;
        }
        if(this.pages<=0){
            this.pages=1;
        }

    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
        getlist();
    }

    public Integer getTopages() {
        return topages;
    }

    public void setTopages(Integer topages) {
        this.topages = topages;
    }

    public Integer getPages() {
        return pages;
    }

    public void setPages(Integer pages) {
        this.pages = pages;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
        if(this.size==0){
            this.size=5;
        }
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }
    public void getlist(){
        List<T> list1=new ArrayList<>();
        Integer a=this.pages*this.size;
        Integer s=a-this.size;
        Integer sizes=a>=list.size()?list.size():a;
        for (int i = s; i < sizes; i++) {
             list1.add(list.get(i));
        }
        list=list1;
    }
}
