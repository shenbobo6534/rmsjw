<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/1/15
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorpage.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="left.jsp"%>
<html>
<head>
    <title>商品列表</title>
    <style>
        /*#left{*/
            /*width: 30%;*/
            /*height: 100%;*/
            /*float: left;*/
            /*background-color: yellowgreen;*/
        /*}*/
        #right{
            width: 70%;
            float: right;
            background-color: greenyellow;
        }
        #se{
            width: 200px;
            height: 30px;
            border-radius: 5px;
            outline: none;
            border: 1.1px black solid;
        }
        #se1{
            width: 50px;
            height: 30px;
            outline: none;
            /*border: 1.1px black solid;*/
        }
        #tb{
            border-collapse:collapse;
        }
        .tt3,.tt4{
            border:1px solid black;
            width: 100px;
            height: 60px;
        }
        /*.tt1{*/
            /*height: 50px;*/
        /*}*/
        /*.tt2{*/
            /*width: 20%;*/
            /*height: 50px;*/
        /*}*/
        .tt4{
           text-align: center;
        }
    </style>
</head>
<body>
<%--<div id="left">--%>
    <%--<p>--%>
        <%--<a href="/backed/index/home">后台管理系统</a>--%>
    <%--</p>--%>
    <%--<h1>欢迎${user.username}登录至后台管理</h1>--%>
    <%--<a href="/backed/product/getall">获取所有商品数据</a>--%>
<%--</div>--%>
<div id="right">
    <form action="/backed/product/fuzzysearch" method="post">
        <input id="se" type="text" name="key">
        <input id="se1" type="submit" value="提交">
    </form>

    <c:if test="${not empty plist.data}">
        <table id="tb">
            <tr class="tt1">
                <th class="tt3">序号</th>
                <th class="tt3">商品名称</th>
                <th class="tt3">商品价格</th>
                <th class="tt3">商品库存</th>
                <th class="tt3">商品在售</th>
                <th class="tt3">商品创建时间</th>
                <th class="tt3">商品更新时间</th>
            </tr>
            <c:forEach items="${plist.data}" var="p">
                <tr class="tt2">
                    <td class="tt4">${p.id}</td>
                    <td class="tt4">${p.pname}</td>
                    <td class="tt4">${p.price}</td>
                    <td class="tt4">${p.pnum}</td>
                    <td class="tt4">${p.type}</td>
                    <td class="tt4">${p.create_time}</td>
                    <td class="tt4">${p.update_time}</td>
                    <td>
                        <button onclick="toType(this)">上/下架</button>
                        <button>修改</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <c:if test="${empty plist.data}">
        没有更多商品
    </c:if>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script>
    function toType(but) {
        var id2 =  $(but).parent().parent().children().first().text();
        $.get(
            "/backed/product/totype",
            {id:id2},
            function (data) {
                var num = Number(data);
                if (data>0){
                    $(but).parent().parent().children().first().nextAll(".pt").text(1);
                }
            }
        )
    }
</script>
</html>
