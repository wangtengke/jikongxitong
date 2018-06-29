package com.jikong.dao;

import com.jikong.entity.city;
import com.jikong.entity.cityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface cityMapper {
    int countByExample(cityExample example);

    int deleteByExample(cityExample example);

    int deleteByPrimaryKey(Integer cId);

    int insert(city record);

    int insertSelective(city record);

    List<city> selectByExample(cityExample example);

    city selectByPrimaryKey(Integer cId);

    int updateByExampleSelective(@Param("record") city record, @Param("example") cityExample example);

    int updateByExample(@Param("record") city record, @Param("example") cityExample example);

    int updateByPrimaryKeySelective(city record);

    int updateByPrimaryKey(city record);
}