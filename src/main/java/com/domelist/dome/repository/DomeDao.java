package com.domelist.dome.repository;

import com.domelist.dome.dto.DeliveryDto;
import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.dto.SiteInfoDto;
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

    /* 필독 정보 > 최신 마케팅 소식*/
    List<MarketPostDto> marketInfoPostList(String category);

    MarketPostDto marketPost(int id);

    /* 게시물 조회수 업데이트 */
    void updatePostCount(int id);

    List<DomeDto> searchPrd(String query);

    void insertPost(Map<String,String> post);

    void modifyPost(Map<String,Object> post);

    void deletePost(int id);
}
