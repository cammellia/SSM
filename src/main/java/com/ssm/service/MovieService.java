package com.ssm.service;

import com.github.pagehelper.PageInfo;
import com.ssm.entity.Movie;

import java.util.List;

public interface MovieService {
    List<Movie> getMovie();
    Movie getMovieById(int id);
    PageInfo<Movie> getMovieByMovieName(String movieName, int currPage, int pageSize);
}
