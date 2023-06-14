package com.ssm.entity;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-02 09:10
 **/
public class Seat {
    private int id;
    private int movieId;
    private int yingtingId;
    private String seat;
    private List seatList;

    public int getId() {
        return id;
    }

    public List getSeatList() {
        return seatList;
    }

    public void setSeatList(List seatList) {
        this.seatList = seatList;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getYingtingId() {
        return yingtingId;
    }

    public void setYingtingId(int yingtingId) {
        this.yingtingId = yingtingId;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }
}
