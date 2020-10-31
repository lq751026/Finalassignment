package com.lq.service.impl;

import com.lq.bean.Application;
import com.lq.bean.Sort;
import com.lq.dao.AppDao;
import com.lq.dao.SortDao;
import com.lq.service.AppSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class AppSerivceimpl implements AppSerivce {

    @Autowired
     private AppDao appDao;
    @Autowired
    private SortDao sortDao;

    @Override
    public List<Application> findAll() {
        List<Application> applications = appDao.findAll();
        for (Application application : applications) {
            Sort sort = sortDao.findByAppId(application.getId());
            application.setSortone(sortDao.findByoneId(sort.getOne_id()));
             application.setSorttwo(sortDao.findBytwoId(sort.getTwo_id()));
            application.setSortthree(sortDao.findBythreeId(sort.getThree_id()));
        }

        return applications;
    }

    /**
     * 添加
     * @param application-
     * @return
     */
    @Override
    public int saveApplication(Application application) {
        application.setUuid(UUID.randomUUID().toString().replace("-",""));
       appDao.saveApplication(application);
      Application application1= appDao.findBYuuID(application.getUuid());
      application.setId(application1.getId());
        sortDao.saveSOrtOneTwoThree(application);
        return 1;
    }

    @Override
    public int deleteAppById(Application app)throws Exception {
          sortDao.deleteAppId(app);
        return appDao.deleteAppById(app);
    }

    @Override
    public int updateStatus(Application app) {
        return appDao.updateStatus(app);
    }

    @Override
    public Application findById(Integer id) {

        return appDao.findById(id);
    }

    @Override
    public int updateApp(Application app) {
         sortDao.updateAppId(app);
        return appDao.updateApp(app);
    }

    @Override
    public int updateStatuS(Application app) {
        return appDao.updateStatuS(app);
    }
}
