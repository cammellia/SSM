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
    <link rel="stylesheet" href="<%=basePath%>/css/main.css">
    <script src="<%=basePath%>/js/jquery-3.6.3.min.js"></script>
</head>
<body>
<div class="main">
    <%@ include file="top.jsp"%>
    <div class="content">
        <div class="hotPlaying">
            <div class="hotPlayingTitle">
                <span style="font-size: 23px;font-weight: 500">正在热映（60部）</span>
                <span>全部></span>
            </div>
            <div class="hotPlayingMovie">
                <c:forEach items="${movieList}" var="item">
                    <div class="movie" data-id="${item.id}">
                        <div class="movieInfo">
                            <img src="<%=basePath%>/img/${item.movieImg}">
                            <div class="info myFlex_x">
                                <div class="movieName" title="${item.movieName}">
                                    <span>${item.movieName}</span>
                                </div>
                            </div>
                        </div>
                        <div class="buyTicket myFlex_x">购票</div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <div class="todayTicket">
            <div class="todayTicketTitle">
                <span style="font-size: 25px;font-weight: 500">今日票房</span>
            </div>
            <div class="todayTicketList">
                <div class="listTop">
                    <div class="ranking">
                       <img src="<%=basePath%>/img/listtop.jpg">
                    </div>
                    <div class="detail">
                        <div class="detail1">
                            <span style="font-size: 23px;font-weight: 250;">长空之王</span>
                        </div>
                        <div class="detail2">
                            <span style="color: red">851.96万</span>
                        </div>
                    </div>
                </div>
                <div class="list">
                    <div class="ranking">
                        <span style="font-size: 20px;color: red;margin-right: 15px;">2</span>
                        <span style="font-size: 15px;">人生路不熟</span>
                    </div>
                    <div class="data">383.91万</div>
                </div>
                <div class="list">
                    <div class="ranking">
                        <span style="font-size: 20px;color: red;margin-right: 15px;">3</span>
                        <span style="font-size: 15px;">这么多年</span>
                    </div>
                    <div class="data">197.83万</div>
                </div>
                <div class="list">
                    <div class="ranking">
                        <span style="font-size: 20px;color: #bbbaba;margin-right: 15px;">4</span>
                        <span style="font-size: 15px;">银河护卫队3</span>
                    </div>
                    <div class="data">383.91万</div>
                </div>
                <div class="list">
                    <div class="ranking">
                        <span style="font-size: 20px;color: #bbbaba;margin-right: 15px;">5</span>
                        <span style="font-size: 15px;">灌篮高手</span>
                    </div>
                    <div class="data">383.91万</div>
                </div>
            </div>
            <div class="todayTicketCore">
                <div class="todayTicketCore-lift myFlex_x">
                    <span style="font-size: 15px;">今日大盘</span>
                </div>
                <div class="todayTicketCore-right">
                    <div class="todayTicketCore-right1">
                        <span class="right1-1" style="color: red;margin-left: 15px;"><h style="font-size: 30px;font-weight: 500;">2623.8</h>万</span>
                        <span class="right1-1" style="color: red;">查看更多></span>
                    </div>
                    <div class="todayTicketCore-right1">
                        <span style="color: #bbbaba; margin-left: 15px;">北京时间13:58:52&nbsp;&nbsp;&nbsp;猫眼专业版实时票房数据</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //点击电影，跳转详情页
    //$=jQuery
    $(".movie").click(function (){
        var id=$(this).attr("data-id");
        window.open("<%=basePath%>/getDetails?id="+id);
    })
</script>
</body>
</html>