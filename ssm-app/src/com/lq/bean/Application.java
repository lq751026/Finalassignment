package com.lq.bean;


import java.math.BigDecimal;
import java.util.List;

/**
 * @Author CYH 
**/
public class Application {


  /*** null */
  private Integer id;

  /*** null */
  private String name;

  /*** null */
  private double size;  //软件大小

  /*** null */
  private String platform;   //平台


  /*** null */
  private Integer status;  //状态码
  private String statusName;//状态

  /*** null */
  private String versions; //版本号

  private Integer sizes;

  private  Integer pages;

  private Sort sort;

  private Sortone sortone;

  private Sorttwo sorttwo;

  private Sortthree sortthree;

  private String logo;
  /*** null */
  private Integer sort_id;

  private Integer one;

  private Integer two;

  private Integer three;

  private String uuid;

  private String deploy; //配置

  private String language;//界面语言

  private String downtimes ;//下载次数

  public void setStatusName(String statusName) {
    this.statusName = statusName;
  }

  public String getDeploy() {
    return deploy;
  }

  public void setDeploy(String deploy) {
    this.deploy = deploy;
  }

  public String getLanguage() {
    return language;
  }

  public void setLanguage(String language) {
    this.language = language;
  }

  public String getDowntimes() {
    return downtimes;
  }

  public void setDowntimes(String downtimes) {
    this.downtimes = downtimes;
  }

  public String getStatusName() {
    String s="";
    switch (status){
      case 1:s="等待审核";break;
      case 2:s="审核中";break;
      case 3:s="上架";break;
      case 4:s="审核未通过";break;
      case 5:s="下架";break;
    }
     this.statusName=s;
    return statusName;
  }

  public String getUuid() {
    return uuid;
  }

  public void setUuid(String uuid) {
    this.uuid = uuid;
  }

  public Integer getOne() {
    return one;
  }

  public void setOne(Integer one) {
    this.one = one;
  }

  public Integer getTwo() {
    return two;
  }

  public void setTwo(Integer two) {
    this.two = two;
  }

  public Integer getThree() {
    return three;
  }

  public void setThree(Integer three) {
    this.three = three;
  }

  public Integer getSort_id() {
    return sort_id;
  }

  public void setSort_id(Integer sort_id) {
    this.sort_id = sort_id;
  }

  public String getLogo() {
    return logo;
  }

  public void setLogo(String logo) {
    this.logo = logo;
  }

  public Sortone getSortone() {
    return sortone;
  }

  public void setSortone(Sortone sortone) {
    this.sortone = sortone;
  }

  public Sorttwo getSorttwo() {
    return sorttwo;
  }

  public void setSorttwo(Sorttwo sorttwo) {
    this.sorttwo = sorttwo;
  }

  public Sortthree getSortthree() {
    return sortthree;
  }

  public void setSortthree(Sortthree sortthree) {
    this.sortthree = sortthree;
  }

  public Sort getSort() {
    return sort;
  }

  public void setSort(Sort sort) {
    this.sort = sort;
  }

  public Integer getSizes() {
    return sizes;
  }

  public void setSizes(Integer sizes) {
    this.sizes = sizes;
  }

  public Integer getPages() {
    return pages;
  }

  public void setPages(Integer pages) {
    this.pages = pages;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public double getSize() {
    return size;
  }

  public void setSize(double size) {
    this.size = size;
  }

  public String getPlatform() {
    return platform;
  }

  public void setPlatform(String platform) {
    this.platform = platform;
  }




  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }


  public String getVersions() {
    return versions;
  }

  public void setVersions(String versions) {
    this.versions = versions;
  }

}
