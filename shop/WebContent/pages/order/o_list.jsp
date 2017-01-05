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
<title>商品订单信息</title>
</head>
<body>
	<table border=1 width="200px;" height="100px;" cellpadding="0" cellspacing="0">
	<c:if test="${ not empty orders }" >
		<c:forEach items="${orders}" var="order" >
		<tr>
			<td>${order.orderId}</td>
		</tr>
		<tr>
			<td>${order.memberId}</td>
		</tr>
		<tr>
			<td>${order.orderNum}</td>
		</tr>
		<tr>
			<td>${order.purchaser}</td>
		</tr>
		<tr>
			<td>${order.purchaserTel}</td>
		</tr>
		<tr>
			<td>${order.purchaseRaddress}</td>
		</tr>
		<tr>
			<td>${order.aggregateAmount}</td>
		</tr>
		
		<tr>
			<td>${order.payStatus}</td>
		</tr>
		<tr>
			<td>${order.orderStatus}</td>
		</tr>
		
		<tr>
			<td>${order.orderId}</td>
		</tr>
		<tr>
			<td>${order.creationTime}</td>
		</tr>
		<tr>
			<td>${order.productDetails}</td>
		</tr>
		<tr>
			<td>${order.expressId}</td>
		</tr>
		</c:forEach>
	</c:if>
	</table>
		
	
	
	
	
	
	
</body>
</html>