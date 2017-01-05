<%@page import="com.jiuyi.net.mesage.memberInfo.MemberInfos"%>
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
	    <title>设置安保问题2</title>
	     <jsp:include page="../../base/base.jsp"></jsp:include>
	     <script type="text/javascript">
		$(".select-text").click(function(){
			$(this).hide();
			$(this).parent().find(".select-model").css("display","block");
		});
		$(".select-model li").click(function(){
			$(this).parents(".select-box").find(".select-text").html($(this).html());
			if($(this).html() == "自定义"){
			$(this).parents("li").after("<li><label>问题：</label><input class='input-218' type='text' style='width: 178px;'  /> </li>");
				
			}
			$(this).parent().hide();
			$(".select-text").show()
		});
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
					<h2 class="h2-redTag"><span></span>设置安保问题</h2>
					<!--绑定流程  begin-->
		        	<div class="process_box">
		        		<p class="bar_box co"><i class="bar_box_left fl"></i><span class="bar on fl"></span><span class="bar fl"></span> <i class="bar_box_right fl"></i></p>
		        		<div class="step curr"><span class="">1</span><p>验证身份  </p></div>
		        		<div class="step step2 curr"><span class="">2</span><p>设置安保问题 </p></div>
		        		<div class="step step3"><span class="">3</span><p>绑定成功 </p></div>
		        	</div>        	
					<!--绑定流程  end-->
					<form class="bound-phone">
						<p class="account-tip tips"><i class="icon icon-emailTip"></i>安全保护问题将作为您唯一的、通用的身份校验，请认真设置！安全保护问题可用于找回登录密码、找回支付密码、申请证书等。</p>
						<ul class="security-problem co">
							<li>
								<label>	问题一：</label> 
								<div class="select-box">
									<p class="select-text">我妈妈的生日是？</p>
									<ul class="select-model">
										<li>我妈妈的生日是？</li>
										<li>我爸爸的生日是？</li>
										<li>自定义</li>
									</ul>
								</div>
								
							</li>
							<li>
								<label>	答案：</label> <input class="input-218" type="text" style="width: 178px;"  /> 
							</li>
							<li>
								<label>	问题二：</label> 
								<div class="select-box">
									<p class="select-text">我妈妈的生日是？</p>
									<ul class="select-model">
										<li>我妈妈的生日是？</li>
										<li>我爸爸的生日是？</li>
										<li>自定义</li>
									</ul>
								</div>
							</li>
							<li>
								<label>	答案：</label> <input class="input-218" type="text" style="width: 178px;"  /> 
							</li>
							<li>
								<label>	问题三：</label>
								<div class="select-box">
									<p class="select-text">我妈妈的生日是?</p>
									<ul class="select-model">
										<li>我妈妈的生日是？</li>
										<li>我爸爸的生日是？</li>
										<li>自定义</li>
									</ul>
								</div>
							</li>
							<li>
								<label>	答案：</label> <input class="input-218" type="text" style="width: 178px;"  /> 
							</li>
						
						</ul>
						<div class="edit_submit">
			    			<a class="red-btn" href="账户信息-设置安保问题3.html" >确  定</a>
			    		</div>
					</form>
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
