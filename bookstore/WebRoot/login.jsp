<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>B+ - 登录</title>

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
<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>
            <a href="index.jsp">
                <h1 class="logo-name">B+</h1>
            </a>
        </div>
        <h3>欢迎使用 B+</h3>
		${error }${username }
        <form class="m-t" role="form" action="${pageContext.request.contextPath}/login.action" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="用户名" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="密码" required>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
            <p class="text-muted text-right">
                <a href="register.jsp">注册一个新账号</a>
            </p>

        </form>
    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</body>
</html>