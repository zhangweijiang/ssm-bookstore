<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" import="edu.xit.ssm.po.Users,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html> 
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>B+ - 关于我们</title>

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

<!-- About -->
<div class="container about">
    <ol class="breadcrumb">
        <li><a href="index.jsp">首页</a></li>
        <li class="active">关于我们</li>
    </ol>
    <div class="about-main clearfix">
        <h3 class="about-title">About B+</h3>
        <img class="about-pic" src="images/screen1.png">
        <div class="about-content">
            <p>
                Our obsession to build beautiful & meaningful projects drives us forward every single day. The studio where digital applications meet beautiful graphic design!

                We keep things simple. The best way to work together is to create enthusiasm and keep the flow rolling throughout the whole process. Driven by the thought that collaborative & collective work gets the best results we believe in partnership with our clients. Every great project needs strong ideas and clients need inspiring people who can advise them about strategies and new movements in the creative world.

                It’s a pleasure for us to share our passion with you. Therefore we are delighted that you found your way to our portfolio. Visit our projects page and enjoy our pool of ideas, styles, showcase and artistic outpourings. Great design and projects last forever!
            </p>
            <i class="fa fa-home"></i> : B+<br>
            <i class="fa fa-phone"></i> : 180-4603-9197<br>
            <i class="fa fa-envelope"></i> : 969051142@qq.com
        </div>
    </div>
</div>
<!-- About END -->

<%@ include file="footer.jsp"%>


<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>