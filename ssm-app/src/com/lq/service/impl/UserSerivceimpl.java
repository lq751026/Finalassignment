package com.lq.service.impl;

import com.lq.bean.User;
import com.lq.dao.UserDao;
import com.lq.service.UserSerivce;
import com.lq.utile.PasswordEncryp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserSerivceimpl implements UserSerivce {
    @Autowired
    private UserDao userDao;

    @Override
    public User findByUser(User user) throws Exception {
        return userDao.findByUser(user);
    }

    @Override
    public void saveUser(User user) throws Exception {
        userDao.saveUser(user);
    }

    @Override
    public User findByname(User user) throws Exception {
        return userDao.findByname(user);
    }
}
