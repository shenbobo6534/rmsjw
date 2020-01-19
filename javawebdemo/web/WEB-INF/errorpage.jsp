<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/1/16
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>系统出错啦！</title>
    <style>
        #left{
            width: 30%;
            height: 100%;
            float: left;
            background-color: yellowgreen;
        }
        #right{
            width: 70%;
            float: right;
            background-color: greenyellow;
        }
    </style>
</head>
<body>
<div id="left">
    <p>
        <a href="/backed/index/home">后台管理系统</a>
    </p>
    <h1>欢迎${us.username}登录至后台管理</h1>
    <a href="/backed/product/getall">获取所有商品数据</a>
</div>
<div id="right">
    <h1>系统出错啦！请联系系统管理员！</h1>
</div>
</body>
</html>
