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
	    <title>绑定手机1</title>
	     <jsp:include page="../../base/base.jsp"></jsp:include>
	    <script type="text/javascript">
	    function sendEmaill(){
			var memberEmail = $("#memberEmail").val();
			$.ajax({
				url: "<%=path%>/memberInfo/sendEmailCode.html", 	//请求地址
		        type: "POST",                       	//请求方式
		        data: { memberEmail: memberEmail},   	//请求参数
		        dataType: "json",
		        success: function (send) {
		        	if(send){
	 	        		alert('发送成功！');
		        		jy.timeCount({id:"get_yanzm",time:120,msg1:"秒后重新获取",msg2:"重新获取"});
		        	}
		        },
		        fail: function (status) {
		          alert("发送验证码时系统错误");
		        }
			});
		}
		function checkEmailCode(){
			var emailCode = $("#emailCode").val();
			var memberEmail = $("#memberEmail").val();
			if(null== emailCode || "" ==emailCode){
				$("#phone_yzmTip").html("验证码不能为空");
				return;
			}
			$.ajax({
				url: "<%=path%>/memberInfo/checkEmailCode.html",     //请求地址
		        type: "POST",                      			//请求方式
		        data: { memberEmail: memberEmail, 
		        		emailCode: emailCode },        		//请求参数
		        dataType: "json",
		        success: function (check) {
		            if(check){
	 	            	alert("验证成功");
						
		            	$("#updateForm").submit();
		            }else{
	 	            	alert("验证失败");
				$("#phone_yzmTip").html("验证码已过期");
		            	return;
		            }
		        },
		        fail: function (status) {
		        	alert("校验验证码时系统错误");
		        }
		    });
		}
		$(document).ready(function(){
			$("#send-email").click(function(){
				sendEmaill();
				jy.timeCount({id:"send-email",time:60,msg1:"秒后重新发送",msg2:"重新发送"});
			});
		});
		
		function next(){
			checkEmailCode();
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
		        		<p class="bar_box co"><i class="bar_box_left fl"></i><span class="bar fl"></span><span class="bar fl"></span> <i class="bar_box_right fl"></i></p>
		        		<div class="step curr"><span class="">1</span><p>验证身份  </p></div>
		        		<div class="step step2"><span class="">2</span><p>绑定手机 </p></div>
		        		<div class="step step3"><span class="">3</span><p>绑定成功 </p></div>
		        	</div>        	
					<!--绑定流程  end-->
					<form class="bound-phone" action="<%=path %>/memberInfo/updateInfo.html?opt=${opt }" method="post" id="updateForm">
						<input type="hidden" name="memberId"  value="${memberInfos.memberId }" id="memberId" />
						<input type="hidden" name="memberName"  value="${memberInfos.memberName }"  id="memberName" />
						<input type="hidden" name="mpassWord"  value="${memberInfos.mpassWord }" id="mpassWord" />
						<input type="hidden" name="memberAnswer"  value="${memberInfos.memberAnswer }" id="memberAnswer" />
						<input type="hidden" name="memberQuestion"  value="${memberInfos.memberQuestion }" id="memberQuestion" />
						<input type="hidden" name="memberRealName"  value="${memberInfos.memberRealName }" id="memberRealName" />
						<input type="hidden" name="memberSex"  value="${memberInfos.memberSex }" id="memberSex" />
						<input type="hidden" name="memberAddress"  value="${memberInfos.memberAddress }" id="memberAddress" />
						<input type="hidden" name="memerIdNo"  value="${memberInfos.memerIdNo }" id="memerIdNo" />
						<input type="hidden" name="memberRegTime"  value="${memberInfos.memberRegTime }" id="memberRegTime" />
						<input type="hidden" name="memberStatus"  value="${memberInfos.memberStatus }" id="memberStatus" />
						<input type="hidden" name="membertype"  value="${memberInfos.membertype }" id="membertype" />
						<input type="hidden" name="memberLevel"  value="${memberInfos.memberLevel }" id="memberLevel" />
						<input type="hidden" name="validateCode"  value="${memberInfos.validateCode }" id="validateCode" />
						<input type="hidden" name="phoneNo"  value="${memberInfos.phoneNo }" id="phoneNo" />
						<input type="hidden" name="payPassWord"  value="${memberInfos.payPassWord }" id="payPassWord" />
						<ul>
							<li>
								<label >您绑定的邮箱:</label><input type="text" name= "memberEmail" id="memberEmail" value="${memberInfos.memberEmail }" readonly="readonly"/>
							</li>
							<li>
								<label>	请输入验证码：</label>
								<input class="input-218" type="text" style="width: 95px;" id="emailCode" /> 
								<span id="send-email" class="send-email">确认并发送邮件</span>
							</li>
							<li>
							<div class="e_msg-weak fl" id="phone_yzmTip"></div>
							</li>
						
						</ul>
						<div class="edit_submit">
			    			<a class="red-btn" href="#" onclick="next();">下一步</a>
			    			
			    			
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
