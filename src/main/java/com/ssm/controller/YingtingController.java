package com.ssm.controller;

import com.ssm.entity.Movie;
import com.ssm.entity.YingTing;
import com.ssm.service.Impl.YingtingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-01 09:13
 **/
@Controller
public class YingtingController {
    @Autowired
    private YingtingServiceImpl yingtingService;
    @RequestMapping("/getYingtingBycinema")
    public ModelAndView getYingtingBycinema(@RequestParam int cinemaId, Movie movie, ModelAndView modelAndView){
        modelAndView.addObject("movie",movie);
        List<YingTing> yingTingList=yingtingService.getYingtingBycinema(cinemaId);
        modelAndView.addObject("yingTingList",yingTingList);
        modelAndView.setViewName("yingting");
        return  modelAndView;
    }
}
