<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:directive.include file="/base/tag.inc" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN""http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
   <meta name="Keywords" content="久易购，久义信息技术有限公司" />
   <meta name="Description" content="久易购" />
<title>首页</title>
<script type="text/javascript">
window.onload=function(){ 
	$.ajax({
		url: "<%=path%>/product/queryProduct.html", 	//请求地址
        type: "get",                       				//请求方式
        dataType: "json",
        success: function (date) {
        	var products = date;
        	if(null == products && ""==products){
        		alert("商品信息为空");
        	}
        	var html = "";
        	for (var i = 0; i < products.length; int++) {
				html = '<tr><td>'+products[i].t_productName+'</td></tr>';
			}
        	$("#products_").html(html);
        },
        fail: function (status) {
          alert("查询商品信息失败");
        }
		
	});
}



</script>

<jsp:include page="../base/base.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../base/header.jsp"></jsp:include>
<table style="height: 400px; width: 100%">
		<tr id="products_">
			<td></td>
		</tr>

</table>
<jsp:include page="../base/footer.jsp"></jsp:include>
</body>
</html>