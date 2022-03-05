package com.domelist.dome.repository;

import com.domelist.dome.dto.DeliveryDto;
import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.dto.SiteInfoDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    List<MarketPostDto> marketPostList();

    MarketPostDto marketPost(int id);

    List<DomeDto> searchPrd(String query);
}
