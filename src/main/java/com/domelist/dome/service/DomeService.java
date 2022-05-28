package com.domelist.dome.service;

import com.domelist.dome.dto.*;
import com.domelist.dome.repository.DomeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DomeService {
    @Autowired
    DomeDao dao;

    public List<DomeDto> mainNewList() {
        int cnt = 12;
        return dao.todayProductList(cnt);
    }

    public List<DomeDto> mainBestList() {
        int cnt = 12;
        return dao.bestProductList(cnt);
    }

    /* 오늘의 도매상품 > 신상품 */
    public Map<String, Object> todayProductList(String info, String page, String cd, int totalPrdCnt) {
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
        // 시작상품번호와 마지막 상품번호 계산
        int start = ((nowPage - 1) * offset) + 1;
        int end = offset;
        if (nowPage == lastPage) {
            end = totalPrdCnt - (lastPage-1) * offset;
        }

        Map<String, Object> map = new HashMap<>();
        List<DomeDto> result = new ArrayList<>();
        if (info.equals("11")) {
            result = dao.domeNewPrdList(start, end, cd);
        }
        if (info.equals("12")) {
            result = dao.domeBestPrdList(start, end, cd);
        }

        int v = nowPage / 5;
        // 페이징의 시작이 5의 배수일때
        if(nowPage % 5 == 0) {
            v = nowPage / 5 -1;
        }
        int startPage = 5 * v + 1;
        int endPage = startPage + 4;
        // 페이징의 끝이 마지막 페이지일경우
        if(endPage > lastPage) {
            endPage = lastPage;
        }
        map.put("result", result);
        map.put("lastPage", lastPage);
        map.put("nowPage", nowPage);
        map.put("startPage", startPage);
        map.put("endPage",endPage);

        return map;
    }

    public List<SiteInfoDto> siteInfoList(String cd) {
        return dao.siteInfoList(cd);
    }

    /* 카테고리 이름 조회 */
    public String categoryNm(String cd) {
        return dao.categoryNm(cd);
    }

    /* 오늘의 도매상품 > 메인 > 신상품 섹션 */
    public List<DomeDto> prdMainNewList() {
        return dao.prdMainNewList();
    }
    /* 오늘의 도매상품 > 메인 > 베스트상품 섹션 */
    public List<DomeDto> prdMainBestList() {
        return dao.prdMainBestList();
    }

    public Map<String, List> deliveryMainLists() {
        int cnt = 8;
        List<DeliveryDto> domesticList = dao.domesticList(cnt);
        List<DeliveryDto> abroadList = dao.abroadList(cnt);
        List<DeliveryDto> advertiseList = dao.advertiseList(cnt);
        Map<String, List> result = new HashMap<>();
        result.put("domestic", domesticList);
        result.put("abroad", abroadList);
        result.put("advertise", advertiseList);
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

    /* 광고 대행 업체 모음 */
    public Map<String, List> advertiseLists() {
        /* 검색광고 : 12, 쇼핑광고: 13, DA광고: 14, 체험단&리뷰 대행: 15 */
        List<DeliveryDto> searchList = dao.advertiseCategoryList("12");
        List<DeliveryDto> shoppingList = dao.advertiseCategoryList("13");
        List<DeliveryDto> daList = dao.advertiseCategoryList("14");
        List<DeliveryDto> reviewList = dao.advertiseCategoryList("15");

        Map<String, List> result = new HashMap<>();
        result.put("searchList", searchList);
        result.put("shoppingList", shoppingList);
        result.put("daList", daList);
        result.put("reviewList", reviewList);

        return result;
    }
    /* 필독 정보 카테고리 조회 */
    public List<CdDto> infoCategoryList() {
        return dao.infoCategoryList();
    }

    /* 게시글 조회  */
    public List<MarketPostDto> marketInfoPostList(String category) {
        return dao.marketInfoPostList(category);
    }

    /* 인기 게시글 조회 TOP4 */
    public List<MarketPostDto> marketInfoPostListByCnt(String category) {
        return dao.marketInfoPostListByCnt(category);
    }

    /* 전체 게시물 중 인기 게시물 조회 */
    public List<MarketPostDto> allInfoPostListByCnt(int cnt) {
        return dao.allInfoPostListByCnt(cnt);
    }

    public List<MarketPostDto> marketInfoPostList2(String category, int cnt) {
        Map<String, Object> params = new HashMap<>();
        if(category == null) {
            category = "";
        }
        params.put("category", category);
        params.put("cnt", cnt);
        return dao.marketInfoPostList2(params);
    }

    /* 게시물 조회 */
    public MarketPostDto marketPost(int id) {
        return dao.marketPost(id);
    }

    /* 조회수 증가 */
    public void updatePostCount(int id) {
        dao.updatePostCount(id);
    }

    /* 사이트 조회수 증가 */
    public void updateSiteCount(String name) {
        dao.updateSiteCount(name);
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

    /* 게시글 업로드*/
    @Transactional
    public void uploadPost(Map<String,String> post) {
        dao.insertPost(post);
    }

    /* 게시글 수정 */
    @Transactional
    public void modifyPost(Map<String,Object> post) {
        dao.modifyPost(post);
    }

    /* 게시글 삭제 */
    @Transactional
    public void deletePost(int id) {
        dao.deletePost(id);
    }

    /* 인기 사이트 top10 조회 */
    public List<Object> siteInfoListByCnt() {
        return dao.siteInfoListByCnt();
    }
    ///////////////////////////////////////////////////////////

    private int calLastPage(int total, int offset) {
        return (int) Math.ceil((double)total / (double) offset);
    }
}
