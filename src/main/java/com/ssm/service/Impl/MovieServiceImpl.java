package com.ssm.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.dao.MovieDao;
import com.ssm.entity.Movie;
import com.ssm.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-11 10:26
 **/
@Service
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MovieDao movieDao;
    @Override
    public List<Movie> getMovie() {
        return movieDao.getMovie();
    }

    @Override
    public Movie getMovieById(int id) {
        return movieDao.getMovieById(id);
    }
    @Override
    public PageInfo<Movie>getMovieByMovieName(String movieName,int currPage,int pageSize){
        //获取前端传来的分页数据，currpage当前页数，pagesize一页显示条数
        PageHelper.startPage(currPage,pageSize);
        List<Movie> movieList=movieDao.getMovieByMovieName(movieName);
        PageInfo<Movie> moviePageInfo=new PageInfo<>(movieList);
        return  moviePageInfo;
    }
}
