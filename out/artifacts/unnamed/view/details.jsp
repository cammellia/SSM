<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    /*获取项目的根路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
    /*basePath就是得到的跟路径类似于：http://localhost:8081/test/*/
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/details.css">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="<%=basePath%>/js/jquery-3.6.3.min.js"></script>
</head>
<body>
<div class="main">
    <%@ include file="top.jsp"%>
    <div class="content">
        <div class="movieImg">
            <img style="width: 100%;height: 100%" src="<%=basePath%>/img/${movie.movieImg}">
        </div>
        <div class="movieInfo">
            <div class="info">
                <span style="font-size: 23px;font-weight: 800">${movie.movieName}</span>
                <span style="font-size: 18px;margin-top: 10px">GODSPEED</span>
                <span>喜剧 剧情</span>
                <span>中国大陆 / 100分钟</span>
                <span>2023-04-28 18:00中国大陆上映</span>
            </div>
            <div class="buts">
                <div class="want myFlex_x">
                    <i class="layui-icon layui-icon-heart-fill"></i>
                    想看</div>
                <div class="core myFlex_x">
                    <i class="layui-icon layui-icon-rate-solid"></i>
                    评分</div>
                <div class="buyTicket myFlex_x">特惠购票</div>
            </div>
        </div>
        <div class="movieCore">
           <span>猫眼口碑</span>
           <div class="core">
               <div class="coreLift">
                   <span style="color: #ffcc00; font-size: 30px;font-weight: 500">9.4</span>
               </div>
               <div class="coreRight">
                   <i class="layui-icon layui-icon-rate-solid" style="font-size: 15px;color:  #ffcc00"></i>
                   <i class="layui-icon layui-icon-rate-solid" style="font-size: 15px;color:  #ffcc00"></i>
                   <i class="layui-icon layui-icon-rate-solid" style="font-size: 15px;color:  #ffcc00"></i>
                   <i class="layui-icon layui-icon-rate-solid" style="font-size: 15px;color:  #ffcc00"></i>
                   <i class="layui-icon layui-icon-rate-half" style="font-size: 15px;color:  #ffcc00"></i><br>
                   14.4万人评分
               </div>
           </div>
           <span>累计票房</span>
           <span><h style="font-size: 30px;font-weight: 500">${movie.playingTotal}</h>亿</span>
        </div>
    </div>
</div>

</body>
<script>
    //电影ID
    var id='${movie.id}';
    //电影价格
    var price='${movie.price}';
    //购票
    $(".buyTicket").click(function (){
        window.location.href="<%=basePath%>/getCinema?id="+id+"&price="+price;
    })
</script>
</html>