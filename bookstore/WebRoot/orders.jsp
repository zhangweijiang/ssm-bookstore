<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>H+ - 订单查看</title>

    <!-- Website Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"/>

    <!-- External Style -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Custom Style -->
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!--[if IE 6]>
    <script src="js/iepngfx.js" language="javascript" type="text/javascript"></script>
    <![endif]-->
</head>
<body class="gray-bg">

<!-- 引入头部文件header1.jsp -->
<%@ include file="header1.jsp"%>

<!-- orders -->
<div class="orders container">
    <h1 class="orders-title">订单查看</h1>
    <div class="orders-content">
        <div class="data-title">
            <div class="data-info">书籍信息</div>
            <div class="data-perPrice">单价(元)</div>
            <div class="data-number">数量</div>
            <div class="data-sum">金额(元)</div>
            <div class="sale-type">交易状态</div>
            <div class="data-operation">操作</div>
        </div>
        
        <c:forEach items="${orderList}" var="order">
        <div class="order-book-item">
            <div class="order-book-item-title">
                <div class="orderNum">
                    订单号：<span>${order.orderSn }</span>
                </div>
            </div>
            <div class="order-book-item-content">
                <div class="data-info">
                    <div class="data-pic">
                        <img src="images/book/${order.pic }">
                    </div>
                    <div class="data-name">
                        <p>${order.bookName}</p>
                    </div>
                </div>
                <div class="data-perPrice">
                    <div class="price_r">
                        <del></del>
                    </div>
                    <div class="rob">
                        <span>${order.rob }</span>
                    </div>
                </div>
                <div class="data-number">
                    <span>${order.number }</span>
                </div>
                <div class="data-sum">
                    <span>${order.subtotal}</span>
                </div>
                <div class="sale-type">
                <c:choose>
	                <c:when test="${order.tradingType==10 }">
	                    <span>未付款&nbsp;&nbsp;</span>              
	                </c:when>
	                <c:when test="${order.tradingType==20 }">
	                    <span>待发货&nbsp;&nbsp;</span>              
	                </c:when>
	                 <c:when test="${order.tradingType==30 }">
	                    <span>待收货&nbsp;&nbsp;</span>              
	                </c:when>
	                <c:otherwise>
				        <span>交易成功&nbsp;</span>
				    </c:otherwise>
			    </c:choose>
                </div>
                <div class="data-operation">
	                    <c:choose>
			                <c:when test="${order.tradingType==10 }">
			               	     <a href="${pageContext.request.contextPath}/updateOrderState.action?tradingType=20&id=${order.id}">付款</a>
			                    <a href="${pageContext.request.contextPath}/deleteOrder.action?id=${order.id}">取消订单</a>             
			                </c:when>
			                <c:when test="${order.tradingType==20 }">
			                    <a href=""></a>              
			                </c:when>
			                 <c:when test="${order.tradingType==30 }">
			                    <a href="${pageContext.request.contextPath}/updateOrderState.action?tradingType=40&id=${order.id}">确认收货</a>              
			                </c:when>
			                <c:otherwise>
						         <a href="${pageContext.request.contextPath}/deleteOrder.action?id=${order.id}">删除订单</a> 
						    </c:otherwise>
				       </c:choose>
                </div>
            </div>
        </div>
        </c:forEach> 
        
    </div>
</div>
<!-- orders END -->

<%@ include file="footer.jsp"%>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
    $('.dropdown-toggle').dropdown();
</script>

</body>
</html>