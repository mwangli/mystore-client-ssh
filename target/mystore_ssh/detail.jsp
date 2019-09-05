<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/detail.css">
</head>
<body>
<!--头部-->
<%@ include file="header.jsp"%>
<!--面包屑导航-->
<div id="bread_crumb">
    <div class="bread_center">
        <a href="index.jsp">首页</a>
        <small>&gt</small>
        <a href="#">数码家电</a>
        <small>&gt</small>
        <a href="#">智能手机</a>
    </div>
</div>
<!--详情展示-->
<div id="detail">
    <div class="detail_img">
        <img src="images/goods/bigPic.png" alt="">
    </div>
    <div class="detail_price">
        <h3>小米 红米5A 全网通版 2G+16G 浅蓝色 移动联通电信4G手机 双卡双待</h3>
        <div class="goods_price">
            <p class="ori_price">原价：￥699.00</p><em></em>
            <p>现价：<i class="yuan">￥</i><span class="price">588.00</span></p>

        </div>
        <div class="goods_amount">购买数量
            <input type="text" value="1">
        </div>
        <div class="goods_buy">
            <input type="submit" value="加入购物车">
        </div>
    </div>
</div>
<!--商品介绍-->
<div id="introduce">
    <h3>商品详情</h3>
    <div class="introduce_img">
        <img src="images/goods/detail_pic1.png" alt="">
        <img src="images/goods/detail_pic2.png" alt="">

    </div>
</div>
<!--底部-->
<%@ include file="footer.jsp"%>
</body>
</html>