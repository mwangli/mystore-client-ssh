<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta charset="UTF-8">
        <title>商品列表</title>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="stylesheet" href="css/common.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/pageStyle.css">
        <link rel="stylesheet" href="css/list.css">
    </head>
</head>
<body>
<!--头部-->
<%@ include file="header.jsp" %>
<!--商品-->
<div id="hot_goods">
    <h3>热卖商品</h3>
    <div class="hot_goods_body">
        <ul>
            <c:if test="${empty list}">
                沒有商品
            </c:if>
            <c:forEach items="${list }" var="pro">
                <li><a href='detail.jsp'> <img
                        src="/goods_images/${pro.image}"/>
                    <p>${pro.name }</p> <i class='yuan'>￥</i> <span class='price'>${pro.price}</span>
                </a></li>
            </c:forEach>
        </ul>

    </div>
    <div id="page" class="page_div"></div>
</div>
<!--底部-->
<%@ include file="footer.jsp" %>
<!--分页代码-->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/paging.js"></script>
<script>
    $("#page").paging({
        pageNo: ${currentPage},
        totalPage: ${totalPage},
        totalSize: ${totalCount},
        callback: function (num) {
            window.location.href = "GoodsAction_listGoodsByName?name=${name}&currentPage=" + num;
        }
    })
</script>
</body>
</html>