<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>B+ - 注册</title>

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

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>
            <a href="index.jsp">
                <h1 class="logo-name">B+</h1>
            </a>
        </div>
        <h3>欢迎注册 B+</h3>

        <p>创建一个B+新账户</p>

        <form class="m-t" role="form" action="${pageContext.request.contextPath}/insertUser.action" method="post" id="signupForm">
            <div class="form-group">
                <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" onblur="yanzheng()" required>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
            </div>
            <div class="form-group">
                <input type="password" id="confirm_password" name="confirm_password" class="form-control" placeholder="请再次输入密码" required>
            </div>
            <div class="form-group">
                <button class="btn btn-primary full-width m-b" type="submit">注 册</button>
            </div>
            <p class="text-muted text-center">
                <small>已经有账户了？</small>
                <a href="login.jsp">点此登录</a>
            </p>

        </form>
    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- jQuery Validation plugin javascript -->
<script src="js/plugins/validate/jquery.validate.min.js"></script>
<script src="js/plugins/validate/messages_zh.min.js"></script>

<!-- Validate -->
<script>

/* 验证用户名是否已经存在 */
function yanzheng(){
			var i=$("input#username").val();
			var a=0;
			if(i!=""){
			$.ajax({
				type:'post',
				url:'${pageContext.request.contextPath }/validateUser.action',
				contentType:'application/json;charset=utf-8',
				//数据格式是json串
				
				data:'{"username":"'+i+'"}',
				success:function(data){
					//返回json
					if(data==1){
						$("input#username").val("");
						$("input#username").focus();
						alert("此用户名已经注册!");
					}
					
				}
			});
	}
}


    //以下为修改jQuery Validation插件兼容Bootstrap的方法，没有直接写在插件中是为了便于插件升级
    $.validator.setDefaults({
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        success: function (element) {
            element.closest('.form-group').removeClass('has-error').addClass('has-success');
        },
        errorElement: "span",
        errorClass: "help-block m-b-none",
        validClass: "help-block m-b-none"


    });

    $().ready(function () {
    // validate signup form on keyup and submit
        $("#signupForm").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                }
            },
            messages: {
                username: {
                    required: "请输入您的用户名",
                    minlength: "用户名必须两个字符以上"
                },
                password: {
                    required: "请输入您的密码",
                    minlength: "密码必须5个字符以上"
                },
                confirm_password: {
                    required: "请再次输入密码",
                    minlength: "密码必须5个字符以上",
                    equalTo: "两次输入的密码不一致"
                }
            }
        });
    });
    
    
</script>
</body>
</html>