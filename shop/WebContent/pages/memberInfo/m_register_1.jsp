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
<title>注册第一步</title>
<jsp:include page="../../base/base.jsp"></jsp:include>
<script type="text/javascript">
   function isEmail(str){
	 var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	 return reg.test(str);
	}
	function sendEmaill(){
		var memberEmail = $("#memberEmail").val();
		if (!isEmail(memberEmail)){
		    $("#memberEmailTip").html("输入的邮箱格式不正确!");
			 return ;
		}else{
			$("#memberEmailTip").html("");
		}
		var params = {"memberEmail" : memberEmail };
		$.ajax({
			url: "<%=path%>/memberInfo/sendEmailCode.html", 	//请求地址
	        type: "post",                       	//请求方式
	        data: params,   	//请求参数
	        dataType: "json",
	        success: function (send) {
	        	if(send=="true"){
					$("#msgTip").html("验证码发送成功！");
	        		jy.timeCount({id:"get_yanzm",time:120,msg1:"秒后重新获取",msg2:"重新获取"});
	        	}else{
	        		$("#msgTip").html("发送失败！");
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
		if(null== memberEmail || "" ==memberEmail){
			$("#memberEmailTip").html("邮箱不能为空");
			return;
		}
		if (!isEmail(memberEmail)){
		    $("#memberEmailTip").html("输入的邮箱格式不正确!");
			 return ;
		}else{
			$("#memberEmailTip").html("");
		}
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
	            if(check=="true"){
	            	$("#registerForm").submit();
	            }else{
			        $("#msgTip").html("验证码已过期");
	            	return;
	            }
	        },
	        fail: function (status) {
	        	alert("校验验证码时系统错误");
	        }
	    });
	}
	
	$(document).ready(function(){
		$("#get_yanzm").click(function(){
			checkInfo();
// 			sendEmaill();
		});
	});
	function checkInfo(){
		$("#usernameTip").html("");
		var memberEmail = $("#memberEmail").val();
		var memberName = $("#memberName").val();
		if(null== memberEmail || "" ==memberEmail){
			$("#memberEmailTip").html("邮箱不能为空");
			return;
		}
		if (!isEmail(memberEmail)){
		    $("#memberEmailTip").html("输入的邮箱格式不正确!");
			 return ;
		}else{
			$("#memberEmailTip").html("");
		}
		if(null== memberName || "" == memberName){
			$("#usernameTip").html("会员名称不能为空");
			return;
		}
	
		$.ajax({
			url: "<%=path%>/memberInfo/checkInfo.html", 	//请求地址
	        type: "POST",                       	//请求方式
	        data: { memberEmail: memberEmail,
	        	memberName: memberName},   	//请求参数
	        dataType: "json",
	        success: function (check) {
	        	if(check=="true"){
	        		$("#usernameTip").html("邮箱与会员名称被注册");
	        	}else{
	        		$("#usernameTip").html("");
	        		sendEmaill();//发送邮箱验证码
	        	}
	        },
	        fail: function (status) {
	  	       alert("校验注册信息时系统错误");
	  	    }
		});
	}
	
	
	
	
	
</script>



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
	        		<p class="bar_box co"><i class="bar_box_left fl"></i><span class="bar fl"></span><span class="bar fl"></span> <i class="bar_box_right fl"></i></p>
	        		<div class="step curr"><span class="">1</span><p>填写账户信息</p></div>
	        		<div class="step step2"><span class="">2</span><p>设置登录密码</p></div>
	        		<div class="step step3"><span class="">3</span><p>注册成功</p></div>
	        	</div>        	
	        	<!--步骤 结束-->
	        	
	        	<div class="register_box">
	        	<form action="<%=path%>/memberInfo/toMemberInfoReg2.html" method="post" id="registerForm">
	        		<ul >
	        			<li>
	        				<div class="fl">
		        				<label><i></i>邮箱：</label>
		        				<input id="memberEmail" class="border" type="text" maxlength="40"  name="memberEmail" value="${memberInfos.memberEmail }" onfocus="this.value=''"  onblur="if(!value){value=defaultValue;}" />
	        				</div>
	        				<div class="e_msg-weak fl" id="memberEmailTip" style="color:red;margin-left:20px;"></div>
	        			</li>
	        			<li>
	        				<div class="fl">
		        				<label><i></i>会员名称：</label>
		        				<input id="memberName" class="border" type="text"  name="memberName" maxlength="20"  value="${memberInfos.memberName }" />
		        			</div>	
	        				<div class="e_msg-weak fl" id="usernameTip" style="color:red;margin-left:20px;"></div>
	        			</li>
	        			<li>
	        				<div class="fl">
		        				<label><i></i>邮箱验证码：</label>
		        				<input id="emailCode" class="border" style="width: 98px;" type="text" maxlength="6" />
		        				<span class="get_yanzm" id="get_yanzm">发送邮箱验证码</span>
		        				<span class="e_msg-weak fr" id="msgTip" style="color:red;margin-left:20px;margin-top:5px;"></span>
		        			</div>
	        				<div class="e_msg-weak fl" id="phone_yzmTip" style="color:red;margin-left:20px;"></div>
	        			</li>
	        			
	        		</ul>
		    		<div class="edit_submit">
		    			<a class="red-btn" href="javascript:checkEmailCode();" target="_self">下一步</a>
		    		</div>
				</form>
	        	</div>
	        </div>
	        <!--免费注册 end-->
	    </div>
	
	  <!--底部   begin-->
   <jsp:include page="../../base/footer.jsp"></jsp:include>
	<!--底部   End-->
</body>
</html>