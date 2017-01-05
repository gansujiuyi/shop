var usernameDefaultValue = "";
var js_checkCodeDefaultValue = "";
var yanzhengma = false;
$(function() {
	$("#js_userName").val('');
	$("#js_userPsw").val('');
	$("#js_userName").focus();
	$("#js_checkCode").val(js_checkCodeDefaultValue);
	$("#js_checkCode").focus(function() {
		var js_checkCode = $(this).val();
		if (js_checkCode == js_checkCodeDefaultValue) {
			$(this).val('');
		}
	});
	$("#js_checkCode").blur(function() {
		var js_checkCode = $(this).val();
		if (js_checkCode == '') {
			$(this).val(js_checkCodeDefaultValue);
		}
	});
	changeImgCode();
});
/**
 * 修改验证码图片
 */
changeImgCode = function() {
	$("#js_checkCode").val(js_checkCodeDefaultValue);
	var verify = $("#imgcode");
	verify.attr('src', projcetname + '/imgcode?rand='+Math.random());
}
usernameblur = function() {
	var username = $("#js_userName").val();
	if (username == '') {
		$("#js_userName").val(usernameDefaultValue);
	}
}
usernamefocus = function() {
	var username = $("#js_userName").val();
	if (username == usernameDefaultValue) {
		$("#js_userName").val('');
	}
}
valiCode = function() {
	$.ajax({
		url : projcetname + "/memberInfo/valiCode.html",
		type : "post",
		async : false,
		data : {
			imagecode : $("#js_checkCode").val()
		},
		dataType : "json",
		success : function(message) {
			if (message) {
				yanzhengma = true;
			} else {
				yanzhengma = false;
			}
		}
	});
}
submitForm = function() {
	$("#msg").html("");
	var username = $("#js_userName").val();
	var js_checkCode = $("#js_checkCode").val();
	if (username == '' || username == usernameDefaultValue) {
		$("#msg").html("用户名不能为空");
		$("#js_userName").focus();
		return;
	} else if ($("#js_userPsw").val() == '') {
		$("#msg").html("密码不能为空");
		$("#js_userPsw").focus();
		return;
	} else if (js_checkCode == '' || js_checkCode == js_checkCodeDefaultValue) {
		$("#msg").html("验证码不能为空");
		$("#js_checkCode").focus();
		return;
	} else {
		valiCode();
		if (yanzhengma) {
			$("#tijiao").val("正在登录...");
			$("#tijiao").attr("onclick","javascript:void(0)"); 
			$("#loginForm").submit();
		} else {
			$("#tijiao").val("立即登录");
			$("#tijiao").attr("onclick","javascript:submitForm()"); 
			changeImgCode();
			$("#msg").html("验证码错误");
		}
	}
}
strdown = function(event) {
	if(event.keyCode==13){
		submitForm();
	}
}