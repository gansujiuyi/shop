<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.include file="/base/tag.inc" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品分类</title>
</head>
<body>
	<table border=1 width="200px;" height="100px;" cellpadding="0" cellspacing="0">
	<c:if test="${ not empty categorys }" >
		<c:forEach items="${categorys}" var="cat" >
		<tr>
			<td>${cat.t_categoryName}</td>
		</tr>
		</c:forEach>
	</c:if>
	</table>
</body>
</html>