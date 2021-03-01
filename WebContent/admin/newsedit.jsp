<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		
	</head>
	<body>
	<%
  		Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
	 %>
		<form action="newsedit" method="post">
			<p class="path">融智信息系统/信息中心/发布信息</p>
			<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr>
					<td class="lable">类别</td><td>
					
					    <select name="typename">
					    	<option <%=(objbyid.get("typeid").equals("1"))?"selected=\"selected\"":""%> value="1">学校公告</option>
					    	<option <%=(objbyid.get("typeid").equals("2"))?"selected=\"selected\"":""%> value="2">菁菁校园</option>
					    	<option <%=(objbyid.get("typeid").equals("3"))?"selected=\"selected\"":""%> value="3">学校趣闻</option>
					    	<option <%=(objbyid.get("typeid").equals("4"))?"selected=\"selected\"":""%> value="4">班级通知</option>
					    	<option <%=(objbyid.get("typeid").equals("5"))?"selected=\"selected\"":""%> value="5">数学建模</option>
					    	<option <%=(objbyid.get("typeid").equals("6"))?"selected=\"selected\"":""%> value="6">生活攻略</option>
					    </select>
				    </td>
				</tr>
				<tr><td class="lable">标题</td><td><input type="text" name="tbtitle" value="<%=objbyid.get("title")%>"/></td></tr>
				<tr><td class="lable">作者</td><td><input type="text" name="tbauthor" value="<%=objbyid.get("author")%>"/></td></tr>
				<tr><td class="lable">来源</td><td><input type="text" name="tbsource" value="<%=objbyid.get("source")%>"/></td></tr>
				<tr><td class="lable">时间</td><td><input type="text" name="tbctime" value="<%=objbyid.get("createtime")%>"/></td></tr>
				<tr><td class="lable">内容</td><td><textarea name="tbcontents"><%=objbyid.get("contents")%></textarea></td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
			
		</form>
		
	</body>
</html>
