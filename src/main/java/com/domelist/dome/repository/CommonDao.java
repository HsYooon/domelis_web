package com.domelist.dome.repository;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommonDao {
    /*
    * 카테고리별 상품 총 개수 조회
    */
    int totalPrdCnt(String info, String cd);
}
