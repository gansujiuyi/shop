<%@page import="com.jiuyi.net.mesage.memberInfo.MemberInfos"%>
<jsp:directive.include file="/base/tag.inc" />
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>我的建议</title>
</head>
<body>
	<table border=1 width="200px;" height="100px;" cellpadding="0" cellspacing="0">
	<c:if test="${ not empty suggests }" >
		<c:forEach items="${suggests}" var="suggest" >
		<tr>
			<td>${suggest.suggestContent}</td>
		</tr>
		<tr>
			<td>${suggest.suggestTime}</td>
		</tr>
		</c:forEach>
	</c:if>
	</table>
</body>
</html>