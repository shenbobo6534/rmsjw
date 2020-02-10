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
            width: 20%;
            height: 100%;
            float: left;
            background-color: #343434;
        }
        /*#right{*/
            /*width: 80%;*/
            /*float: right;*/
            /*background-color: greenyellow;*/
        /*}*/
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
        .t3 a{
            font-size: 20px;
            text-decoration: none;
            color: darkmagenta;
            padding-left: 30px;
        }
        #d1{
            font-size: 30px;
            text-decoration: none;
            color: white;
        }
        #d2{
            font-size: 30px;
            text-decoration: none;
            color: white;
        }
        #d3{
            font-size: 30px;
            text-decoration: none;
            color: white;
        }
        #d4{
                  font-size: 30px;
                  text-decoration: none;
                  color: white;
              }
        .xian{
            border-bottom: 1px black solid;
        }
        li{
            display: none;
        }

    </style>
</head>
<body>
<div id="left">
    <div id="t1">
            <a href="/backed/index/home">后台管理系统</a>
    </div>
  <div id="t2">
      <h2>欢迎${us.username}登录/h2>
  </div>

    <ul class="t3">
    <div id="d1">商品模块</div>
    <li class="s2" ><a href="/backed/product/getall">商品列表</a></li>
    <li class="s2" ><a href="/backed/index/addproduct">新增商品</a></li>
    </ul>
    <div class="xian"></div>

    <ul class="t3">
        <div id="d2">会员管理</div>
        <li class="s3"><a href="/backed/product/getall">商品列表</a></li>
        <li class="s3"><a href="/backed/index/addproduct">新增商品</a></li>
    </ul>
    <div class="xian"></div>

    <ul class="t3">
        <div id="d3">订单管理</div>
        <li class="s4"><a href="/backed/product/getall">商品列表</a></li>
        <li class="s4"><a href="/backed/index/addproduct">新增商品</a></li>
    </ul>
    <div class="xian"></div>

    <ul class="t3">
        <div id="d4">订单管理</div>
        <li class="s5"><a href="/backed/product/getall">商品列表</a></li>
        <li class="s5"><a href="/backed/index/addproduct">新增商品</a></li>
    </ul>


</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script>
    $("#d1").click(function () {
        $(".s2").toggle();
    });
    $("#d2").click(function () {
        $(".s3").toggle();
    });
    $("#d3").click(function () {
        $(".s4").toggle();
    });
    $("#d4").click(function () {
        $(".s5").toggle();
    });
</script>
</html>
