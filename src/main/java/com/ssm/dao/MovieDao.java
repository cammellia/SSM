package com.ssm.dao;

import com.ssm.entity.Movie;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-11 09:58
 **/
@Repository
public class MovieDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<Movie> getMovie(){
        return sqlSessionTemplate.selectList("movieMapper.getMovie");
    }
    public Movie getMovieById(int id){
        return sqlSessionTemplate.selectOne("movieMapper.getMovieById",id);
    }
    public List<Movie> getMovieByMovieName(String movieName){
        return sqlSessionTemplate.selectList("movieMapper.getMovieByMovieName",movieName);
    }
}