//注册，登录表单验证
$(document).ready(function(){
	$.formValidator.initConfig({theme:"Default",submitOnce:true,formID:"register",errorFocus:false,submitAfterAjaxPrompt : '有数据正在异步验证，请稍等'});
	//昵称验证：最小长度验证；非空验证；两边空格符号验证；唯一性ajax验证
	$("#username")
	.formValidator({onShowFixText:" 请正确输入您的真实姓名",onShow:"请正确输入您的真实姓名 ",onFocus:"请正确输入您的真实姓名 ",onCorrect:"&nbsp;"})
	.functionValidator({fun:function(){if($("#username").val()==""){return "姓名不能为空，请输入";}else{return true;}}})
	.ajaxValidator({
		dataType : "",
		async : false,
		url : "",
		success : function(data){
            if( data.indexOf("此昵称可以注册!") > 0 ) return true;
            if( data.indexOf("此昵称已存在,请更换!") > 0 ) return false;
			return false;
		},
		buttons: $("#button"),
		error: function(jqXHR, textStatus, errorThrown){alert("服务器没有返回数据，可能服务器忙，请重试"+errorThrown);},
		onError : "该昵称不可用，请更换",
		onWait : "正在进行校验，请稍候"
	});
	//手机验证（非空不行，格式不正确不行，位数不够不行）
	$("#phone")//个人注册
	.formValidator({onShowFixText:"请正确输入您的11位手机号",onShow:"请正确输入您的11位手机号",onFocus:"请正确输入您的11位手机号",onCorrect:"&nbsp;"})
	.functionValidator({fun:function(){$("div.righttxt").hide();return true;},onError:""})
	.functionValidator({fun:function(){if($("#phone").val()==""){return "手机号码不能为空，请输入";}else{return true;}}})
	.inputValidator({min:11,max:11,onError:"手机号码是11位的,请确认"})
	.regexValidator({regExp:"mobile",dataType:"enum",onError:"手机的格式不正确"})
	.functionValidator({fun:function(){$("div.righttxt").show();return true;},onError:""});
	//银行卡卡号验证
	$("#bank-card")
	.formValidator({onShowFixText:"请正确输入您的银行卡号。",onShow:"请正确输入您的银行卡号。",onFocus:"请正确输入您的银行卡号。",onCorrect:"格式正确&nbsp;"})
	.functionValidator({fun:function(){if($("#bank-card").val()==""){return "银行卡号不能为空，请输入";}else{return true;}}})
	.functionValidator({fun:function(code,codeNode){return /^6212000101\d{9}$/.test(code);},onError:"银行卡输入有误，请重新输入"});
	//身份证（非空不行，格式不正确不行，位数不够不行）
	$("#idcard")
	.formValidator({onShowFixText:"请正确输入您的18位身份证号。",onShow:"请正确输入您的18位身份证号。",onFocus:"请正确输入您的18位身份证号。",onCorrect:"&nbsp;"})
	.functionValidator({fun:function(){if($("#idcard").val()==""){return "身份证号不能为空，请输入";}else{return true;}}})
	.inputValidator({min:18,max:18,onError:"身份证号是18位数字,请确认"})
	.regexValidator({regExp:"num1",dataType:"idcard",onError:"格式不正确"});
	//手机验证码（非空不行，格式不正确不行，位数不够不行）
	$("#phone_yzm")//个人注册
	.formValidator({onShowFixText:"&nbsp;",onShow:"&nbsp;",onFocus:"请输入手机验证码。",onCorrect:"&nbsp;"})
	.functionValidator({fun:function(){if($("#phone_yzm").val()==""){return "手机验证码不能为空，请输入";}else{return true;}}})
	.inputValidator({min:6,max:6,onError:"手机验证码是6位数字,请确认"})
	.regexValidator({regExp:"num1",dataType:"enum",onError:"格式不正确"});
	//登录--密码
	$("#loginPwd")
	.formValidator({onShow:"请设置6-20位英文字母、数字或者符号",onFocus:"请设置6-20位英文字母、数字或者符号",onCorrect:"&nbsp;"})
	.functionValidator({fun:function(){if($("#payPwd").val()==""){return "请输入支付密码";}else{return true;}}})
	.inputValidator({min:6,max:20,onErrorMin:"登录密码至少6位，请确认",onErrorMax:"登录密码不能超过20位",empty:{leftEmpty:false,rightEmpty:false,emptyError:"支付密码两边不能有空格"},onError:"请输入支付密码"})
	.regexValidator({regExp:"(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,20}",onError:"请设置6-20位英文字母、数字或者符号"})
	//确认登录密码
	$("#loginPwdCopy")
	.formValidator({onShow:"请确认登录密码",onFocus:"请确认登录密码",onCorrect:"&nbsp;"})
	.functionValidator({fun:function(){if($("#loginPwdCopy").val()==""){return "请确认登录密码";}else{return true;}}})
	.compareValidator({desID:"loginPwd",operateor:"=",onError:"密码输入不一致，请重新输入" });
	

})
