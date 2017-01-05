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
<title>注册第二步</title>
<jsp:include page="../../base/base.jsp"></jsp:include>
<link rel="stylesheet" href="<%=path%>/css/pwd.css" type="text/css">
<script type="text/javascript">
	function checkPwd(){
		var mpassWord_1 = $("#mpassWord_1").val();
		var mpassWord_2 = $("#mpassWord_2").val();
		if(null==mpassWord_1 || ""==mpassWord_1){
			$("#mpassWord_1Tip").html("登录密码不能为空！");
			return;
		}else{
			$("#mpassWord_1Tip").html("");
		}
		if(null==mpassWord_2 || ""==mpassWord_2){
			$("#mpassWord_2Tip").html("确认登录密码不能为空！");
			return;
		}else{
			$("#mpassWord_2Tip").html("");
		}
		if(mpassWord_1 == mpassWord_2){
			$("#registerForm").submit();
			$("#loginPwdCopyTip").html("");
		}else{
			$("#loginPwdCopyTip").html("两次密码输入不一致！");
		}
		
	}
	$(function () {
		$('#mpassWord_1').keyup(function () { 
			var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
			var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
			var enoughRegex = new RegExp("(?=.{6,}).*", "g"); 
		
			if (false == enoughRegex.test($(this).val())) { 
				$('#level_1').removeClass('pw-weak'); 
				$('#level_1').removeClass('pw-medium'); 
				$('#level_1').removeClass('pw-strong'); 
				$('#level_1').addClass(' pw-defule'); 
				 //密码小于六位的时候，密码强度图片都为灰色 
			} 
			else if (strongRegex.test($(this).val())) { 
				$('#level_1').removeClass('pw-weak'); 
				$('#level_1').removeClass('pw-medium'); 
				$('#level_1').removeClass('pw-strong'); 
				$('#level_1').addClass(' pw-strong'); 
				 //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强 
			} 
			else if (mediumRegex.test($(this).val())) { 
				$('#level_1').removeClass('pw-weak'); 
				$('#level_1').removeClass('pw-medium'); 
				$('#level_1').removeClass('pw-strong'); 
				$('#level_1').addClass(' pw-medium'); 
				 //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
			} 
			else { 
				$('#level_1').removeClass('pw-weak'); 
				$('#level_1').removeClass('pw-medium'); 
				$('#level_1').removeClass('pw-strong'); 
				$('#level_1').addClass('pw-weak'); 
				 //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
			} 
			return true; 
		});
		
		
	
		$('#mpassWord_2').keyup(function () { 
			var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
			var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
			var enoughRegex = new RegExp("(?=.{6,}).*", "g"); 
		
			if (false == enoughRegex.test($(this).val())) { 
				$('#level_2').removeClass('pw-weak'); 
				$('#level_2').removeClass('pw-medium'); 
				$('#level_2').removeClass('pw-strong'); 
				$('#level_2').addClass(' pw-defule'); 
				 //密码小于六位的时候，密码强度图片都为灰色 
			} 
			else if (strongRegex.test($(this).val())) { 
				$('#level_2').removeClass('pw-weak'); 
				$('#level_2').removeClass('pw-medium'); 
				$('#level_2').removeClass('pw-strong'); 
				$('#level_2').addClass(' pw-strong'); 
				 //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强 
			} 
			else if (mediumRegex.test($(this).val())) { 
				$('#level_2').removeClass('pw-weak'); 
				$('#level_2').removeClass('pw-medium'); 
				$('#level_2').removeClass('pw-strong'); 
				$('#level_2').addClass(' pw-medium'); 
				 //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
			} 
			else { 
				$('#level_2').removeClass('pw-weak'); 
				$('#level_2').removeClass('pw-medium'); 
				$('#level_2').removeClass('pw-strong'); 
				$('#level_2').addClass('pw-weak'); 
				 //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
			} 
			return true; 
		});
	});
</script>
</head>
<body>
    <!--首页头部   begin-->
	<jsp:include page="../../base/header_1.jsp"></jsp:include>
	<!--头部   End-->
	
	<!--首页中间部分-->
	<div class="mian-content page co">
    	<!--免费注册  开始-->
        <div class="mb20 mt20">
        	<!--步骤 开始-->
        	<div class="process_box">
        		<p class="bar_box co"><i class="bar_box_left fl"></i><span class="bar on fl"></span><span class="bar fl"></span> <i class="bar_box_right fl"></i></p>
        		<div class="step curr"><span class="">1</span><p>填写账户信息</p></div>
        		<div class="step step2 curr"><span class="">2</span><p>设置登录密码</p></div>
        		<div class="step step3"><span class="">3</span><p>注册成功</p></div>
        	</div>        	
        	<!--步骤 结束-->
        	
        	<div class="register_box" style="padding: 80px 0;">
        	<form action="<%=path%>/memberInfo/saveMemberInfos.html" method="post" id="registerForm">
        		<ul >
        			<li>
        				<input type="hidden" name="memberEmail" value="${memberInfos.memberEmail }"/>
        				<input type="hidden" name="memberName" value="${memberInfos.memberName }"/>
        			</li>
        			<li>
        				<div class="fl">
	        				<label><i></i>登录密码：</label>
	        				<input id="mpassWord_1" class="border" type="password"  maxlength="30"  />
	        			</div>
	        			<div class="e_msg-weak fl" id="mpassWord_1Tip" style="color:red;margin-left:20px;"></div>
	        			<div id="level_1" class="pw-strength">
		        			<div class="pw-bar"></div>
							<div class="pw-bar-on"></div>
							<div class="pw-txt">
								<span>弱</span>
								<span>中</span>
								<span>强</span>
							</div>
						</div>
	        			<div class="e_msg-weak fl" id="loginPwdTip"></div>
        			</li>
        			<li>
        				<div class="fl">
	        				<label><i></i>确认登录密码：</label>
	        				<input id="mpassWord_2" class="border" type="password"  maxlength="30" name="mpassWord" value="${memberInfos.mpassWord }"   />
        				</div>
        				<div class="e_msg-weak fl" id="mpassWord_2Tip" style="color:red;margin-left:20px;"></div>
        				<div id="level_2"  class="pw-strength">
        				 <div class="pw-bar"></div>
							<div class="pw-bar-on"></div>
							<div class="pw-txt">
								<span>弱</span>
								<span>中</span>
								<span>强</span>
							</div>
        				</div>
        				<div class="e_msg-weak fl" id="loginPwdCopyTip" style="color: red;margin-left:140px;margin-top:30px;"></div>
        			</li>
        		</ul>
	    		<div class="edit_submit_1">
	    			<a class="grey-btn mr10" href="<%=path%>/memberInfo/toMemberInfoReg1.html" target="_self">上一步</a>
	    			<a class="red-btn"  href="javascript:checkPwd();" target="_self">确 定</a>
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