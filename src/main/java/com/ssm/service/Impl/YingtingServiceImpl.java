package com.ssm.service.Impl;

import com.ssm.dao.YingtingDao;
import com.ssm.entity.YingTing;
import com.ssm.service.YingtingService;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-01 09:11
 **/
@Service
public class YingtingServiceImpl implements YingtingService {
    @Autowired
    private YingtingDao yingtingDao;

    @Override
    public List<YingTing> getYingtingBycinema(int id){
        return yingtingDao.getYingtingBycinema(id);
    }

    @Override
    public YingTing getYingtingById(int id) {
        return yingtingDao.getYingtingById(id);
    }
}
