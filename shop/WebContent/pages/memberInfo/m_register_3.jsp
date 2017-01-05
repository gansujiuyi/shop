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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册第三部</title>
<jsp:include page="../../base/base.jsp"></jsp:include>
</head>
<body>
    <!--首页头部   begin-->
	<jsp:include page="../../base/header_1.jsp"></jsp:include>
	<!--头部   End-->
	
	<!--中间部分-->
	<div class="mian-content page co">
    	<!--免费注册  开始-->
        <div class="mb20 mt20">
        	<!--步骤 开始-->
        	<div class="process_box">
        		<p class="bar_box co"><i class="bar_box_left fleft"></i><span class="bar on fleft"></span>  <span class="bar on fleft"></span> <i class="bar_box_right on fleft"></i></p>
        		<div class="step curr"><span class="">1</span><p>填写账户信息</p></div>
        		<div class="step step2 curr"><span class="">2</span><p>设置登录密码</p></div>
        		<div class="step step3 curr"><span class="">3</span><p>注册成功</p></div>
        	</div>        	
        	<!--步骤 结束-->
        	
        	<div class="register_box" style="padding:150px 0;">
        		<div class="success_box co">
        			<div class="fl">
        				<i class="icon icon-success"></i>
        			</div>
        			<div class="fleft">
        				<h2>注册成功</h2>
        				<span><a href="<%=path%>/memberInfo/toMemberInfoLogin.html" target="_self">点击 </a>去完善一下你的资料吧！</span>
        			</div>
        		</div>
        	</div>
        	
        </div>
        <!--免费注册 end-->
    </div>

	  <!--底部   begin-->
   <jsp:include page="../../base/footer.jsp"></jsp:include>
	<!--底部   End-->
</body>
</html>