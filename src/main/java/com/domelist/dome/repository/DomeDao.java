package com.domelist.dome.repository;

import com.domelist.dome.dto.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface DomeDao {
    /* 오늘의 도매상품 > 신상품,베스트 */
    List<DomeDto> domeNewPrdList(@Param("start") int start, @Param("end") int end);

    List<DomeDto> domeBestPrdList(@Param("start") int start, @Param("end") int end);

    List<DomeDto> todayProductList(int cnt);

    List<DomeDto> bestProductList(int cnt);

    List<SiteInfoDto> siteInfoList(String cd);

    String categoryNm(String cd);

    List<DomeDto> prdMainNewList();

    List<DomeDto> prdMainBestList();

    List<DeliveryDto> domesticList(int cnt);

    List<DeliveryDto> abroadList(int cnt);

    List<DeliveryDto> advertiseList(int cnt);

    List<DeliveryDto> advertiseCategoryList(String category);

    List<CdDto> infoCategoryList();

    /* 카테고리별 게시물 */
    List<MarketPostDto> marketInfoPostList(String category);

    /* 카테고리 별 인기 게시물 TOP4 */
    List<MarketPostDto> marketInfoPostListByCnt(String category);

    /* 전체 인기 게시물 TOP3 */
    List<MarketPostDto> allInfoPostListByCnt(int cnt);

    /* 카테고리, 갯수, 정렬 방식으로 게시물 조회 */
    List<MarketPostDto> marketInfoPostList2(Map<String,Object> params);

    MarketPostDto marketPost(int id);

    /* 게시물 조회수 업데이트 */
    void updatePostCount(int id);

    List<DomeDto> searchPrd(String query);

    /* 게시물 등록,수정,삭제*/
    void insertPost(Map<String,String> post);

    void modifyPost(Map<String,Object> post);

    void deletePost(int id);

    List<Object> siteInfoListByCnt();

    void updateSiteCount(String name);

}
