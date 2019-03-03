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
    <title>B+ - 个人信息</title>

    <!-- Website Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"/>

    <!-- External Style -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

   
    <script src="js/iepngfx.js"  type="text/javascript"></script>
   
</head>
<body class="gray-bg">

<!-- 引入头部文件header1.jsp -->
<%@ include file="header1.jsp"%>

<!-- UserSetting -->
<div class="userSetting container">
    <h1 class="userInfo-title">个人信息</h1>
    <div class="userInfoSetting">
       <form class="user-detail" method="post" action="${pageContext.request.contextPath}/updateUser.action" enctype="multipart/form-data">
        <div class="user-tx">
            <img id="tx" src="images/person/${user.tx}" alt=""/>
            <input class="btn btn-xs btn-default" type="button" value="修改头像" onclick="javascript:$('#file').click();">
            <input class="hidden" id="file" type="file" name="file" value="${user.tx}">
        </div>
            <input type="hidden" name="id" value="${user.id}">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" value="${user.username}" placeholder="username" readonly>
            </div>
            <div class="form-group">
                <label for="Password1">Password</label>
                <input type="password" class="form-control" id="Password1" name="password" value="${user.password }" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="Password2">Again Password</label>
                <input type="password" class="form-control" id="Password2"  value="${user.password}" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="tel" class="form-control" id="phone" name="phone" value="${user.phone}" placeholder="phone">
            </div>
            <div class="form-group">
                <label for="Email">Email address</label>
                <input type="email" class="form-control" id="Email" name="email" value="${user.email}" placeholder="Email">
            </div>
	    <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" id="address" name="address" value="${user.address}" placeholder="Address">
            </div>
            <input class="btn btn-info submit" type="submit" value="保存">
        </form>
    </div>
</div>
<!-- UserSetting END -->

<%@ include file="footer.jsp"%>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

 <script type="text/javascript">
    $('.dropdown-toggle').dropdown();
</script> 

</body>
</html>