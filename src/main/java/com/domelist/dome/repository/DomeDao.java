package com.domelist.dome.repository;

import com.domelist.dome.dto.DomeDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DomeDao {
    List<DomeDto> test();

    List<DomeDto> todayProductList();
}
