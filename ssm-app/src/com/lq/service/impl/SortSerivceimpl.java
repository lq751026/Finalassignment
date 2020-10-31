package com.lq.service.impl;

import com.lq.bean.*;
import com.lq.dao.AppDao;
import com.lq.dao.SortDao;
import com.lq.service.AppSerivce;
import com.lq.service.SortSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SortSerivceimpl implements SortSerivce {

    @Autowired
    private SortDao sortDao;
    @Autowired
    private AppDao appDao;

    @Override
    public Sort findAll() {
        Sort sort=new Sort();
        sort.setSortones(sortDao.findAllSortone());
        sort.setSorttwos(sortDao.findAllSortwo());
        sort.setSortthrees(sortDao.findAllSorthree());
        return sort;
    }

    @Override
    public Sort findById(Sort sort) {
        List<Sort> allSOrtByID = sortDao.findAllSOrtByID(sort);
        List<Application> applications=new ArrayList<>();
        for (Sort sort1 : allSOrtByID) {
            Application application = appDao.findById(sort1.getApp_id());
            application.setSortone(sortDao.findByoneId(sort.getOne_id()));
            application.setSorttwo(sortDao.findBytwoId(sort.getTwo_id()));
            application.setSortthree(sortDao.findBythreeId(sort.getThree_id()));
            applications.add(application);
        }
        sort.setApplications(applications);
        return sort;
    }
}
