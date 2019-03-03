<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" import="edu.xit.ssm.po.Users" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html> 
<head lang="zh-CN">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>B+ - 推荐</title>

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

<!-- MyFocus -->
<div class="container">
    <div id="myFocus"><!--焦点图盒子-->
        <div class="loading"><img src="images/loading.gif" alt="请稍候..."/></div>
        <!--载入画面(可删除)-->
        <div class="pic"><!--图片列表-->
            <ul>
                <li><a href="#1"><img src="images/mapper01.jpg" alt=""/></a></li>
                <li><a href="#2"><img src="images/mapper02.jpg" alt=""/></a></li>
                <li><a href="#3"><img src="images/mapper03.jpg" alt=""/></a></li>
                <li><a href="#4"><img src="images/mapper04.jpg" alt=""/></a></li>
                <li><a href="#5"><img src="images/mapper05.jpg" alt=""/></a></li>
            </ul>
        </div>
    </div>
</div>
<!-- MyFocus END -->

<!-- DisplayBOOK -->
<div class="display">
    <!-- NewBook -->
    <div class="NewBook">
        <div class="NewBook-title"></div>
        <div class="NewBook-content">
            <div class="row">
                <c:forEach items="${bookList1}" var="book1" step="4">
	                <div class="col-sm-3 book">
	                    <a class="img"  href="${pageContext.request.contextPath}/bookdetail.action?id=${book1.id}" >
	                        <img alt="" src="images/book/${book1.pic }">
	                    </a>
	
	                    <p class="name">
	                        <a  href="${pageContext.request.contextPath}/bookdetail.action?id=${book1.id}" title="">${book1.bookName }</a>
	                    </p>
	
	                    <p class="author">${book1.author}</p>
	
	                    <p class="price">
	                        <span class="rob">¥ ${book1.rob }</span>
	                        <span class="price_r">
	                            <del>¥ ${book1.price}</del>
	                        </span>
                    	</p>
                	</div>
            	</c:forEach>
            </div>
        </div>
    </div>
    <!-- AD -->
    <div class="ad row">
        <div class="col-sm-6">
            <img src="images/ad3.jpg" alt="">
        </div>
        <div class="col-sm-6">
            <img src="images/ad4.jpg" alt=""/>
        </div>
    </div>
    <!-- Recommended -->
    <div class="RecommendedBook">
        <h3 class="title"></h3>
        <div class="RecommendedBook-content">
            <div class="row">
                <c:forEach items="${bookList2}" var="book2" begin="1" end="8">
	                <div class="col-sm-3 book">
	                    <a class="img"  href="${pageContext.request.contextPath}/bookdetail.action?id=${book2.id}" >
	                        <img alt="" src="images/book/${book2.pic }">
	                    </a>
	
	                    <p class="name">
	                        <a  href="${pageContext.request.contextPath}/bookdetail.action?id=${book2.id}" title="">${book2.bookName }</a>
	                    </p>
	
	                    <p class="author">${book2.author}</p>
	
	                    <p class="price">
	                        <span class="rob">¥ ${book2.rob }</span>
	                        <span class="price_r">
	                            <del>¥ ${book2.price}</del>
	                        </span>
                    	</p>
                	</div>
            	</c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- DisplayBOOK END -->

<%@ include file="footer.jsp"%>


<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- External scripts -->
<script src="plugins/myFocus/myfocus-2.0.1.min.js"></script>
<!-- Custom scripts -->
<script type="text/javascript">
    //Setting
    myFocus.set({
        id: 'myFocus',//ID
        pattern: 'mF_fancy'//Style
    });
</script>
</body>
</html>