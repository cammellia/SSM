<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    /*获取项目的根路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
    /*basePath就是得到的跟路径类似于：http://localhost:8081/test/*/
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/css/seat.css">
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
    <script src="<%=basePath%>/js/jquery-3.6.3.min.js"></script>
    <script src="<%=basePath%>/js/decimal.js"></script>
    <script type="application/javascript js mjs">
        import Decimal from "../js/decimal.mjs";
    </script>
</head>
<body>
<div class="main">
    <div class="content">
        <div class="steps">
            <!-- 第一部分 -->
            <div class="step">
                <div class="step-progress left done">
                    <div class="step-line"></div>
                    <span class="step-num">1</span>
                </div>
                <div class="step-text">
                    <span>选择影片场次</span>
                </div>
            </div>
            <!-- 第二部分 -->
            <div class="step">
                <div class="step-progress done">
                    <div class="step-line"></div>
                    <span class="step-num">2</span>
                </div>
                <div class="step-text">
                    <span>选择座位</span>
                </div>
            </div>
            <!-- 第三部分 -->
            <div class="step">
                <div class="step-progress">
                    <div class="step-line"></div>
                    <span class="step-num">3</span>
                </div>
                <div class="step-text">
                    <span>14分钟内付款</span>
                </div>
            </div>
            <!-- 第四部分 -->
            <div class="step">
                <div class="step-progress right">
                    <div class="step-line"></div>
                    <span class="step-num">4</span>
                </div>
                <div class="step-text">
                    <span>影院取票观影</span>
                </div>
            </div>
        </div>

       <div class="choose">
            <div class="seat">
                    <div class="seat-example myFlex_x">
                        <div class="selectable">
                            <img src="../img/kxzw.png" height="30px"; width="40px">
                            <span style="color: #bbbaba">可选座位</span>
                        </div>
                        <div class="sold">
                            <img src="../img/yszw.png" height="30px"; width="40px">
                            <span style="color: #bbbaba">已售座位</span>
                        </div>
                        <div class="selected">
                            <img src="../img/yxzw.png" height="30px"; width="40px">
                            <span style="color: #bbbaba">已选座位</span>
                        </div>
                        <div class="couple">
                            <img src="../img/qlzw.png" height="30px"; width=65px">
                            <span style="color: #bbbaba">情侣座位</span>
                        </div>
                    </div>
                <hr style="width: 550px"><br><br>
                <div class="seatView">
                    <table style="border-spacing: 20px;border-collapse: separate">
                        <c:forEach items="${requestScope.seat.seatList}" var="seat" varStatus="statu1">
                            <tr>
                                <c:forEach items="${seat}" var="item" varStatus="statu2">
                                    <td>
                                        <c:if test="${item==0}">
                                            <img data-statu2="${statu2.index}" data-start1="${statu1.index}" data-type="${item}" class="wei" src="<%=basePath%>/img/kxzw.png"  height="30px"; width=40px">
                                        </c:if>
                                        <c:if test="${item==1}">
                                            <img src="<%=basePath%>/img/yszw.png"  height="30px"; width=40px">
                                        </c:if>
                                    </td>
                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <div class="confirm ">
                <div class="movieInformation">
                    <div class="movieImg"><img src="<%=basePath%>/img/${requestScope.movie.movieImg}" width="70%"; height="85%";></div>
                    <div class="movieInfo"><br><br>
                        <span><h3>${requestScope.movie.movieName}</h3></span>
                        <span style="color: #bbbaba">类型:</span>
                        <span>奇幻，动作，冒险</span><br><br>
                        <span style="color: #bbbaba">时长:</span>
                        <span>130分钟</span>
                    </div>
                </div>
                <div class="cinemaInformation">
                    <p style="color: #bbbaba">影院:<span style="color: #0c0c0c">金逸影院</span></p>
                    <p style="color: #bbbaba">影厅:<span style="color: #0c0c0c">${requestScope.yingTing.yingting}</span></p>
                    <p style="color: #bbbaba">版本:<span style="color: #0c0c0c">${requestScope.yingTing.language}</span></p>
                    <p style="color: #bbbaba">场次:<span style="color: red">今天14:55</span></p>
                    <p style="color: #bbbaba">票价:<span class="price" style="color: red">${requestScope.movie.getNewPrice(requestScope.yingTing.discount)}</span><span style="color: #0c0c0c">张</span></p>
                </div>
                <div class="declare">
                    <span style="color: #bbbaba">座位：一次最多选6个座位</span>
                    <p style="margin-top: 40px; text-align: center">请<span style="color: red">点击左侧</span>座位图选择座位</p>
                    <p style="margin-top: 50px">总价:<span style="color: red;margin-left: 5px">￥</span><span class="total" style="color: red;font-size: 20px">0</span></p>
                </div>
                <div class="confirmBtn myFlex_x">
                    <p style="text-align: center"><span style="color: #bbbaba">手机号:</span><span>135****6881</span></p>
                    <button class="btnConfirm ">确认选择</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //全局属性
    var count=0;//记录用户选择座位的个数
    //获取当前电影的单价，折后单价
    var price=new Decimal($(".price").text());
    //总价
    var total=0;
    //用户选择座位
    $(".wei").click(function () {
        //获取当前座位的状态
        var type=$(this).attr("data-type");
        var wei=$(this).attr("data-statu1")+$(this).attr("data-statu2");
        if(type=='0'){
            if(count<6){
                //改变这个座位图片路径
                $(this).attr("src","<%=basePath%>/img/yxzw.png");
                //改变标签状态
                $(this).attr("data-type","2");
                count++;
                //计算总价
                total=price.mul(new Decimal(count)).toFixed(2);
            }else {
                layer.msg("一次最多可选6个座位")
            }
        }else {
            $(this).attr("src","<%=basePath%>/img/kxzw.png");
            $(this).attr("data-type","0");
            count--;
            //计算总价
            total=price.mul(new Decimal(count)).toFixed(2);
        }
        //将总价展示在页面中
        $(".total").text(total);

    })
    //添加座位
    function addseat(s) {
        for(var i=0;  i<seatArray.length;i++){
            if(seatArray[i]==undefined){
                seatArray[1]=s;
                break;
            }
        }
    }
    //删除座位
    function deleteseat(s) {
        for(var i=0;  i<seatArray;i++){
            if(seatArray[i]==s){
                seatArray[1]=undefined;
                break;
            }
        }
    }
    //点击支付
    $(".btnConfirm").click(function () {
        window.location.href="<%=basePath%>/goPay";
    })
</script>
</body>
</html>