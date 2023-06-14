package com.ssm.entity;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-26 11:27
 **/
public class YingTing {
    private int id;
    private  String yingting;
    private Timestamp playingTime;
    private  double discount;
    private String language;
    private  int cinemaId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getYingting() {
        return yingting;
    }

    public void setYingting(String yingting) {
        this.yingting = yingting;
    }

    public Timestamp getPlayingTime() {
        return playingTime;
    }

    public void setPlayingTime(Timestamp playingTime) {
        this.playingTime = playingTime;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public int getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(int cinemaId) {
        this.cinemaId = cinemaId;
    }
    //时间格式化
    public String matchTime(){
        //将时间转换为年月日 时分
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("MM-dd HH:mm");
        return simpleDateFormat.format(this.playingTime);
    }
}
