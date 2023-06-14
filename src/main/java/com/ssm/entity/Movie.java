package com.ssm.entity;

import java.math.BigDecimal;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-11 09:43
 **/
public class Movie {
     private int id;
     private String movieName;
     private String movieImg;
     private BigDecimal price;
     private int playingTotal;

    public Movie() {

    }
    public Movie(int id, String movieName, String movieImg, BigDecimal price, int playingTotal) {
        this.id = id;
        this.movieName = movieName;
        this.movieImg = movieImg;
        this.price = price;
        this.playingTotal = playingTotal;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", movieName='" + movieName + '\'' +
                ", movieImg='" + movieImg + '\'' +
                ", price=" + price +
                ", playingTotal=" + playingTotal +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getPlayingTotal() {
        return playingTotal;
    }

    public void setPlayingTotal(int playingTotal) {
        this.playingTotal = playingTotal;
    }
    //根据折扣计算最新价格
    public BigDecimal getNewPrice(double discount){
       return this.price.multiply(new BigDecimal(discount)).setScale(2,BigDecimal.ROUND_HALF_UP);
    }
}
