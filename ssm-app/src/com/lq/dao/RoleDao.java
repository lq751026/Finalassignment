package com.lq.dao;

import com.lq.bean.Role;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleDao {

    @Select("select * from role where id=#{id}")
 public Role findRoleById(Integer id);
}
