<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>

	
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>时光锦发购物商城-传统服饰</title>

	</head>
	<style>
		.header {
			width: 1150px;
			height: 60px;
			line-height: 60px;
			background-color: white;
			text-align: center;
			color: white;
			font-size: 18px;
			margin-left: 160px;
			margin-top: 30px;
		}
		
		.header ul {
			list-style: none;
			margin: 0 auto;
			width: 500px;
			padding-left: 150px;
			background-color: yellow;
		}
		
		.header ul li {
			line-height: 60px;
			float: left;
			padding: 0 10px;
		
			padding-right: 20px;
			
			
		}
		
		.header ul li a {
			text-decoration: none;
			color: black;
			font-family: "楷体";
		}
		.footer{
				clear: both;
				height:150px;
				width: 1330px;
				margin: 0 auto;
				border: solid 1px #eee;
				background-color: white;
				margin-top: 10px;
				padding-top: 60px;
				
				background-repeat: no-repeat;
				background-position: 50px 30px;
			}
			
			.footer p{
				
				color: black;
				line-height: 35px;
				font-size: 14px;
				text-align: center;
			}
		
		 .footer img{
		 	width: 1330px;
		 	height: 200px;
		 	
		 }
		
		
		
		.bj:hover {}
		
		.bj {
			width: 100%;
			height: 400px;
		}
		
		.a1 {
			text-align: center;
			font-family: "楷体";
			font-size: 30px;
		}
		
		.a2 {
			text-align: center;
			font-size: 50px;
			font-family: "楷体";
		}
		.a5 {
			margin-top: 0px;
			margin-bottom: 0px;
			text-align: center;
			font-family: "楷体";
			font-size: 30px;
			
		}
		.a6 {
			
			text-align: center;
			font-size: 30px;
			font-family: "楷体";
		}
		
		.a3 {
			width: 100%;
			height: 400px;
		}
		
		.a3 ul {
			list-style: none;
		}
		
		.a3 ul li {
			width: 300px;
			height: 400px;
			margin-left: 130px;
			float: left;
			border: solid 1px;
		}
		
		.header ul li a:hover {
			color: gold;
		}
		
		.a4 {
			text-align: center;
			font-family: "楷体";
		}
		
		
		
		.tu {
			float: left;
			width: 300px;
			height: 196px;
			border: solid 2px black;
			/*background-image: url(img/0012.png);*/
		}
		.tl {
			font-family: "楷体";
			font-size: 30px;
			height: 60px;
			line-height: 60px;
			width: 150px;
			background-color: white;
			float: left;
		}
		
		
		
		
		
		.xkk a img {
			width: 200px;
			height: 200px;
			margin-left: 40px;
			background-color: red;
		}
		
		.dkk a img {
			width: 280px;
			height: 280px;
			margin-left: 135px;
		}
		.xkk{
				width: 280px;
				height: 340px;
				
				float: left;
				margin-left: 50px;
				margin-right: 45px;
				margin-top: 50px ;
				box-shadow: 0 0 2px 2px #000000;
			}
		.xkk p {
			text-align: center;
		}
		
		.dkk p {
			text-align: center;
		}
		.dkk{
				
				
				width: 1670px;
				height: 400px;
				background-color: gainsboro;
				
			}
			
			
			
			.xkk a img{
				padding-top: 0px;
				width: 250px;
				height: 250px;
				margin-left: 25px;
			}
			.xkk p{
				text-align: center;
			}
	</style>

	<body>
		<div class="tl">

			时光锦

		</div>
		<div class="header">

			<ul>

				<li>
					<a href="http://localhost:8080/myshop/index">首页</a>
				</li>

				<li>
					<a href="newslist.html">服务</a>
				</li>
				<li>
					<a href="newslist.html">社区</a>
				</li>
				<li>
					<a href="http://localhost:8080/myshop/uiaddtocar">购物车</a>
				</li>
				<li>
					<a href="http://localhost:8080/myshop/uilogin.jsp">用户注册</a>
				</li>
				<li>
					<a href="http://localhost:8080/myshop/uilogin.jsp">登录</a>
				</li>
			</ul>
		</div>
		<div>
			<img src="img/001 (2).jpg" class="bj">
		</div>
		<div class="a1">
			时光锦原创
		</div>
		<div class="a2">
			
		</div>
		<div class="a3">

			<div class="dkk">
			   
			   <%for(Map<String, Object> m:list) {%>
			   <div class="xkk"> <a href="uiproview?id=<%=m.get("id")%>"><img src="upload/<%=m.get("imgurl")%>"></a>
			   	<p><a href="uiproview?id=<%=m.get("id")%>"><%=m.get("proname")%></a></p>
				<p>￥<%=m.get("price")%>.00</p>
			   </div> 
				<%} %>
    
    
    		</div>
    		
    		<div>
    		<%=pagestr %>
    		</div>
	</div>
   


   	 

				

			

					
					
<div class="footer"> <img src="img/009.gif">
		
	</div>
	</body>

</html>