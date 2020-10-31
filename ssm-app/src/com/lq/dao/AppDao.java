package com.lq.dao;

import com.lq.bean.Application;
import com.lq.bean.Pahader;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AppDao {


    @Select("select count(id) from application")
  public  Integer findTotal();


    @Select("select * from application")
   public List<Application> findAll();

    @Select("select * from application where id=#{app_id}")
    Application findById(Integer app_id);

/*
*   private String deploy; //配置

  private String language;//界面语言

  private String downtimes ;//下载次数
* */
    @Insert("INSERT INTO `ssm`.`application`( `name`, `size`, `platform`, `status`, `versions`, `logo`,`uuid`, `deploy`, `language`, `downtimes`) VALUES ( #{name}, #{size}, #{platform}, #{status}, #{versions}, #{logo},#{uuid}, #{deploy}, #{language},#{downtimes})")
    int  saveApplication(Application application);

    @Select("select * from application where uuid=#{uuid}")
    Application findBYuuID(String uuid);

    @Delete("delete from application where id=#{id}")
    int deleteAppById(Application app)throws Exception;

    @Update("update application set status=#{status} where id=#{id}")
    int updateStatus(Application app);



    @Update("<script>update application set id=#{id}" +
            "<if test='name!=null'>,name=#{name}</if>" +
            "<if test='size!=null'>,size=#{size}</if>" +
            "<if test='platform!=null'>,platform=#{platform}</if>" +
            "<if test='versions!=null'>,versions=#{versions}</if>" +
            "<if test='logo!=null'>,logo=#{logo}</if>" +
            "<if test='deploy!=null'>,deploy=#{deploy}</if>" +
            "<if test='language!=null'>,language=#{language}</if>" +
            "<if test='downtimes!=null'>,downtimes=#{downtimes}</if>" +
            " where id=#{id} </script> ")
    int updateApp(Application app);

    @Update("update application set status=#{status} where id=#{id} ")
    int updateStatuS(Application app);
}
