<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/1/18
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>title</title>
    <style>
        #left{
            width: 25%;
            height: 100%;
            float: left;
            background-color: #343434;
        }
        #right{
            width: 70%;
            float: right;
            background-color: greenyellow;
        }
        #t1{
            text-align: center;
            border: 1px black solid;
        }
        #t1 a{
            font-size:40px;
            text-decoration: none;
            color: black;
        }
        #t2{
            text-align: center;
        }
        #t3 a{
            font-size: 30px;
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body>
<div id="left">
    <div id="t1">
            <a href="/backed/index/home">后台管理系统</a>
    </div>
  <div id="t2">
      <h2>欢迎${us.username}登录至后台管理</h2>
  </div>
    <ul id="t3">
        <li><a href="/backed/product/getall">商品列表</a></li>
        <li><a href="/backed/index/addproduct">新增商品</a></li>
    </ul>


</div>

</body>
</html>
