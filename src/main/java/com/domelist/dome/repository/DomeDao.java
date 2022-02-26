package com.domelist.dome.repository;

import com.domelist.dome.dto.DeliveryDto;
import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.SiteInfoDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DomeDao {
    List<DomeDto> test();

    List<DomeDto> todayProductList(int cnt);

    List<DomeDto> bestProductList(int cnt);

    List<SiteInfoDto> siteInfoList(String cd);

    String categoryNm(String cd);

    List<DomeDto> prdMainNewList();

    List<DomeDto> prdMainBestList();

    List<DeliveryDto> domesticList(int cnt);

    List<DeliveryDto> abroadList(int cnt);
}
