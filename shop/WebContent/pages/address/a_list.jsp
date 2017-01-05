<%@page import="com.jiuyi.net.mesage.memberInfo.MemberInfos"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:directive.include file="/base/tag.inc" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>收货地址</title>
</head>
<body>
	<table border=1 width="200px;" height="100px;" cellpadding="0" cellspacing="0">
	<c:if test="${ not empty addresses }" >
		<c:forEach items="${addresses}" var="as" >
		<tr>
			<td>${as.addressId}</td>
		</tr>
		<tr>
			<td>${as.purchaser}</td>
		</tr>
		<tr>
			<td>${as.purchaserTel}</td>
		</tr>
		<tr>
			<td>${as.purchaseRaddress}</td>
		</tr>
		<tr>
			<td>${as.def}</td>
		</tr>
		<tr>
			<td>${as.memberId}</td>
		</tr>
		</c:forEach>
	</c:if>
	<a href="<%=path %>/" >新增收货信息</a>
	</table>
	
</body>
</html>