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
<title>登录</title>
<jsp:include page="../base/base.jsp"></jsp:include>
<script type="text/javascript" src="<%=path%>/js/business/login.js"></script>
<script type="text/javascript">
	var projcetname = "<%=path%>";
</script>
</head>
<body onkeydown="strdown(event)">
	<!--首页头部   begin-->
	<jsp:include page="../base/header_1.jsp"></jsp:include>
		<!--内容 Begin-->
	<div class="jy-content jy-loginContent">
		<!--轮播 Begin-->
		<div class="login-banner">
			<div id="slideBox" class="slideBox">
				<div class="bd">
					<ul>
						<li style="background-image: url(<%=path%>/images/login-banner-1.jpg);background-repeat: no-repeat ;background-position:  center center;"></li>
					</ul>
				</div>
			</div>
		</div>
		<!--轮播 End-->
		<div class="jy-loginInner page">
			<form action="<%=path%>/memberInfo/memberInfoLoginCheck.html" id="loginForm" name="loginForm" method="post" class="jy-loginForm">
				<h2>会员登录</h2>
				<p class="input-tips" id="js_formTips"></p>
				<ul class="input-wrap login-input">
					<li style="margin-bottom: 10px;"><a class="fr" href="<%=path %>/memberInfo/toMemberInfoReg1.html">快速注册</a></li>
					<li class="c">
						<label>用户名：</label>
						<input type="text" placeholder="邮箱/会员名" id="js_userName"  onfocus="javascript:usernamefocus();" onblur="javascript:usernameblur();"  name="memberName" autocomplete="off"/>
					</li>
					<li class="c">
						<label>密　码：</label>
						<input type="password" placeholder="请输入密码" id="js_userPsw"  name="mpassWord" autocomplete="off" onpaste="return false" oncopy="return false"/>
						<a class="clearPsw">&times;</a>
					</li>
                    <li class="c">
						<label>校验码：</label>
						<input type="text" id="js_checkCode" placeholder="验证码"  maxlength="6"  onpaste="return false" oncopy="return false" style="width:83px;"/><img class="fl ml10 mr10 "  width="80" height="35" align="middle"  id="imgcode" onclick="changeImgCode();"><span class="fl cp" onclick="javascript:changeImgCode();">看不清<br />换一张</span>
					</li>
					<li style="color: red" id="msg">${message}</li>
				</ul>
				<p class="form-footer co">
					<a class="fr" href="#">忘记登录密码？</a>
					<a href="#">忘记用户名？</a>
				</p>
				<!--正在登录时给按钮添加“user-loginOn”这个class，并修改按钮的文字为“正在登录”-->
				<input type="button" class="jy-userBtn"  value="立即登录" id="tijiao" onclick="javascript:submitForm()"/>
				
			</form>
		</div>
	</div>
		<!--头部   End-->
		<jsp:include page="../base/footer.jsp"></jsp:include>
	</body>	
</html>