package com.ssm.dao;

import com.ssm.entity.Seat;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-02 09:17
 **/
@Repository
public class SeatDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public Seat getSeat(Seat seat){
        return  sqlSessionTemplate.selectOne("seatMapper.getSeat",seat);
    }
}
