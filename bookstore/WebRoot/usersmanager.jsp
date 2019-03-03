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
    <title>B+ - 后台管理系统</title>
    <!-- Website Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"/>

    <!-- External Style -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Custom Style -->
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css" type="text/css" media="screen"/>

</head>
<body>
<c:if var="result" test="${empty manager.managerName}">
		<script>
			alert("请先登录");
			window.location.href = 'managerLogin.jsp';
		</script>
	</c:if>
<!--顶部-->
<div class="top">
    <div style="float: left">
        <span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #fff">B+后台管理系统</span>
    </div>
</div>
<!--顶部结束-->
<!--菜单-->
<div class="left-menu">
    <ul id="menu">
        <li class="menu-list">
            <ul>
                <li><a href="${pageContext.request.contextPath}/queryUsers.action">用户信息管理</a></li>
                <li><a href="${pageContext.request.contextPath}/queryBooks2.action">书籍信息管理</a></li>
                <li><a href="${pageContext.request.contextPath}/queryOrder1.action">订单信息管理</a></li>
                <li><a href="${pageContext.request.contextPath}/exitManager.action">退出</a></li>
            </ul>
        </li>
    </ul>
</div>



<div id="right-content" class="right-content">
    <div class="content">
        <div id="page_content">
            <h2 class="cp_title">用户信息管理</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>手机号</th>
                    <th>邮箱</th>
                    <th>地址</th>
                    <th>头像</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList}" var="user">
	                	<tr>
                    <th style="vertical-align:middle;">${user.username }</th>
                    <th style="vertical-align:middle;">${user.password }</th>
                    <th style="vertical-align:middle;">${user.phone }</th>
                    <th style="vertical-align:middle;">${user.email }</th>
                    <th style="vertical-align:middle;">${user.address }</th>
                    <th style="vertical-align:middle;"><img src="images/person/${user.tx}" style="max-width:100px;"></th>
                    <th style="vertical-align:middle;">
                        <a href="${pageContext.request.contextPath}/deleteUser.action?id=${user.id}" onclick="return confirm('您确认删除该用户吗?')">删除</a>
                    </th>
                </tr>
	            	</c:forEach>
                
                </tbody>
            </table>
			<div style="height:33px;clear:both;"></div>
        </div>
    </div>
</div>


<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/tendina.min.js"></script>
</body>
</html>