<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> item1 = (List<Map<String, Object>>)request.getAttribute("item1");
List<Map<String, Object>> item2 = (List<Map<String, Object>>)request.getAttribute("item2");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>



<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>时光锦</title>
		<link rel="stylesheet" type="text/css" href="css/comm.css"/>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<style type="text/css">
			
			/*body{
				background-color: cornsilk;
			}*/
			.header{
				height: 40px;
				line-height: 40px;
				background-color: black;
				
				margin: 0 auto;
				width: 1540px;
				opacity: 0.8;
				
				
			}
			
			
			
			
			
			.header ul{
				list-style: none;
				margin: 0 auto;
				
			}
			
			.header ul li{
				line-height: 35px;
				float: left;
				padding: 0 30px;
				
			}
			.header li a:hover{
				color: white;
			}
			
			.header ul li a{
				text-decoration: none;
				font-size: 16px;
				font-family: "楷体";
				color: #b0b0b0;
			}	
			
				
		   .newsitem ul li a:hover{
		   	
		   	background-color: royalblue;
		   }
				
				
			.main{
				/*width: 1560px;
				margin: 0 auto;*/
				overflow: hidden;
				
				
			}	
			
			
			.dhz{
				width: 1250px;
				height: 500px;
				margin-bottom: 30px;
				
			}
			
			
			
			
			
			
			.pptwrapper{
				height: 500px;
				background-image: url(img/datu.png);
				background-size: cover;
				background-color: black;
				margin: 0 auto;
				width: 1540px;
			    
			}
			
			.newsitem{
				width:388px;
				height:252px;
				float: left;
				border: solid 1px #eee;
				margin-top: 10px;
				margin-right: 10px;
			}
			.itemright{
				margin-right:0;
				width: 398px;
			}
			.newsitem .title{
				height: 35px;
				line-height: 35px;
				padding-left: 10px;
				border-bottom: solid 1px #eee;
				background-color: #eee;
				color: #333;
			}
			
			.newsitem a {
				line-height:30px;
				border-bottom:dashed 1px #eee;
				display: block;
				padding-left: 10px;
				color: #333;
			}
			
			.footer{
				background-image: url(img/gu1.gif);
				background-size: 28%;
				clear: both;
				height:200px;
				width: 1450px;
				margin: 0 auto;
				/*background-color: darkgoldenrod;*/
				margin-top: 50px;
				padding-top: 50px;
				
				background-repeat: no-repeat;
				background-position: 50px 30px;
				opacity: 0.8;
			}
			
			.you{
				width: 380px;
				height: 200px;
				/*background-color: darkgray;*/
				float: right;
				background-image: url(img/dong3.gif);
				background-size: cover;
			}
			.zhong{
				width: 300px;
				height: 200px;
				/*background-color: red;*/
				margin-right: 200px;
				float: right;
				
			}
			
			
			.zhong p{
				color: chocolate;
				line-height: 35px;
				font-size: 14px;
				text-align: center;
				
			}
			
			
			
			#login{
				color:#A52A2A ;
			}
			
			.item{
				width:175px;
				height:170px;
				float: left;
				margin-left: 20px;
				margin-top: 20px;
				
			}
			.item a{
				display: block;
				text-align: center;
				color: white;
				line-height: 24px;
			}
			.item a img{
				width: 168px;
				height: 100px;
			}
			
			.item p{
				text-align: center;
				color: white;
			}
			
			.dkk{
				
				margin: 0 auto;
				width: 1540px;
				height: 1000px;
				
				margin-top: 30px;
				margin-bottom: 40px;
				
				
				
			}

			
			.zkk{
				width: 300px;
				height: 40px;
				background-color:lightcoral;
				float: left;
				margin-left: 10px;
				margin-top: 40px;
				font-size: 18px;
				color: white;
				text-align: center;
				padding-top: 10px;
				
				
			}
			
			.xkk{
				
				width: 320px;
				height: 450px;
				
				float: left;
				margin-left: 46px;
				margin-top: 40px;
				box-shadow: 0 0 2px 2px #E0E0E0;
			}
			.xkk:hover{
				box-shadow: 0 0 2px 2px orange;
			}
			
			.xkk a img{
				width: 300px;
				height: 350px;
				margin-left: 10px;
				
			}
			
			.xkk p{
				text-align: center;
			}
			
			.bao{
				width: 1560px;
				height: 120px;
				/*background-color: salmon;*/
				margin: 0 auto;
				/*margin-bottom: 20px;*/
				
			}
			.pic{
				width: 300px;
				height: 120px;
				float: left;
				
			}
			.pic img{
				width: 150px;
				height: 120px;
			}
			
			.pic2{
				width: 300px;
				height: 120px;
				float: right;
				margin-right: 40px;
				
			}
			.pic2 img{
				width: 350px;
				height: 220px;
			}
			.zz{
				margin: 0 auto;
				margin-top: 20px;
				float: left;
				width: 850px;
				height: 80px;
				/*background-color: red;*/
				
			}
			
			.zz ul li a{
				color: black;
				font-size: 20px;
				font-family: "楷体";
				float: left;
				padding-right: 50px;
				
				
			  
				
			}
			.zz ul{
				list-style: none;
		       margin-left: 110px;
		       
			}
			.zz ul li{
				line-height: 80px;
			}
			.zz img{
				width: 150px;
				height: 103px;
				
				
			}
			.zz ul li a:hover{
				color: orangered;
			}
			
			
			.dul{
				width: 1170px;
				height: 60px;
				float: left;
				
				margin-top: 10px;
			}
			.subnav{
				width: 800px;
				height: 400px;
				background-color:wheat;
				position: absolute;
				left:250px;
				top: 0;
				display: none;
				
			}
			
			/*.ppt2{
				width: 1560px;
				height: 600px;
				background-image: url(img/p2.png);
				background-size: cover;
				background-color: black;
				margin: 0 auto;
				
			    
			}
			
			.ppt3{
				width: 1560px;
				height: 1000px;
				background-image: url(img/datu.png);
				background-size: cover;
				background-color: black;
				margin: 0 auto;
				margin-top: 20px;
			    
			}
			
			.ppt4{
				width: 1560px;
				height: 1000px;
				background-image: url(img/datu.png);
				background-size: cover;
				background-color: black;
				margin: 0 auto;
			    margin-top: 20px;
			}*/
		</style>
	</head>
	<body>
	<div class="header">
		<ul>
			<li><a href="index">首页</a></li>
			<li><a href="uilogin.jsp">登录</a></li>
			<li><a href="uilogin.jsp">注册</a></li>
			<li><a href="http://localhost:8080/myshop/uiaddtocar">购物车</a></li>
		</ul>
	</div>
	<div class="bao">
		<div class="pic">
			
			<a href="###" id="logo"><img src="img/0001.png"/></a>
			</div>
			
		
	    <div class="zz">
		
		
			<ul>
				<li><a href="http://localhost:8080/myshop/uinewslist?typeid=1">传统汉服</a></li>
				
				
				<li><a href="http://localhost:8080/myshop/uinewslist?typeid=2">鞋类</a></li>
				<li><a href="http://localhost:8080/myshop/uinewslist?typeid=3">礼品</a></li>
				<li><a href="http://localhost:8080/myshop/uinewslist?typeid=4">饰品</a></li>
				<li><a href="http://localhost:8080/myshop/uinewslist?typeid=5">生活周边</a></li>
				<li><a href="http://localhost:8080/myshop/uinewslist?typeid=6">人气商品</a></li>
			<ul>
			</div>
	<div class="pic2">
			
			<a href="###" id="logo"><img src="img/dong2.gif"></a>
			
		</div>
	</div>
	
	
	<div class="main">
		<div class="dhz">
			<!--左侧菜单开始-->
			
			<!--左侧菜单结束-->
			<!--轮播开始-->
			<div class="pptwrapper">
				
			</div>
			<!--轮播结束-->
			
		</div>
			
	
		<p style="font-size: 20px;"><b>今日推荐</b></p>
		<div class="dkk">
			<%for(Map<String, Object> m:item1) {%>
				<div class="xkk"> 
					<p>爆销热品</p>
					<a href="uiproview?id=<%=m.get("id")%>"><img src="upload/<%=m.get("imgurl")%>"></a>
					<p><%=m.get("proname")%></p>
					<p>双12特价商品</p>
					<p>￥<%=m.get("price")%>.00</p>
				</div>
			<%}%>
				
		</div>
		<p style="font-size: 20px;"><b>爆销热品</b></p>
		
   <div class="dkk">
			
				<%for(Map<String, Object> m:item2) {%>
				<div class="xkk"> 
					<p>时尚单品</p>
					<a href="uiproview?id=<%=m.get("id")%>"><img src="upload/<%=m.get("imgurl")%>"></a>
					<p><%=m.get("proname")%></p>
					<p>双12特价商品</p>
					<p>￥<%=m.get("price")%>.00</p>
				</div>
			<%}%>
</div>
		
	<div class="footer">
		
		<div class="you">
			<!--<img src="img/you.gif"/>-->
		</div>
		
		<div class="zhong">
			<p>一个对时光研究不深但对服饰略懂的优秀团队</p>
			<p>一群对古风有着不同欣赏的三好青年</p>
			<p>遇见你是最美丽的意外</p>
			<p><a href="http://localhost:8080/myshop/admin/login.jsp">后台管理入口</a></p>
		</div>
		
		
	</div>

		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$("#ppt01").tyslide({
			boxh:500,//盒子的高度
			w:1000,//盒子的宽度
			h:500,//图片的高度
			isShow:true,//是否显示控制器
			isShowBtn:true,//是否显示左右按钮
			controltop:5,//控制按钮上下偏移的位置,要将按钮向下移动   首先保证boxh 高度>图片 h
			controlsW:60,//控制按钮宽度
			controlsH:10,//控制按钮高度
			radius:0,//控制按钮圆角度数
			controlsColor:"#eee",//普通控制按钮的颜色
			controlsCurrentColor:"#ccc"//当前控制按钮的颜色
		});
		</script>
	</body>
</html>

    