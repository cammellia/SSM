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
    <link rel="stylesheet" href="<%=basePath%>/css/top.css">
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
    <style>
        .main{
            color: #737171;
        }
    .userName{
        padding: 10px 0;
        height: 20px;
        border: none;
        border-bottom: 1px solid #a6a4a4;
        outline: none;
        background-color: transparent;
    }
    .password{
        padding: 10px 0;
        height: 20px;
        border: none;
        border-bottom: 1px solid #a6a4a4;
        outline: none;
        background-color: transparent;
    }
    .btn input{
        background-color: #01aaed;
        border: none;
        outline: none;
        color: #fff;
        padding: 10px 20px;
        margin: 5px;
        cursor: pointer;
        border-radius: 5px;
    }
    </style>
</head>
<body>
  <div class="main">
      <form class="loginForm" action="#" onsubmit="return false">
      <table>
          <tr>
              <td><label>账户：</label></td>
              <td><input type="text" class="userName" name="userName" placeholder="请输入账户"></td>
          </tr>
          <tr>
              <td><label>密码：</label></td>
              <td><input type="password" class="password" name="password" placeholder="请输入密码"></td>
          </tr>
      </table>
      <div class="btn myFlex_x">
          <input type="submit" class="login" value="登录">
          <input type="reset" class="" value="重置">
      </div>
      </form>
  </div>
<script>
    layui.use(['jquery'],function (){
        var $=layui.jquery;
        $('.userName').change(function (){
            var userName=$(this).val();
            var userNamePatten=/^[a-zA-Z0-9]{6,12}$/;
            if(!userNamePatten.test(userName)){
                layer.tips('账户格式错误!', '.userName',{tips:3});
            }
        })
        //当用户输入密码是，进行验证
        $('.password').change(function (){
            var password=$(this).val();
            var passwordPatten=/^[a-zA-Z0-9]{6,12}$/;
            if(!passwordPatten.test(password)){
                layer.tips('密码格式错误!', '.password',{tips:3});
            }
        })
        //点击登录
        $(".login").click(function () {
            //前端访问后端，并发送请求
            $.ajax({
                url:"<%=basePath%>/login",//请求的地址
                data:$(".loginForm").serialize(),//请求的参数
                success:function (result) {//result访问后台成功后得到的数据
                    console.log(result)
                    if(result){
                        layer.msg('登录成功', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            //当你在iframe页面关闭自身时
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭

                        });
                    }else {
                        layer.msg("账户密码错误")
                    }
                }
            })
        })
    })
</script>
</body>
</html>