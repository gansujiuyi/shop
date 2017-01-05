<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN""http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
	    <meta name="Keywords" content="久易购，久义信息技术有限公司" />
	    <meta name="Description" content="久易购" />
	    <title>绑定手机3</title>
	     <jsp:include page="../../base/base.jsp"></jsp:include>
	<script type="text/javascript"> 
    var t=5;//设定跳转的时间 
    setInterval("refer()",1000); //启动1秒定时 
    function refer(){  
        if(t==0){ 
            location=<%=path%>+"/memberInfo/accountInfo.html"; //#设定跳转的链接地址 
        } 
        document.getElementById('time-val').innerHTML=t; // 显示倒计时 
        t--; 
    } 
    </script> 
	</head>
	<body>
	<!--头部   开始-->
	<jsp:include page="../../base/header_2.jsp"></jsp:include>
	<!--头部   结束-->
	
	<!--主体   开始-->
	<div class="main mb20 mt20">
		<div class="page co" >
			<div class="account-menu fl">
				<dl class="menu-box">
					<dt>账户设置</dt>
					<dd class="on"><a href=""><i class="icon icon-security"></i> 账户安全</a></dd>
					<dd><a href=""><i class="icon icon-location"></i> 收货地址</a></dd>
					<dd><a href=""><i class="icon icon-person"></i> 个人资料</a></dd>
				</dl>
			</div>
			<div class="account-content fr" style="min-height: 477px;">
				<div class="account-item">
					<h2 class="h2-redTag"><span></span>绑定手机</h2>
					<!--绑定流程  begin-->
		        	<div class="process_box">
		        		<p class="bar_box co"><i class="bar_box_left fl"></i><span class="bar on fl"></span><span class="bar on fl"></span> <i class="bar_box_right on fl"></i></p>
		        		<div class="step curr"><span class="">1</span><p>验证身份  </p></div>
		        		<div class="step step2 curr"><span class="">2</span><p>绑定手机 </p></div>
		        		<div class="step step3 curr"><span class="">3</span><p>绑定成功 </p></div>
		        	</div>        	
					<!--绑定流程  end-->
					<div class="success_box co">
	        			<div class=" fl">
	        				<i class="icon icon-success"></i>
	        			</div>
	        			<div class="fleft">
	        				<p>您已设置成功</p>
	        				<span ><i id="time-val"></i>秒后自动跳转至账户信息</span>
	        				<span><a href="<%=path%>/memberInfo/accountInfo.html">立即跳转 </a></span>
	        			</div>
	        		</div>
				</div>
		
			</div>
		</div>
	</div>
	<!--主体   结束-->
	<!--尾部   开始-->
	<jsp:include page="../../base/footer.jsp"></jsp:include>
		<!--尾部   结束-->

	</body>
</html>
