package com.lq.service.impl;

import com.lq.bean.Role;
import com.lq.dao.RoleDao;
import com.lq.service.RoleSerivcer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleSerivceimpl implements RoleSerivcer {
    @Autowired
    private RoleDao roleDao;

    @Override
    public Role findRolerById(Integer id) {
        return roleDao.findRoleById(id);
    }
}
