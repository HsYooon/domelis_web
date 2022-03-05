package com.domelist.dome.service;

import com.domelist.dome.repository.CommonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonService {

    @Autowired
    private CommonDao dao;

    /* 상품 코드 (11: 신상품 12: 베스트 상품) 을 받아 총 개수 조회 */
    public int totalPrdCnt(String info) {
        return dao.totalPrdCnt(info);
    }
}
