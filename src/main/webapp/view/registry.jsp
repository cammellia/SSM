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
        .repassword{
            padding: 10px 0;
            height: 20px;
            border: none;
            border-bottom: 1px solid #a6a4a4;
            outline: none;
            background-color: transparent;
        }
        .phone{
            padding: 10px 0;
            height: 20px;
            border: none;
            border-bottom: 1px solid #a6a4a4;
            outline: none;
            background-color: transparent;
        }
        .sex{
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
    <form class="registryForm" action="#" onsubmit="return false">
        <table>
            <tr>
                <td><label>账户：</label></td>
                <td><input type="text" class="userName" name="userName" placeholder="请输入账户"></td>
            </tr>
            <tr>
                <td><label>密码：</label></td>
                <td><input type="password" class="password" name="password" placeholder="请输入密码"></td>
            </tr>
            <tr>
                <td><label>确认密码：</label></td>
                <td><input type="password" class="repassword" name="repassword" placeholder="请输入密码"></td>
            </tr>
            <tr>
                <td><label>手机：</label></td>
                <td><input type="text" class="phone" name="phone" placeholder="请输入手机号"></td>
            </tr>
            <tr>
                <td><label>性别：</label></td>
                <td><input type="text" class="sex" name="sex" placeholder="请输入性别"></td>
            </tr>
        </table>
        <div class="btn myFlex_x">
            <input type="submit" class="registry" value="注册">
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
        //repassword
        $('.repassword').change(function (){
            var repassword=$(this).val();
            var repasswordPatten=/^[a-zA-Z0-9]{6,12}$/;
            if(!repasswordPatten.test(repassword)){
                layer.tips('密码格式错误!', '.repassword',{tips:3});
            }
            if($('.repassword').val()!=$('.password').val()){
                layer.tips('两次密码不一致!', '.repassword',{tips:3});
            }
        })
        //phone
        $('.phone').change(function (){
            var phone=$(this).val();
            var phonePatten=/^[a-zA-Z0-9]{6,12}$/;
            if(!phonePatten.test(phone)){
                layer.tips('手机号格式错误!', '.phone',{tips:3});
            }
        })
        //sex
        $('.sex').change(function (){
            var sex=$(this).val();
            var sexPatten=/^[a-zA-Z0-9]{6,12}$/;
            if(!sexPatten.test(sex)){
                layer.tips('性别格式错误!', '.sex',{tips:3});
            }
        })
        //点击注册
        $(".registry").click(function () {
            //前端访问后端，并发送请求
            $.ajax({
                url:"<%=basePath%>/registry",//请求的地址
                data:$(".registryForm").serialize(),//请求的参数
                success:function (result) {//result访问后台成功后得到的数据
                    console.log(result)
                    if(result){
                        layer.msg('注册成功', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            //当你在iframe页面关闭自身时
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭

                        });
                    }else {
                        layer.msg("注册失败")
                    }
                }
            })
        })
    })
</script>
</body>
</html>