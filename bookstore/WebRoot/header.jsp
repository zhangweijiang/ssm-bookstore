<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- navbar -->
<nav class="navbar masthead-navbar navbar-fixed-top" id="masthead-navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">B+</a>
        </div>

        <div class="masthead-navbar-btn navbar-right dropdown">
         	<c:if var="result" test="${empty user.username}">
	            <a class="btn btn-default btn-white" href="login.jsp">登录</a>
            	<a class="btn btn-primary btn-blue" href="register.jsp">注册</a>
	        </c:if>
	        <c:if test="${!result}">
	        	<a class="tx dropdown-toggle" href="" data-toggle="dropdown" >
                <img class="userTx" src="images/person/${user.tx}" alt=""/>
	            </a>
	            <ul class="dropdown-menu animated fadeInRight m-t-xs">
	                <li>
	                    <a href="userSetting.jsp">个人资料</a>
	                </li>
	                <li>
	                    <a href="${pageContext.request.contextPath}/queryCart.action">购物车</a>
	                </li>
	                <li>
	                    <a href="${pageContext.request.contextPath}/queryOrder.action">查看订单</a>
	                </li>
	                <li class="divider"></li>
	                <li>
	                    <a href="exitUser.action">安全退出</a>
	                </li>
	            </ul>
	        </c:if>
        </div>
        <div class="navbar-collapse collapse navbar-right">
            <ul class="nav masthead-nav">
                <li class="active"><a href="index.jsp">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/queryBooks1.action">推荐</a></li>
                <li><a href="${pageContext.request.contextPath}/queryBooks.action">书库</a></li>
                <li><a href="about.jsp">关于B+</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- navbar END -->