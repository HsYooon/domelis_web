package com.domelist.dome.service;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.SiteInfoDto;
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

    public List<DomeDto> mainNewList() {
        int cnt = 12;
        List<DomeDto> result = dao.todayProductList(cnt);
        return result;
    }

    public List<DomeDto> mainBestList() {
        int cnt = 12;
        List<DomeDto> result = dao.bestProductList(cnt);
        return result;
    }

    public List<DomeDto> todayProductList() {
        /* 100개의 신상품 목록을 가져옴 */
        int cnt = 100;
        List<DomeDto> result = dao.todayProductList(cnt);
        return result;
    }

    public List<DomeDto> bestProductList() {
        /* 100개의 베스트 상품 목록을 가져옴*/
        int cnt = 100;
        List<DomeDto> result = dao.bestProductList(cnt);
        return result;
    }

    public List<SiteInfoDto> siteInfoList(String cd) {
        List<SiteInfoDto> result = dao.siteInfoList(cd);
        return result;
    }
    /* 오늘의 도매상품 > 메인 > 신상품 섹션 */
    public List<DomeDto> prdMainNewList() {
        List<DomeDto> result = dao.prdMainNewList();
        return result;
    }
    /* 오늘의 도매상품 > 메인 > 베스트상품 섹션 */
    public List<DomeDto> prdMainBestList() {
        List<DomeDto> result = dao.prdMainBestList();
        return result;
    }
}
