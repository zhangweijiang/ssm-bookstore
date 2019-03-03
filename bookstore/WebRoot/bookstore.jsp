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
    <title>B+ - 书库</title>

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

<%@ include file="header1.jsp"%>
<!-- BookStore -->
<div class="container bookStore">
    <form class="search input-group form-group-lg" action="${pageContext.request.contextPath}/bookByNanme.action" method="post">
        <input class="form-control  search-text" type="text" name="bookname" placeholder="请输入关键字...">
        <span class=" input-group-btn">
            <button class="btn btn-default search-btn btn-lg" type="submit">
                <span class="fa fa-search fa-lg"></span>
            </button>
        </span>
    </form>
    <ol class="breadcrumb">
        <li><a href="index.jsp">首页</a></li>
        <li class="active">书库</li>
    </ol>
    <div class="all-books row">
        <div class="all-title">
            <span class="fa fa-book"></span>全部书籍
        </div>
        <div class="all">
        	<c:forEach items="${bookList}" var="book">
                <div class="col-md-2 book">
            
	                <a class="img"  href="${pageContext.request.contextPath}/bookdetail.action?id=${book.id}">
	                    <img alt="" src="images/book/${book.pic }">
	                </a>
	
	                <p class="name">
	                    <a  href="${pageContext.request.contextPath}/bookdetail.action?id=${book.id}">${book.bookName }</a>
	                </p>
	
	                <p class="author">${book.author}</p>
	
	                <p class="price">
	                    <span class="rob">¥ ${book.rob }</span>
	                    <span class="price_r">
	                        <del>¥ ${book.price}</del>
	                    </span>
	                </p>
	            </div>
            </c:forEach>
            
        </div>
    </div>
</div>
<!-- BookStore END -->

<%@ include file="footer.jsp"%>


<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>