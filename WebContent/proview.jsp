<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
  		Map<String, Object> objbyid =(Map<String, Object>)request.getAttribute("objbyid");
  		Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>立即购买</title>
		<link rel="stylesheet" type="text/css" href="css/num.css"/>
	</head>
	<style>
		*{
			margin: 0;
			padding: 0;
		}
		.header{
				width: 1540px;
				height: 40px;
				line-height: 40px;
				background-color:black;
				opacity: 0.8;
				box-shadow: 0px 2px 2px/* black*/;
				margin: 0 auto;
				/*text-align: center;
				color: white;
				font-size: 15px;
				padding-top: 20px;*/
				
				
			}
			
			
			
			
			
			.header ul{
				list-style: none;
				margin: 0 auto;
				width: 500px;
				
			}
			
			
			.header ul li{
				line-height: 35px;
				float: left;
				padding: 0 10px;
			}
			
			.header ul li:hover {
				background-color: black;
			}
			.header ul li a{
				text-decoration: none;
				color: white;
			}	
			
		
		.a2{
			height: 120px;
			background-color: white;
		}
		.a2 a img{
			height: 120px;
			width: 150px;
		}
		
		.a3{
			width: 1000px;
			min-height: 200px;
			/*background-color: grey;*/
			margin: 0 auto;
		}
		
		.c{
			float: left;
		}
		#left{
			/*background-color: green;*/
			width: 400px;
			height: 500px;
		}
		.left img{
		     width: 400px;
			 height: 500px;
		}
		#right{
			/*background-color: turquoise;*/
			width: 596px;
			height: 600px;
			border: solid 2px #eee;
		}
		.b11{
			height: 66px;
			width: 596px;
			background-color: peachpuff;
		}
		.b22{
			height: 22px;
			width: 596px;
			background-color: pink;
		}
		.b1{
			height: 50px;
			width: 596px;
				
		}
		.b1 p{
			font-size: 30px;
			text-align: center;
			line-height: 50px;	
			background-color: wheat;
		}
		.b2{
			height: 100px;
			width: 596px;
			background-color: antiquewhite;
			text-align: center;
		}
		.b2 p{
			line-height: 48px;
			font-size: 20px;
		}
		.b2 p span{
			color: red;
			font-size: 25px;
			
		}
		.b3{
			height: 300px;
			width: 596px;
			
		}
		.b4 p{
			background-color: red;
			width: 140px;
			color: white;
			text-align: center;
			border: solid 2px red;
			margin: 0 auto;
			font-size: 22px;
			line-height: 44px;
			cursor: pointer;
		}
		.b4 p a{
			color: white;
		}
		.b5{
			height: 80px;
			width: 596px;
			background-color: #eee;
			text-align: center;
			
		}
		.b5 p{
			
			font-size: 10px;
			line-height: 25px;
			
		}
		.footer{
				clear: both;
				height:150px;
				
				margin: 0 auto;
				border: solid 1px #eee;
				background-color: gainsboro;
				margin-top: 10px;
				padding-top: 50px;
				background-image: url(img/0012.png);
				background-repeat: no-repeat;
				background-position: 50px 30px;
			}
			
			.footer p{
				color: black;
				line-height: 40px;
				font-size: 14px;
				text-align: center;
			}
			#login{
				color: white;
			}

	</style>
	<body>
			<div class="header">
		<ul>
			<li><a href="http://localhost:8080/myshop/index">首页</a></li>
			<li><a href="http://localhost:8080/myshop/uinewslist?typeid=1">传统汉服</a></li>
			<li><a href="http://localhost:8080/myshop/uinewslist?typeid=1">鞋类</a></li>
			<li><a href="http://localhost:8080/myshop/uinewslist?typeid=1">饰品</a></li>
			<li><a href="http://localhost:8080/myshop/uinewslist?typeid=1">礼品</a></li>
			<li><a href="http://localhost:8080/myshop/uiaddtocar">购物车</a></li>
			<li><a href="http://localhost:8080/myshop/uilogin.jsp">用户注册</a></li>
			<li><a href="http://localhost:8080/myshop/uilogin.jsp">登录</a></li>
		</ul>
		</div>

		<div class="a2">
			<a><img src="img/0001.png"></a>

		</div>
		<hr />
		<div class="a3">
			<div class="c" id="left">
			<div class="left img">
				<img src="upload/<%=objbyid.get("imgurl")%>" />
				</div>
			</div>
			<div class="c" id="right">
				<div class="b1">
					<p><%=objbyid.get("proname")%></p>
				</div>
				<div class="b11">
					<!--详情-->
					</div>
					
					<div class="b22">
					产地：
					</div>
					
				<div class="b2">
					<p>原价：<span><del>￥199</del></span></p>
					<p>秒杀价:<span>￥99</span></p>
				</div>
				<div class="b3">
					<div class="b5"><p>优惠：</p>
					    <p>满100元减5元</p>
					    <p>满200元减15元</p>
					</div>
					<p style="margin-top:10px; margin-left: 40px;">尺码：<input type="radio" name="a">XS<a style="margin-left: 10px"><input type="radio" name="a">S</a>
					       <a style="margin-left: 10px"><input type="radio" name="a">M</a><a style="margin-left: 10px"><input type="radio" name="a">L</a>
					        <a style="margin-left: 10px"><input type="radio" name="a">XL</a><a style="margin-left: 10px"><input type="radio" name="a">XXL</a>
					</p>

			        <p style="margin-top: 50px; margin-left: 10px;">选择颜色：<select><option>红</option><option>橙</option>
			<option>黄</option><option>绿</option></select></p>
				    <ul class="btn-numbox">
				    	<li> <span class="number">  数量：</span></li>
				    	
				    		<ul class="count">
				    			<li><span id="num-jian"><h3>-</h3></span></li>
				    			<li><input type="text" class="input-num" id="input-num" value="0"/></li>
				    			<li><span id="num-jia"><h3>+</h3></span></li>
				    		</ul>
				    	</li>
				    	<li><span class="kucun">(库存：300)</span></li>
				    </ul>
				       
				</div>
				<div class="b4">
					<p><a href="javascript:void(0);" id="btnaddtocar" data-proid="<%=objbyid.get("id")%>">加入购物车</a></p>
				</div>
			</div>
			<h3>商品详细介绍</h3>
			<div id="list">
				<%=objbyid.get("descriptions") %>
				
			</div>
		</div>
		<div class="footer">
		<p>一个对时光研究不深但对服饰略懂的优秀团队</p>
		<p>一群对古风有着不同欣赏的三好青年</p>
		<p>遇见你是最美丽的意外</p>
	</div>
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/num.js" ></script>
		<script type="text/javascript">
			$("body").on("click",".num-jian",function (m) {
           var obj = $(this).closest("ul").find(".input-num");
           if (obj.val() <= 0) {
                obj.val(0);
           } else {
                obj.val(parseInt(obj.val()) - 1);
           }
           obj.change();
     });
     $("body").on("click",".num-jia",function (m) {
           var obj = $(this).closest("ul").find(".input-num");
           obj.val(parseInt(obj.val()) + 1);
           obj.change();
     });
     
     
     $("#btnaddtocar").click(function(){
			var proid=$(this).attr("data-proid");
			$.ajax({
			    url:'uiaddtocar', //要请求的url地址
			    type:'POST', //请求方法 GET or POST
			    async:true, //是否使用异步请求的方式
			    timeout:5000, //请求超时的时间，以毫秒计
			    data:{
			        id :proid
			    },
			    dataType:'json', //预期的服务器返回参数类型
			    beforeSend:function(){
			        
			    },//再发送请求前调用的方法
			    success:function(data) {
			        console.log(data);
			        location.href="uiaddtocar";
			    }, //请求成功时回调方法，data为服务器返回的数据
			    error:function(){
			       
			    }, //请求发生错误时调用方法
			    complete:function(){
			    	
			    } 
			});
		});
		</script>
	</body>
</html>

    