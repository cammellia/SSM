package com.ssm.controller;

import com.alipay.api.AlipayApiException;
import com.ssm.entity.Movie;
import com.ssm.entity.Seat;
import com.ssm.entity.YingTing;
import com.ssm.service.Impl.SeatServiceImpl;
import com.ssm.service.Impl.YingtingServiceImpl;
import com.ssm.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-02 09:29
 **/
@Controller
public class SeatController {
    @Autowired
    private SeatServiceImpl seatService;
    @Autowired
    private MovieService movieService;
    @Autowired
    private YingtingServiceImpl yingtingService;
    @RequestMapping("/getSeat")
    public ModelAndView getSeat(ModelAndView modelAndView, Seat seat){
        Movie movie=movieService.getMovieById(seat.getMovieId());
        modelAndView.addObject("movie",movie);

        YingTing yingTing=yingtingService.getYingtingById(seat.getYingtingId());
        modelAndView.addObject("yingTing",yingTing);

        Seat seat1=seatService.getSeat(seat) ;
        modelAndView.addObject("seat",seat1);
        modelAndView.setViewName("seat");
        return  modelAndView;
    }
    @RequestMapping("/goPay")
    public ModelAndView goPay(ModelAndView modelAndView) throws AlipayApiException {
        String form=alipayApplication.pay((int)System.currentTimeMillis(),50.01,"bjyxszd");
        modelAndView.addObject("form",form);
        modelAndView.setViewName("pay");
         return  modelAndView;
    }
}
