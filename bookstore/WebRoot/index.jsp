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
    <title>B+ - 首页</title>

    <!-- Website Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"  />

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

<!-- 引入头部文件 -->
<%@ include file="header.jsp"%>

<!-- firstScreen -->
<div class="firstScreen">
    <!-- Carousel -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="images/banner01.jpg" alt="First slide">
            </div>
            <div class="item">
                <img class="second-slide" src="images/banner02.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img class="third-slide" src="images/banner03.jpg" alt="Third slide">
            </div>
        </div>
    </div>
</div>
<!-- firstScreen END -->

<!-- secondScreen -->
<div class="secondScreen text-center">
    <div class="container">
        <h1>为你提供了人生的一切</h1>
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-mortar-board"></div>
                    <h3>哲学</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-users"></div>
                    <h3>社交学</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-camera"></div>
                    <h3>摄影学</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-pie-chart"></div>
                    <h3>统计学</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-cutlery"></div>
                    <h3>烹饪学</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-paint-brush"></div>
                    <h3>绘画学</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-music"></div>
                    <h3>音乐</h3>
                </div>
            </div>
            <div class="col-xs-4 col-sm-3">
                <div class="icon">
                    <div class="fa fa-medkit"></div>
                    <h3>医疗</h3>
                </div>
            </div>
        </div>
        <a class="btn btn-lg btn-blue col-lg-4 col-lg-offset-4" href="recommended.jsp">推荐书籍</a>
    </div>
</div>
<!-- secondScreen END -->

<!--thirdScreen-->
<div class="thirdScreen">
    <div class="container">
        <h1>随时随地<br>找到你需要的书籍</h1>
        <img src="images/tu1.png" alt=""/>
    </div>
</div>
<!--thirdScreen END-->

<!-- fourthScreen -->
<div class="fourthScreen">
    <div class="container text-center">
        <h1>已载入超过十个行业的相关书籍</h1>
        <div class="row">
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic07.jpg');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">项目开发</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic08.png');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">广告</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic09.png');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">精细制造</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic10.png');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">兴趣组织</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic11.png');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">教育机构</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic12.png');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">生活百科</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content" href="#" style="background: url('images/pic13.png');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">设计</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="box-item">
                    <a class="box-content more" href="#" style="background: url('images/pic03.jpg');background-size: 100%;">
                        <div class="content">
                            <p class="cotegory">10+</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- fourthScreen END -->

<%@ include file="footer.jsp"%>

<!-- Mainly scripts -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- Custom scripts -->
<script type="text/javascript" src="js/index.js"></script>
</body>
</html>