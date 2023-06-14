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
    <link rel="stylesheet" href="<%=basePath%>/css/yingting.css">
    <script src="<%=basePath%>/js/jquery-3.6.3.min.js"></script>
</head>
<body>
<div class="main">
    <%@ include file="top.jsp"%>
    <div class="content">
        <div class="ViewingTime1">
            <div class="time myFlex_x">观影时间:</div>
            <button class="detailTime myFlex_x">今天5月12</button>
            <button class="detailTime myFlex_x">周六5月13</button>
            <button class="detailTime myFlex_x">周日5月14</button>
        </div>
        <div class="ViewingTime2">
            <table>
                <tr>
                    <th>放映时间</th>
                    <th>语言版本</th>
                    <th>放映厅</th>
                    <th>售价（元）</th>
                    <th>选座购票</th>
                </tr>
                <c:forEach items="${requestScope.yingTingList}" var="yingting">
                    <tr >
                        <td><h3 style="margin: 0px">${yingting.matchTime()}</h3><h6 style="color: #bbbaba;margin: 0px">12:45散场</h6></td>
                        <td>${yingting.language}</td>
                        <td>${yingting.yingting}</td>
                        <td class="price" style="color: red;font-size: 20px">${RequestScope.movie.getNewPrice(yingting.discount)}</td>
                        <td>
                            <input data-id="${yingting.id}" class="buy" type="button" value="选座购票">
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<script>
    $(".buy").click(function () {
        var movieId='${requestScope.movie.id}';
        var yingtingId=$(this).attr("data-id");
        window.location.href="<%=basePath%>/getSeat?movieId="+movieId+"&yingtingId="+yingtingId;

    })
</script>
</body>
</html>