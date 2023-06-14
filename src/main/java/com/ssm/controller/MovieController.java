package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.entity.Movie;
import com.ssm.service.Impl.MovieServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;
import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-11 10:28
 **/
@Controller
public class MovieController {
    @Autowired
    private MovieServiceImpl movieService;
    @RequestMapping("/")
    public ModelAndView getMovie(ModelAndView modelAndView){
        List<Movie> movieList=movieService.getMovie();
        modelAndView.addObject("movieList",movieList);
        modelAndView.setViewName("main");
        return  modelAndView;
    }
    @RequestMapping("/getDetails")
    public  ModelAndView getDetails(@RequestParam int id,ModelAndView modelAndView){
        Movie movie=movieService.getMovieById(id);
        modelAndView.addObject("movie",movie);
        modelAndView.setViewName("details");
        return  modelAndView;
    }
    @RequestMapping("/getMovieByMovieName")
    public ModelAndView getMovieByMovieName(@RequestParam String movieName, @RequestParam int currPage,@RequestParam int pageSize,ModelAndView modelAndView){
        PageInfo<Movie> moviePageInfo=movieService.getMovieByMovieName(movieName,currPage,pageSize);
        modelAndView.setViewName("goodsList");
        return  modelAndView;
    }
}
