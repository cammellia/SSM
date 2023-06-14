<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layPage快速使用</title>
    <link rel="stylesheet" href="<%=basePath%>/css/public.css" media="all">
    <link rel="stylesheet" href="<%=basePath%>/layui/layui.css" media="all">
    <style>
        .movie{
            width: 250px;
        }
    </style>
</head>
<body>
<div class="main myFlex_x">
    <div>
        <c:forEach items="${requestScope.moviePageInfo}" var="movie">
            <div class="movie myFlex_x">
                <img src="<%=basePath%>/img/${movie.movirImg}">
                <span>${movie.movieName}</span>
            </div>
        </c:forEach>
    </div>
</div>
<div id="test1"></div>

<script src="<%=basePath%>/layui/layui.js"></script>
<script>
    layui.use('laypage', function(){
        var laypage = layui.laypage;

        //执行一个laypage实例
        laypage.render({
            elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: 50 //数据总数，从服务端得到
        });
    });
</script>
</body>
</html>