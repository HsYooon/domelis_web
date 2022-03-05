package com.domelist.dome.service;

import com.domelist.dome.dto.DeliveryDto;
import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.dto.SiteInfoDto;
import com.domelist.dome.repository.DomeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

@Service
public class DomeService {
    @Autowired
    DomeDao dao;

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
    /* 오늘의 도매상품 > 신상품 */
    public Map<String, Object> todayProductList(String info, String page, int totalPrdCnt) {
        // 한페이지에 보여줄 상품 수
        int offset = 100;
        int lastPage = calLastPage(totalPrdCnt, offset);
        int nowPage = 1;
        if(page != null && Integer.parseInt(page) > 0) {
            nowPage = Integer.parseInt(page);
        }
        // 현재 페이지가 마지막 페이지보다 클 경우 에러
        if (nowPage > lastPage) {
            return null;
        }
        // 시작페이지와 마지막 페이지 계산
        int start = ((nowPage - 1) * offset) + 1;
        int end = offset;
        if (nowPage != lastPage) {
            end = start + offset - 1;
        }else {
            end = totalPrdCnt - (lastPage-1) * offset;
        }

        Map<String, Object> map = new HashMap<>();
        List<DomeDto> result = new ArrayList<>();
        if (info == "11") {
            result = dao.domeNewPrdList(start, end);
        }
        if (info == "12") {
            result = dao.domeBestPrdList(start, end);
        }
        map.put("result", result);
        map.put("lastPage", lastPage);
        map.put("nowPage", nowPage);

        return map;
    }

    public List<SiteInfoDto> siteInfoList(String cd) {
        List<SiteInfoDto> result = dao.siteInfoList(cd);
        return result;
    }
    public String categoryNm(String cd) {
        return dao.categoryNm(cd);
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

    public Map<String, List> deliveryMainLists() {
        int cnt = 8;
        List<DeliveryDto> domesticList = dao.domesticList(cnt);
        List<DeliveryDto> abroadList = dao.abroadList(cnt);
        Map<String, List> result = new HashMap<>();
        result.put("domestic", domesticList);
        result.put("abroad", abroadList);
        return result;
    }

    public List<DeliveryDto> deliveryDomesticList() {
        int cnt = 0;
        return dao.domesticList(cnt);
    }

    public List<DeliveryDto> deliveryAbroadList() {
        int cnt = 0;
        return dao.abroadList(cnt);
    }

    /* 필독 정보 */
    public List<MarketPostDto> marketPostList() {
        return dao.marketPostList();
    }
    public MarketPostDto marketPost(int id) {
        return dao.marketPost(id);
    }

    /* 검색 */
    public Map<String,Object> searchPrd(String query){
        List<DomeDto> list = dao.searchPrd(query);
        int cnt = list.size();
        Map<String,Object> result = new HashMap<>();
        result.put("list", list);
        result.put("cnt", cnt);
        return result;
    }

    ///////////////////////////////////////////////////////////

    private int calLastPage(int total, int offset) {
        if (total % offset == 0) {
            return (int) Math.ceil((double)total / (double) offset);
        }
        return (int) Math.ceil((double)total / (double) offset);
    }
}
