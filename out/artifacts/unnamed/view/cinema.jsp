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
    <link rel="stylesheet " href ="<%=basePath%>/css/cinema.css">
    <script src="<%=basePath%>/js/jquery-3.6.3.min.js"></script>
</head>
<body>
<div class="main myFlex_x">
    <div class="content">
        <div class="title">
            <h3>影院列表</h3>
        </div>
        <div class="cinemaList">
            <c:forEach items="${cinemaList}" var="cinema">
                <div class="cinema">
                    <div class="cinemaInfor">
                        <div class="cinemaName">${cinema.cinemaName}</div>
                        <div class="cinemaAddress">${cinema.cinemaAddress}</div>
                        <div class="type">
                            <c:forEach items="${cinema.type.split(',')}" var="type">
                                <span>${type}</span>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="cinemaTicket">
                        <span class="price">￥${movie.getNewPrice(cinema.discount)}</span>
                        <input data-id="${cinema.id}" class="buyTicket" type="button" value="选座购票">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script>
    $(".buyTicket").click(function (){
        var cinemaId=$(this).attr("data-id");
        var  id='${requestScope.movie.id}';
        var  price='${requestScope.movie.price}';
        // var data={cinemaId:cinemaId,id:id,price:price};
        window.location.href="<%=basePath%>/getYingtingBycinema?cinemaId="+cinemaId+"&id="+id+"&price"+price;
    })
</script>
</body>
</html>