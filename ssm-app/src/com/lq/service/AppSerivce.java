package com.lq.service;

import com.lq.bean.Application;

import java.util.List;

public interface AppSerivce {
    public List<Application> findAll();

    int saveApplication(Application application);

    int deleteAppById(Application app) throws Exception;

    int updateStatus(Application app);

    Application findById(Integer id);

    int updateApp(Application app);

    int updateStatuS(Application app);
}
