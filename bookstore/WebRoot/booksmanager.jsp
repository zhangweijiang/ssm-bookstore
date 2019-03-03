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

<!-- Modal -->
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                <form class="user-detail" id="user-detail1" method="post" action="${pageContext.request.contextPath}/insertSelective.action" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="bookName">书籍名</label>
                        <input type="text" class="form-control" name="bookName" id="bookName" placeholder="bookName" required >
                    </div>
                    <div class="form-group">
                        <label for="author">作者</label>
                        <input type="text" class="form-control" name="author" id="author" placeholder="author" required>
                    </div>
                    <div class="form-group">
                        <label for="pub">出版社</label>
                        <input type="text" class="form-control" name="pub" id="pub" placeholder="pub" required>
                    </div>
                    <div class="form-group">
                        <label for="rob">书籍原价</label>
                        <input type="text" class="form-control" name="rob" id="rob" placeholder="rob" required pattern="^[0-9]+\.?[0-9]*$" title="请填写正确的价格">
                    </div>
                    <div class="form-group">
                        <label for="price">书籍现价</label>
                        <input type="text" class="form-control" name="price" id="price" placeholder="price" required pattern="^[0-9]+\.?[0-9]*$" title="请填写正确的价格">
                    </div>
                    <div class="form-group">
                        <label for="detail">书籍描述</label>
                        <input type="text" class="form-control" name="detail" id="detail" placeholder="detail" required>
                    </div>
                    <div class="form-group">
                        <label for="pic">书籍图片</label>
                        <input class="btn btn-xs btn-default form-control" type="button" value="上传图片"
                               onclick="$('#previewImg').click();">
                        <input class="hidden" type="file" id="previewImg" name="file"  >
                    </div>
                    <input class="btn btn-info submit" type="submit" value="保存">
                </form>
            </div>
        </div>
    </div>
</div> 


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel1">Modal title</h4>
            </div>
            <div class="modal-body">
                <form class="user-detail" id="user-detail2" method="post" action="${pageContext.request.contextPath}/updateBookById.action" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="bookName">书籍名</label>
                        <input type="hidden" id="id1" name="id">
                        <input type="text" class="form-control" name="bookName" id="bookName1" placeholder="bookName" required >
                    </div>
                    <div class="form-group">
                        <label for="author">作者</label>
                        <input type="text" class="form-control" name="author" id="author1" placeholder="author" required>
                    </div>
                    <div class="form-group">
                        <label for="pub">出版社</label>
                        <input type="text" class="form-control" name="pub" id="pub1" placeholder="pub" required>
                    </div>
                    <div class="form-group">
                        <label for="rob">书籍原价</label>
                        <input type="text" class="form-control" name="rob" id="rob1" placeholder="rob" required pattern="^[0-9]+\.?[0-9]*$" title="请填写正确的价格">
                    </div>
                    <div class="form-group">
                        <label for="price">书籍现价</label>
                        <input type="text" class="form-control" name="price" id="price1" placeholder="price" required pattern="^[0-9]+\.?[0-9]*$" title="请填写正确的价格">
                    </div>
                    <div class="form-group">
                        <label for="detail">书籍描述</label>
                        <input type="text" class="form-control" name="detail" id="detail1" placeholder="detail" required>
                    </div>
                    <div class="form-group">
                        <label for="pic">书籍图片</label>
                        <input class="btn btn-xs btn-default form-control" type="button" value="上传图片"
                               onclick="$('#previewImg1').click();">
                        <input class="hidden" type="file" id="previewImg1" name="file"  >
                    </div>
                    <input class="btn btn-info submit" type="submit" value="保存">
                </form>
            </div>
        </div>
    </div>
</div>

<div id="right-content" class="right-content">
    <div class="content">
        <div id="page_content">
            <h2 class="cp_title">书籍信息管理</h2>
            <a class="btn btn-info add" href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i>添加书籍</a>
            <table class="table">
                <thead>
                <tr>
                    <th style="width:10%;">书籍名</th>
                    <th style="width:10%;">作者</th>
                    <th style="width:10%;">出版社</th>
                    <th style="width:5%;">书籍原价</th>
                    <th style="width:5%;">书籍现价</th>
                    <th style="width:40%;">书籍描述</th>
                    <th style="width:10%;">书籍图片</th>
                    <th style="width:10%;">操作</th>
                </tr>
                </thead>
                <tbody>
	                <c:forEach items="${bookList}" var="book">
	                	<tr>
		                    <th style="vertical-align:middle;width:10%;">${book.bookName }</th>
		                    <th style="vertical-align:middle;width:10%;">${book.author }</th>
		                    <th style="vertical-align:middle;width:10%;">${book.pub}</th>
		                    <th style="vertical-align:middle;width:5%;">${book.rob }</th>
		                    <th style="vertical-align:middle;width:5%;">${book.price }</th>
		                    <th style="vertical-align:middle;width:40%;">${book.detail }</th>
		                    <th style="vertical-align:middle;width:10%;"><img src="${pageContext.request.contextPath}/images/book/${book.pic}" style="max-width:150px;"/></th>
		                    <th style="vertical-align:middle;width:10%;">
		                    	<input type="hidden" value="${book.id}"/>
		                        <a href="javascript:void(0);" data-toggle="modal" data-target="#myModal2" class="edit">修改</a>
		                        <a href="${pageContext.request.contextPath}/deleteByPrimaryKey.action?id=${book.id}" onclick="return confirm('您确认删除该书籍吗?')">删除</a>
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

<!-- jQuery Validation plugin javascript -->
<script src="js/plugins/validate/jquery.validate.min.js"></script>
<script src="js/plugins/validate/messages_zh.min.js"></script>

<!-- Validate -->

 <script>
	$(function(){
		 $('.edit').click(function(){
			var id=$(this).prev('input').val();
			$.ajax({
				url:"${pageContext.request.contextPath}/selectBookById.action",
					type:"get",
					data:{"id":id},
					success:function(data){
						$('#id1').val(data['id']);
						$('#bookName1').val(data['bookName']);
						$('#author1').val(data['author']);
						$('#pub1').val(data['pub']);
						$('#rob1').val(data['rob']);
						$('#price1').val(data['price']);
						$('#detail1').val(data['detail']);
					},error:function(data){
						alert('ajax请求出错了哦！');
					}
				}); 
		}); 
	});
</script> 

</body>
</html>