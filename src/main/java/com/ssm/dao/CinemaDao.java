package com.ssm.dao;

import com.ssm.entity.Cinema;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-26 08:55
 **/
@Repository
public class CinemaDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    public List<Cinema> getCinema(){
        return  sqlSessionTemplate.selectList("cinemaMapper.getCinema");
    }
}
