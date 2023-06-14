package com.ssm.controller;

import com.ssm.entity.Cinema;
import com.ssm.entity.Movie;
import com.ssm.service.Impl.CinemaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-26 09:00
 **/
@Controller
public class CinemaController {
    @Autowired
    private CinemaServiceImpl cinemaService;

    @RequestMapping("/getCinema")
    public ModelAndView getCinema(ModelAndView modelAndView, Movie movie){
        //查询数据
        List<Cinema> cinemaList=cinemaService.getCinema();
        modelAndView.addObject("cinemaList",cinemaList);
        modelAndView.addObject("movie",movie);
        modelAndView.setViewName("cinema");
        return modelAndView;
    }
}
