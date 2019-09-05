<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="header">
    <!--头部中上面部分-->
    <div class="header_top">
        <!--头部中上面部分中间区域-->
        <div class="header_top_center">
            <!--头部中上面部分中间区域左边-->
            <div class="header_top_center_left">
                欢迎来到蚂蚁商城
            </div>
            <!--头部中上面部分中间区域右边-->
            <div class="header_top_center_right">
            <c:if test="${empty user}">
            	<a href="login.jsp">登录</a>
            	<a href="register.jsp">免费注册</a>
            </c:if>
            <c:if test="${!empty user }">
            	欢迎:${user.name}
            	<a href="UserAction_quit">退出</a>
            </c:if>
                
                
                <a href="#">购物车</a>
                <a href="#">我的订单</a>
            </div>
        </div>
    </div>
    <!--中部分-->
    <div class="header_center">
        <!--左侧logo-->
        <div class="header_center_log">
            <img src="images/index/log.png" alt="">
        </div>
        <!--中间搜索框-->
        <div class="header_center_search">
            <form action="GoodsAction_listGoodsByName" method="post">
                <input type="text" name="name" value="${name}" placeholder="请输入商品名..." class="t_input">
                <input type="submit" value="搜索" class="t_button">
            </form>
            <div class="hot">
                <a href="#">新款连衣裙</a>
                <a href="#">四件套</a>
                <a href="">潮流T恤</a>
                <a href="">时尚女鞋</a>
            </div>
        </div>
        <!--右侧二维码-->
        <div class="head_center_code">
            <img src="images/index/pcode.png" alt="">
        </div>
    </div>
    <!--下导航部分-->
    <div class="nav">
        <ul>
            <li><a href="index.jsp">商城首页</a></li>
            <li><a href="GoodsAction_listGoodsByName?currentPage=1">电脑办公</a></li>
            <li><a href="GoodsAction_listGoodsByName?currentPage=2">家具家居</a></li>
            <li><a href="GoodsAction_listGoodsByName?currentPage=3">鲜果时光</a></li>
            <li><a href="GoodsAction_listGoodsByName?currentPage=4">图书音像</a></li>
            <li><a href="GoodsAction_listGoodsByName?currentPage=5">母婴孕婴</a></li>
        </ul>
    </div>
</div>