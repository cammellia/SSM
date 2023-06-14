<%--
  Created by IntelliJ IDEA.
  User: 33346
  Date: 2023/5/12
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/css/top.css">
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
</head>
<body>
<div class="main">
    <div class="top">
        <div class="logo myFlex_x">
            <img src="<%=basePath%>/img/log.png">
        </div>
        <div class="city myFlex_x">
            <span>武汉</span>
            <span>&#9660</span>
        </div>
        <div class="nav myFlex_x">
            <div class="myFlex_x" style="background-color: red;color:white">首页</div>
            <div class="myFlex_x">电影</div>
            <div class="myFlex_x">影院</div>
            <div class="myFlex_x">演出</div>
            <div class="myFlex_x">榜单</div>
            <div class="myFlex_x">热点</div>
            <div class="myFlex_x">商城</div>


        </div>
        <div class="app myFlex_x">
            <img src="<%=basePath%>/img/phone.png">
            <span>下载APP</span>
        </div>
        <div class="search myFlex_x">
            <input class="searchSelect" type="text" placeholder="找影视剧，影人,影院">
            <input class="searchBut" type="submit" value="">
        </div>
        <div class="user myFlex_x">
            <c:if test="${sessionScope.user==null}">
                <span class="login">登录</span>
                <span class="registry" style="margin-left: 15px">注册</span>
            </c:if>
            <c:if test="${sessionScope.user!=null}">
                <span>欢迎：${sessionScope.user.userName}</span>
                <span class="loginOut" style="margin-left: 15px;color: red">注销</span>
            </c:if>
        </div>
    </div>
</div>
<script>
    //初始化
    layui.use(['jquery'],function (){
        //组件初始化
        var $=layui.jquery;
        //点击搜索
        $(".searchBut").click(function () {
            var movieName=$(".searchSelect").val();
            window.location.href="<%=basePath%>/getMovieByMovieName?movieName="+movieName+"&currPage=1&pageSize=10";
        })
        //点击登录按钮
        $(".login").click(function (){
            //打开登录窗口
            layer.open({
                type: 2,
                title: 'login',
                shadeClose: true,
                shade: 0.3,
                area: ['300px', '200px'],
                content: 'view/login.jsp'
            });
        })
        //点击注册按钮
        $(".registry").click(function (){
            //打开注册窗口
            layer.open({
                type: 2,
                title: 'registry',
                shadeClose: true,
                shade: 0.3,
                area: ['300px', '200px'],
                content: 'view/registry.jsp'
            });
        })
        //注销
        $(".loginOut").click(function () {
            layer.confirm('确定注销?', function(index){
                //do something
                $.ajax({
                    url:"<%=basePath%>/loginOut",
                    success:function (result) {
                        if(result){
                            layer.msg("注销成功",{
                                icon:1,
                                time:2000
                            },function (){
                                layer.close(index);
                                window.location.reload();
                            })
                        }else {
                            layer.msg("注销失败");
                        }
                    }
                })
            });
        })
    })
</script>
</body>
</html>
