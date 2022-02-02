package com.domelist.dome.service;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.repository.DomeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Stream;

@Service
public class DomeService {
    @Autowired
    DomeDao dao;

    public List<DomeDto> test() {
        return dao.test();
    }

    public List<DomeDto> todayProductList() {
        int idx = 4;
        /* n개의 신상품 목록을 가져옴 */
        List<DomeDto> result = dao.todayProductList();
        if(result.size() > idx) {
            return result.subList(0,idx);
        }
        return dao.todayProductList();
    }
}
