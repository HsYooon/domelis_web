package com.domelist.dome.service;

import com.domelist.dome.repository.CommonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonService {

    @Autowired
    private CommonDao dao;

    public int totalPrdCnt() {
        return dao.totalPrdCnt();
    }
}
