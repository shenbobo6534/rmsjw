<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/1/15
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <style>
        body{
            background: url("images/2.gif")no-repeat;
            background-size: 100% 100%;
        }
        #d1{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80%;
        }
        #tb{
            background-color: white;
            opacity: 0.8;
            width: 390px;
            height: 350px;
            border-radius: 25px;
            position: relative;
        }
        #tb1{
            position: absolute;
            top: 25%;
            left: 25%;
            width: 50%;
            height: 8%;
            border-radius: 3px;
            border: 1px solid black;
            outline: none;
        }
        #tb h1{
            position: absolute;
            top: 1%;
            left: 24%;
        }
        #tb2{
            position: absolute;
            top: 40%;
            left: 25%;
            width: 50%;
            height: 8%;
            border-radius: 3px;
            border: 1px solid black;
            outline: none;
        }
        #tb3{
            position: absolute;
            top: 60%;
            left: 25%;
            width: 50%;
            height: 12%;
            border-radius: 5px;
            border: 1px;
            outline: none;
        }

    </style>
</head>
<body>
<div id="d1">
<form action="/backed/user/login" method="post">
    <div id="tb">
        <h1>后台管理系统</h1>
    <div>
        <input id="tb1" type="text" placeholder="账户" name="username">
    </div>
    <div>
        <input id="tb2" type="password" placeholder="账户密码" name="password">
    </div>
    <div>
        <input id="tb3" type="submit" value="登录">
    </div>
    </div>
</form>
</div>

</body>
</html>
