package com.lq.service;

import com.lq.bean.User;

public interface UserSerivce {
    public User findByUser(User user) throws Exception;

    void saveUser(User user)throws Exception;

    User findByname(User user) throws Exception;
}
