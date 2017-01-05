<%@page import="com.jiuyi.net.mesage.memberInfo.MemberInfos"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:directive.include file="/base/tag.inc" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	MemberInfos memberInfos = (MemberInfos)session.getAttribute("memberInfo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN""http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
	    <meta name="Keywords" content="久易购，久义信息技术有限公司" />
	    <meta name="Description" content="久易购" />
	    <title>账户信息首页</title>
	    <jsp:include page="../../base/base.jsp"></jsp:include>
		<script type="text/javascript">
		/*安全等级中高低状态显示*/
		$(document).ready(function(){
			var level = $("#security-val").html(); //获取安全等级值
			if(level == "低"){
				$("#level-show").css("width","0");
			}else if(level == "中"){
				$("#level-show").css("width","50%");
			}else if(level == "高"){
				$("#level-show").css("width","100%");
			}
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
					<dd><a href=""><i class="icon icon-security"></i> 账户安全</a></dd>
					<dd><a href="<%=path %>/address/queryAddress.html?memberId=${memberInfos.memberId}"><i class="icon icon-location"></i> 收货地址</a></dd>
					<dd><a href=""><i class="icon icon-person"></i> 个人资料</a></dd>
				</dl>
			</div>
			<div class="account-content fr">
				<div class="account-item b-b">
					<h2 class="h2-redTag"><span></span>我的基础信息</h2>
					<dl class="account-info co">
						<dt class="account-head fl">
							<img src="<%=path %>/images/test/account-head.jpg"/>
							<a class="dismak" href="javascript:;">编辑头像</a>
							<input class="edit-head" type="file"  />
						</dt>
						<dd>会员名：${memberInfos.memberName } </dd> 
						<dd>登录邮箱：${memberInfos.memberEmail }  <a  class="tips ml10" href="javascript:;" target="_self" style="margin-left:20px;">添加邮箱   </a></dd> 
						<dd>绑定手机：${memberInfos.phoneNo } <a  class="tips" href="#" target="_self" style="margin-left:65px;">修改手机   </a> </dd> 
						<dd class="tips">建议您启动全部安全设置，以保障账户及资金安全。 </dd> 
					</dl>
				</div>
				<div class="account-item">
					<h2 class="h2-redTag"><span></span>我的安全服务</h2>
					<p class="security-level">安全等级：<span id="security-val"  class="tips">${security_val}</span> <span class="level-bar"><var id="level-show"></var></span>&nbsp;&nbsp;&nbsp;&nbsp;完成<a  class="tips" href="javascript:;" target="_self">安全设置</a>，提升账户安全。</p>
					<ul class="account-deal">
						<li>
							<a class="deal-btn fr" href="<%=path %>/memberInfo/toUpdateInfo.html?memberId=${memberInfos.memberId}&opt=xgmm" target="_self">修改密码</a>
							<div class="deal-box">
								<span class="deal-flag">
									<i class="icon icon-conplate"></i> <!--已完成  icon-conplate--> 
									<br />已完成
								</span>
							    <span class="deal-name">登录密码</span>
								<span class="deal-text">安全性高的密码可以使账户更安全，建议您定期更换密码。</span>
							</div>
						</li>
						<li>
							<a class="deal-btn fr" href="<%=path %>/memberInfo/toUpdateInfo.html?memberId=${memberInfos.memberId}&opt=yxbd" target="_self">立即绑定</a>
							<div class="deal-box">
								<span class="deal-flag">
								   <c:choose>
									  <c:when test="${memberInfos.memberEmail== null || memberInfos.memberEmail==''}">  
									    <!--未完成  icon-unbound  -->
									    <i class="icon icon-unbound"></i>
										<br />未绑定
									  </c:when>
									  <c:otherwise> 
									  <!--  已完成  icon-conplate  -->
									     <i class="icon icon-conplate"></i>
										<br />已绑定
									  </c:otherwise>
										</c:choose>
								</span>
							    <span class="deal-name">绑定邮箱</span>
								<span class="deal-text">验证后可用于邮箱找回密码、接收订单提醒等，保障您的账户更加安全。</span>
							</div>
						</li>
						<li >
							<a class="deal-btn fr" href="<%=path %>/memberInfo/toUpdateInfo.html?memberId=${memberInfos.memberId}&opt=sjbd" target="_self">立即绑定</a>
							<div class="deal-box">
								<span class="deal-flag">
									 <c:choose>
									  <c:when test="${memberInfos.phoneNo== null || memberInfos.phoneNo==''}">  
									    <!--未完成  icon-unbound  -->
									    <i class="icon icon-unbound"></i>
										<br />未绑定
									  </c:when>
									  <c:otherwise> 
									  <!--  已完成  icon-conplate  -->
									     <i class="icon icon-conplate"></i>
										<br />已绑定
									  </c:otherwise>
										</c:choose>
								</span>
							    <span class="deal-name">绑定手机</span>
								<span class="deal-text">绑定后可用于手机找回密码、接收手机动态验证码等，保证您的账户更加安全。</span>
							</div>
						</li>
						<li>
							<a class="deal-btn fr" href="<%=path %>/memberInfo/toUpdateInfo.html?memberId=${memberInfos.memberId}&opt=zfmm" target="_self">设置支付密码</a>
							<div class="deal-box">
								<span class="deal-flag">
								<c:choose>
									  <c:when test="${memberInfos.payPassWord== null || memberInfos.payPassWord==''}">  
									    <!--未完成  icon-unbound  -->
									    <i class="icon icon-unbound"></i>
										<br />未绑定
									  </c:when>
									  <c:otherwise> 
									  <!--  已完成  icon-conplate  -->
									     <i class="icon icon-conplate"></i>
										<br />已绑定
									  </c:otherwise>
										</c:choose>
								</span>
							    <span class="deal-name">支付密码</span>
								<span class="deal-text">安全性高的密码可以使账户更安全，购物前请提前设置支付密码。</span>
							</div>
						</li>
						<li class="noborder">
							<a class="deal-btn fr" href="<%=path %>/memberInfo/toUpdateInfo.html?memberId=${memberInfos.memberId}&opt=abwt" target="_self">立即设置</a>
							<div class="deal-box">
								<span class="deal-flag">
									
									<% 
										if(null !=memberInfos.getMemberQuestion()){
									%>
									       <i class="icon icon-conplate"></i> <!--已完成  icon-conplate--> 
											<br />已设置	
									<%
										}else{
									%>
									   <i class="icon icon-unbound"></i> <!--未设置  icon-unbound-->
											<br />未设置
									<%
										}
									%>
								</span>
							    <span class="deal-name">安保问题</span>
								<span class="deal-text">设置安保问题可以进一步提升您的账户的安全性。</span>
							</div>
						</li>
					</ul>
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
