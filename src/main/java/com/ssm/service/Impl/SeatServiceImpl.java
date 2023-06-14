package com.ssm.service.Impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.ssm.dao.SeatDao;
import com.ssm.entity.Seat;
import com.ssm.service.SeatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-02 09:28
 **/
@Service
public class SeatServiceImpl implements SeatService {
    @Autowired
    private SeatDao seatDao;

    @Override
    public Seat getSeat(Seat seat) {
        Seat seat1=seatDao.getSeat(seat);
        if(seat1!=null){

            JSONArray jsonArray=JSON.parseArray(seat1.getSeat());
            List list=jsonArray.toJavaList(List.class);
            seat1.setSeatList(list);
        }
        return seat1;
    }

}
