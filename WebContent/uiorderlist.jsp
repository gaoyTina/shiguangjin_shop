<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>  





  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<!--引入公共样式表-->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/comm.css"/>
		<style type="text/css">
			#main{
				width:1226px;
				height:350px;
				margin:0 auto;
				background-color:#fff;
				border-radius:5px;
			}
			h2{
				text-align:center;
				color:#333;
				line-height:80px;
			}
			a.goon{
				display:block;
				text-align:center;
			}
			.innerclass a img{
				width: 100px;
				height: 60px;
			}
			
			.nav a:hover{
				background-color: gray;
			}
			
		</style>
	</head>
	<body>
		
		<!--头部开始-->
		<div id="top">
			<div class="innerclass" id="topinner">
				<a href="index">首页</a> |
				<a href="uiprolist?typeid=1">传统汉服</a> |
				<a href="uiprolist?typeid=2">鞋类</a> |
				<a href="uiprolist?typeid=3">服务</a> 
				<div id="topright">
				    
					欢迎您,1111!
					
					<a href="uiorderlist">我的订单</a>
					<a href="uiaddtocar" id="car">购物车</a>
				</div>
			</div>
		</div>
		<div id="header" class="innerclass">
			<a href="index" id="logo"><img src="img/0001.png"/></a>
			<div id="nav">
				<a href="uiprolist?typeid=1">传统汉服</a>
				<a href="uiprolist?typeid=2">鞋类</a>
				<a href="uiprolist?typeid=3">礼品</a>
				<a href="uiprolist?typeid=4">饰品</a>
				<a href="uiprolist?typeid=5">生活周边</a>
				<a href="uiprolist?typeid=6">人气商品</a>
				
				<a href="uiprolist?typeid=8">服务</a>
				<a href="uiprolist?typeid=9">社区</a>
			</div>
			<div id="search">
				<input type="text" name="tbsearchkey" placeholder="时光锦购物商城" />
			    <p id="btnsearch"></p>
			</div>
		</div>
		<!--头部结束-->
		
		<!--主体开始-->
		<div id="main">
			<p class="path">会员中心/我的订单/订单列表</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	  <td style="width:160px;">订单号</td><td style="width:100px;">姓名</td><td style="width:100px;">电话</td><td>地址</td><td style="width:100px;">金额</td><td style="width:180px;">时间</td><td style="width:120px;">操作</td>   
       </tr>
       
        <tr>
       		<td>20181129143808502</td>
       		<td>1111</td>
       		<td>123456</td>
       		<td>111111</td>
       		<td>2112</td>
       		<td>2018-11-29 14:38:08</td>
       		<td><a href="uiorderview?orderid=20181129143808502">查看详细</a></td>
       </tr>
    	
        <tr>
       		<td>20181129140928449</td>
       		<td>1111</td>
       		<td>123456</td>
       		<td>111111</td>
       		<td>242424</td>
       		<td>2018-11-29 14:09:28</td>
       		<td><a href="uiorderview?orderid=20181129140928449">查看详细</a></td>
       </tr>
    	
    </table>
    
    <div class="pager">
       		总共 2 条记录 每页 10 条 共 1 页 当前第 1 页  <a href="?p=1">首页</a> <a href="?p=1">上一页</a> <a href="?p=1">下一页</a> <a href="?p=1">末页</a>
    </div>
		</div>
		
		<!--主体结束-->
		
		<!--底部开始-->
		<div id="footer">
			<div id="service" class="innerclass">
				<a href="###" style="background-image: url(img/icon1.png);">售后服务</a> | <a href="###" style="background-image: url(img/icon2.png);">7天无理由退货</a> | <a href="###" style="background-image: url(img/icon3.png);">15天免费换货</a> | <a href="###" style="background-image: url(img/icon4.png);">满150元包邮</a> |<a href="###" style="background-image: url(img/icon5.png);">520余家售后 </a> 
			</div>
			<div id="bottomwrapper" class="innerclass">
				<div id="bottomleft">
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
				</div>
				<div id="bottomright">
				</div>
			</div>
			
			<div id="copyright" class="innerclass">
				<p class="first">
					<a href="###">时光锦</a> |
					<a href="###">业务介绍</a> |
					<a href="###">服务</a> |
					<a href="###">商品</a> |
					<a href="###">生活周边</a> |
					<a href="###">小城</a> |
					<a href="###">会员</a> |
					<a href="###">人气商品</a> |
					<a href="###">登录</a> |
					<a href="###">退出</a> 
				</p>
				<p> ICP备案号 数 蜀 ICB 55234441212 京公安备案 ：sssss223222</p>
				<p>违法和不良信息举报电话：12315 </p>
			</div>
			
		</div>
		<!--底部结束-->
		
	</body>
</html>