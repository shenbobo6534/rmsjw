<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/1/18
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="left.jsp"%>
<html>
<head>
    <title>增加商品</title>
    <style>
        #right{
            width: 75%;
            float: right;
        }
    </style>
</head>
<body>
<div id="right">
    <form action="/backed/product/addone">
        <input type="text" placeholder="填写需要增加的商品名称" name="pname">
        <input type="text" placeholder="商品定价" name="price">
        <input type="number" placeholder="商品库存" name="pnum">
        <input type="submit" value="增加商品">
    </form>
</div>


</body>
</html>
