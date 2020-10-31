package com.lq.bean;


import java.util.List;

/**
 * @Author CYH 
**/
public class Sort {

 private List<Sortone> sortones;
 private List<Sorttwo> sorttwos;
 private List<Sortthree>sortthrees;
 private List<Application>applications;
  /*** null */
  private Integer one_id;

  /*** null */
  private Integer two_id;

  /*** null */
  private Integer three_id;

  /*** null */
  private Integer app_id;

    public List<Application> getApplications() {
        return applications;
    }

    public void setApplications(List<Application> applications) {
        this.applications = applications;
    }

    public List<Sortone> getSortones() {
    return sortones;
  }

  public void setSortones(List<Sortone> sortones) {
    this.sortones = sortones;
  }

  public List<Sorttwo> getSorttwos() {
    return sorttwos;
  }

  public void setSorttwos(List<Sorttwo> sorttwos) {
    this.sorttwos = sorttwos;
  }

  public List<Sortthree> getSortthrees() {
    return sortthrees;
  }

  public void setSortthrees(List<Sortthree> sortthrees) {
    this.sortthrees = sortthrees;
  }

  public Integer getOne_id() {
    return one_id;
  }

  public void setOne_id(Integer one_id) {
    this.one_id = one_id;
  }

  public Integer getTwo_id() {
    return two_id;
  }

  public void setTwo_id(Integer two_id) {
    this.two_id = two_id;
  }

  public Integer getThree_id() {
    return three_id;
  }

  public void setThree_id(Integer three_id) {
    this.three_id = three_id;
  }

  public Integer getApp_id() {
    return app_id;
  }

  public void setApp_id(Integer app_id) {
    this.app_id = app_id;
  }
}
