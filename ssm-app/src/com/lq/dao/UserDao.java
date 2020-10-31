package com.lq.dao;

import com.lq.bean.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    @Select("select * from user where username=#{username}")
    User findByUser(User user)throws Exception;
    @Insert("insert into user(username,password,role_id) values(#{username},#{password},#{role_id})")
    void saveUser(User user)throws Exception;
    @Select("select * from user where username=#{username}")
    User findByname(User user)throws Exception;
}
