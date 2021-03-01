<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
String msg = (String)request.getAttribute("msg");
if(msg==null)
{
	msg="";
}
%>   
    

<!--
	Author: W3layouts

-->

<!DOCTYPE html>
<html>
<head>
	<title>时光锦-登录界面</title>
	<link rel="stylesheet" href="css/style.css">
	<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
-->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Sign In And Sign Up Forms  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	</script><script src="js/jquery.min.js"></script>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="js/modernizr.custom.53451.js"></script> 
 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
</script>	
		
		<style type="text/css">
			.head{
				color: darkred;
			}
		</style>

</head>
<body>
	<h1>时光锦</h1>
	<div class="w3layouts">
		<div class="signin-agile">
			<h2>登录
</h2>
			<form action="uilogin" method="post">
				<input type="text" name="username" class="name" placeholder="用户名" required="">
				<input type="password" name="password" class="password" placeholder="密码" required="">
				
				<input type="submit" value="登录"><span><%=msg %></span>
			</form>
		</div>
		<div class="signup-agileinfo">
			<h3>注册</h3>
			<p>登录之后随时随地的共享您的账号信息、浏览记录，以及你志同道合的好友。</p>
			<p>如果你还没有我们的账号，欢迎注册</p>
			<div class="more">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">点击注册</a>				
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="footer-w3l">
		
 </p>
	</div>
	<div class="pop-up"> 
	<div id="small-dialog" class="mfp-hide book-form">
		<h3>注册表单 </h3>
			<form action="uireg" method="post">
				<input type="text" name="loginname" id="tbusername"placeholder="用户名" required=""/>
				<input type="password" name="password" id="tbpassword1" placeholder="密码" required=""/>
				<input type="password" name="tbpassword2" id="tbpassword2" placeholder="确认密码" required=""/>
				<input type="text" name="truename" id="tbtruename" placeholder="姓名" required=""/>
				<input type="text" name="tel" id="tbtel" placeholder="电话" required=""/>
				<input type="text" name="address" id="tbaddress" placeholder="地址" required=""/>
				<input type="submit" value="点击注册">
				
			</form>
	</div>
</div>	
<body>
</html>
    