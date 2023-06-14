package com.ssm.service.Impl;

import com.ssm.dao.CinemaDao;
import com.ssm.entity.Cinema;
import com.ssm.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-26 08:58
 **/
@Service
public class CinemaServiceImpl implements CinemaService {
    @Autowired
    private CinemaDao cinemaDao;
    @Override
    public List<Cinema> getCinema() {
        return cinemaDao.getCinema();
    }
}
