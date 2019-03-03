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
    <title>B+ - 购物车</title>

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


<!-- shopCart -->
<div class="shopCart container clearfix">
    <h1 class="cart-title"><i class="fa fa-shopping-cart"></i> 购物车</h1>

    <div class="cart-content">
        <div class="data-title clearfix">
            
            <div class="data-info">书籍信息</div>
            <div class="data-perPrice">单价(元)</div>
            <div class="data-number">数量</div>
            <div class="data-sum">金额(元)</div>
            <div class="data-operation">操作</div>
        </div>
        
        <c:forEach items="${shopcartList}" var="shopcart">
        <div class="cart-book-item-content">
            <input class="checkbox" type="checkbox" name="check">
			<input type="hidden" value="${shopcart.id}" class="id">
            <div class="data-info">
                <div class="data-pic">
                	<input type="hidden" value="${shopcart.pic}" class="pic">
                    <img src="images/book/${shopcart.pic }">
                </div>
                <div class="data-name">
                	<input type="hidden" value="${shopcart.bookId}" class="bookId">
                    <p class="bookName">${shopcart.bookName }</p>
                </div>
            </div>
            <div class="data-perPrice">
                <div class="price_r">
                    <del>${shopcart.price }</del>
                </div>
                <div class="rob">
                    <span>${shopcart.rob }</span>
                </div>
            </div>
            <div class="data-number">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default sub" type="button" >-</button>
                    </span>
                    <input type="text" class="form-control number book_num" value="${shopcart.number}" disabled >
                    <span class="input-group-btn">
                        <button class="btn btn-default add" type="button" >+</button>
                    </span>
                </div>
            </div>
            <div class="data-sum">
                <span class="subtotal">${shopcart.subtotal }</span>
            </div>
            <div class="data-operation">
                <a href="${pageContext.request.contextPath}/deleteCart.action?id=${shopcart.id}" onclick="return confirm('您确认删除该条商品吗?')">删除</a>
            </div>
        </div>
        
        </c:forEach>
        
        
    </div>
    <div class="cart-footer clearfix">
        <input class="checkAll" type="checkbox" onclick="checkAll(this)">
        <span>全选</span>

        <div class="deleteAll">
            <a href="javascript:void(0);"  id="deleteAll">删除</a>
        </div>
        <div class="settle">
            <a class="btn btn-default" href="javascript:void(0)" id="jiesuan">结算</a>
        </div>
        <div class="total">
            合计: <span>¥<em id="amount" >0.0</em></span>
        </div>
        <div class="count">
            已选书籍<em id="count">0</em>件
        </div>
    </div>
</div>
<!-- shopCart END -->

<%@ include file="footer.jsp"%>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
	

    $('.dropdown-toggle').dropdown();

    $('.add').click(function(){
    	var num=$(this).parent().prev();
    	var a = new Number(num.attr('value'));
        a++;
        num.attr('value', a);
        var rob=$(this).parent().parent().parent().parent().find('.rob').find('span');
        var subtotal=$(this).parent().parent().parent().parent().find('.subtotal');
        var price=parseFloat(rob.html());
        var price1=price*a;
        subtotal.html(price1.toFixed(1));
        
        var checkbox=$(this).parent().parent().parent().parent().find('.checkbox');
        if(checkbox.is(':checked')){
        	$('#amount').html((parseFloat($('#amount').html())+price).toFixed(1));
        }
        
    });
    
    $('.sub').click(function(){
    	var num=$(this).parent().next();
    	var a = new Number(num.attr('value'));
    	var b=a;
    	b--;
        a--;
        if(a<=1){
        	a=1
        }
        num.attr('value', a);
        var rob=$(this).parent().parent().parent().parent().find('.rob').find('span');
        var subtotal=$(this).parent().parent().parent().parent().find('.subtotal');
        var price=parseFloat(rob.html());
        var price1=price*a;
        subtotal.html(price1.toFixed(1));
        
        if(b>=1){
	        var checkbox=$(this).parent().parent().parent().parent().find('.checkbox');
	        if(checkbox.is(':checked')){
	        	$('#amount').html((parseFloat($('#amount').html())-price).toFixed(1));
	        }
        }
    });
   


    function checkAll(node) {
        if (node.checked) {
            $('input[name="check"]').prop('checked', true);
        } else {
            $('input[name="check"]').prop('checked', false);
        }
    }
    
    $('.checkbox').click(function(){
    	var subtotal=$(this).parent().find('.subtotal');
    	var subtotal_value=parseFloat(subtotal.html());
    	var amount=parseFloat($('#amount').html());
    	var count_value=parseInt($('#count').html());
    	if($(this).is(':checked')){
    		$('#amount').html((amount+subtotal_value).toFixed(1));
    		$('#count').html(count_value+1);
    	}else{
    		$('#amount').html((amount-subtotal_value).toFixed(1));
    		$('#count').html(count_value-1);
    	}
    	
    });
    
    $('.checkAll').click(function(){
    	
    	if($(this).is(':checked')){
    		var amount_price=0;
    		var count_value=0;
    		$('.subtotal').each(function(){
    			amount_price=amount_price+parseFloat($(this).html());
    			$('#amount').html(amount_price.toFixed(1));
    			count_value=count_value+1;
    		});
    	}else{
    		count_value=0;
    		$('#amount').html("0.0");
    	}
    	$('#count').html(count_value);
    });
    
    //通过id删除
    $('#deleteAll').click(function(){
    	var id="";
    	$('.checkbox').each(function(){
    		if($(this).is(':checked')){
    			id=id+$(this).next().val()+",";
    			

    		}
    	});
    	id=id.substring(0,id.length-1);
    	$.ajax({
    		url:"${pageContext.request.contextPath}/deleteAllCart.action",
    		type:"post",
    		dataType:"text",
    		data:{"bookName":id},
    		success:function(data){
    			if(data=="ok"){
    				alert('成功删除该书籍！');
    				window.location.href="${pageContext.request.contextPath}/queryCart.action";
    			}
    		}
    		
    	});
    });
    
  //结算
	$('#jiesuan').click(function(){
		var amount=$('#amount').html();
		if(amount=="0.0"){
			alert('请选择要结算的书籍！');
		}else{
			var b=confirm('确认支付'+amount+'元吗');
			if(b==true){//订单已支付，状态为20
				$('.checkbox').each(function(){
					if($(this).is(':checked')){
						var id=$(this).parent().find('.id').val();
						var bookId=$(this).parent().find('.bookId').val();
						var bookName=$(this).parent().find('.bookName').html();
						var rob=$(this).parent().find('.rob').find('span').html();
						var pic=$(this).parent().find('.pic').val();
						var number=$(this).parent().find('.number').val();
						var subtotal=$(this).parent().find('.subtotal').html();
						var userId=${user.id};
						var trading_type=20;
						
						//删除购物车信息
			    		$.ajax({
			        		url:"${pageContext.request.contextPath}/deleteCart1.action",
			        		type:"post",
			        		dataType:"text",
			        		data:{"id":id},
			        		success:function(data){
			        			
			        		}
			        		
			        	});
						
						//生成订单
			    		$.ajax({
			            	url:" ${pageContext.request.contextPath}/insertOrder.action",
			            	type:'post',
			            	dataType:'text',
			            	data:{'userId':userId,'bookId':bookId,'bookName':bookName,'rob':rob,'pic':pic,'number':number,'subtotal':subtotal,'tradingType':trading_type},
			            	success:function(data){
			            		if(data=="20"){
			            			//alert('付款成功！');
			            			window.location.href="${pageContext.request.contextPath}/index.jsp";
			            		}
			            	}
			              });
						
						
					}
				});
			}else{//订单未支付，状态为10
				
				$('.checkbox').each(function(){
					if($(this).is(':checked')){
						var id=$(this).parent().find('.id').val();
						var bookId=$(this).parent().find('.bookId').val();
						var bookName=$(this).parent().find('.bookName').html();
						var rob=$(this).parent().find('.rob').find('span').html();
						var pic=$(this).parent().find('.pic').val();
						var number=$(this).parent().find('.number').val();
						var subtotal=$(this).parent().find('.subtotal').html();
						var userId=${user.id};
						var trading_type=10;
						
						//删除购物车信息
			    		$.ajax({
			        		url:"${pageContext.request.contextPath}/deleteCart1.action",
			        		type:"post",
			        		dataType:"text",
			        		data:{"id":id},
			        		success:function(data){
			        			
			        		}
			        		
			        	});
						
						//生成订单
			    		$.ajax({
			            	url:" ${pageContext.request.contextPath}/insertOrder.action",
			            	type:'post',
			            	dataType:'text',
			            	data:{'userId':userId,'bookId':bookId,'bookName':bookName,'rob':rob,'pic':pic,'number':number,'subtotal':subtotal,'tradingType':trading_type},
			            	success:function(data){
			            		if(data=="10"){
			            			//alert('付款失败！');
			            			window.location.href="${pageContext.request.contextPath}/index.jsp";
			            		}
			            	}
			              });
						
						
					}
				});
			}
		}
	});
</script>

</body>
</html>