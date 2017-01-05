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
	    <title>设置支付密码2</title>
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
					<dd class="on"><a href=""><i class="icon icon-security"></i> 账户安全</a></dd>
					<dd><a href=""><i class="icon icon-location"></i> 收货地址</a></dd>
					<dd><a href=""><i class="icon icon-person"></i> 个人资料</a></dd>
				</dl>
			</div>
			<div class="account-content fr" style="min-height: 477px;">
				<div class="account-item">
					<h2 class="h2-redTag"><span></span>设置支付密码</h2>
					<!--绑定流程  begin-->
		        	<div class="process_box">
		        		<p class="bar_box co"><i class="bar_box_left fl"></i><span class="bar on fl"></span><span class="bar fl"></span> <i class="bar_box_right fl"></i></p>
		        		<div class="step curr"><span class="">1</span><p>验证身份  </p></div>
		        		<div class="step step2 curr"><span class="">2</span><p>设置支付密码 </p></div>
		        		<div class="step step3"><span class="">3</span><p>绑定成功 </p></div>
		        	</div>        	
					<!--绑定流程  end-->
					<form class="bound-phone">
						<ul>
							<li>
								<label>输入支付密码：</label><input class="input-218" type="text" style="width: 178px;"  /> 
								<p class="payPwd-tip">必须是6-20个英文字母、数字或符号，不能是纯数字或纯字母 </p>
							</li>
							<li>
								<label>	密码强度：</label><span class="level-bar"><var id="level-show"></var></span>   <span id="security-val">中</span>
								
							</li>
							<li>
								<label>	确认支付密码：</label><input class="input-218" type="text" style="width:178px;"  /> 
							</li>
						
						</ul>
						<div class="edit_submit">
			    			<a class="red-btn" href="<%=path %>/memberInfo/updatePagPwd3.html">确 定</a>
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
