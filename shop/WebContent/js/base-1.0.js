//===========
//前端js公共框架_命名空间_base-1.10.js
//创建日期：2016.12.15
//===========

(function(base){
	//使用js解析的严格模式
	'use strict';
	
	//定义在jy对象下的属性变量
	//base.mobileReg=/^(13[0-9]|15[012356789]|18[0256789]|147)\d{8}$/;
	base.mobileReg=/^1\d{10}$/;    //手机号限制第一位是1
	base.urlReg=/^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\’:+!]*([^<>\"])*$/;
	base.emailReg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	
	//定义在jy对象下的方法函数	
	//倒计时方法，options属性：id、time、msg1、msg2、again
	base.timeCount=function(options,funct){
		var countTimeout,
			theTime,
			ele;
		//如果没有传入元素的ID，则不执行
		if(!options.id){
			return;
		}
		theTime=options.time;
		ele=$("#"+options.id);
		ele.unbind("click");		
		function timing(){
			ele.html(theTime+options.msg1);
			if(theTime==0){			
				clearTimeout(countTimeout);
				if(options.msg2!=undefined){
					ele.html(options.msg2);
				}				
				if(funct&&funct instanceof Function){
					funct();
				}
				//是否重新绑定倒计时
				if(options.again==undefined){
					ele.bind("click",function(){
						base.timeCount(options,funct);
					});
				}
			}				
			else{
				countTimeout=setTimeout(timing,1000);
			}
			theTime--;
		}
		timing();		
	};
	
	//表单相关的方法
	//placeholder在IE9以下的兼容问题，验证时需要注意
	base.placeholder=function(){
        var nodes = $("input");
        if (nodes.length && !("placeholder" in document.createElement("input"))){
        	
        	nodes.each(function(){
        		var that=$(this),
        			placeHolder=that.attr("placeholder");
        		if(placeHolder.length>0){
        			that.val(placeHolder);
	        		that.bind("focus",function(){
                        if (that.val() == placeHolder) {
                            that.val("");
                        }
	        		});
	        		that.bind("blur",function(){
                        if (that.val() == "") {
                            that.val(placeHolder);
                        }
	        		});
        		}
        	})
        	
        }
	};
	
	//验证手机号码
	base.isMobile=function(str){
		if(base.mobileReg.test(str))return true;
		return false;
	};
	
	//验证URL路径
	base.isURL=function(str){
    	if(str.match(base.urlReg))return true;
	    return false;
	};
	
	//验证邮箱地址	
	base.isEmail=function(str){
    	if(str.match(base.emailReg))return true;
    	return false;
	};
	
	//获取路径参数，需传入需要查询的参数的参数名
    base.getUrlParam=function(name){
        var url = unescape(window.location.href);
        if(url.indexOf(name + "=") > 0) {
            if(url.indexOf(name) > 0) {
                var allargs = url.split("?")[1];
                var args = allargs.split("&");
                for (var i = 0; i < args.length; i++) {
                    var arg = args[i].split("=");
                    if ((name.toLocaleLowerCase()) == (arg[0].toLocaleLowerCase())) {
                        return arg[1];
                    }
                }
            }
        } 
        else{
            return false;
        }
    };
	
	//弹出框
	base.floatBox=function(options){
		var defaultOpt={
			id:"",
			title:"消息提示",            //弹出框标题，默认
			contType:"",                //传入的content类型，带有html标签则传入"html"
			content:"loading ...",      //弹出框内容，传入的是html标签是不要拷贝页面上的html
			okVal:"",                   //确定按钮文，默认无按钮
			okFunc:"",                  //确定按钮绑定的方法，关闭弹框+传入的方法
			cancelVal:"",               //取消按钮文字，默认无按钮
			cancelFunc:"",              //取消按钮绑定的方法，关闭弹框+传入的方法
			fixed:false,                //是否固定定位，默认absolute在距离窗口顶部100像素处定位
			lock:false,                 //是否使用遮罩层，即黑色半透明层
			timeOut:true		        //是否自动消失，默认自动消失，时间为3秒
		},
			theOption=$.extend(true, defaultOpt, options),
			boxOverlay="<div id='js_boxOverlay' style='display:none; position:fixed; top:0; left:0; bottom:0; right:0; z-index: 999; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAACdJREFUeNpiZGBgaGCgAWBioBEYNXjU4FGDRw0eNXjU4JFiMECAAQCBJgCsEYKUwgAAAABJRU5ErkJggg==) 0 0 repeat;'></div>",
			boxBgUrl="url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAACdJREFUeNpiZGBgaGCgAWBioBEYNXjU4FGDRw0eNXjU4JFiMECAAQCBJgCsEYKUwgAAAABJRU5ErkJggg==) 0 0 repeat",
			boxWrap=[],
			boxWrapHtml,
			_top=100,
			_position="absolute",
			floatBoxWrap;		
		//如果页面上已经有弹框则不再弹出第二个弹框
		if($("#js_closeFloatBox").length){
			return;
		}		
		//是否不随屏幕滚动而滚动
		if(theOption.fixed){
			_position="fixed";
		}
		else{
			_top+=$(window).scrollTop();
		}		
		if(defaultOpt.id==""){			
			boxWrap.push('<div id="js_floatBoxWrap" style="position:'+_position+';top:-100%;left:50%;z-index:1000;width:480px;margin-left:-250px;padding:10px;background:'+boxBgUrl+';">');
			boxWrap.push('<div style="background: #fff; padding: 5px 10px 0; position: relative;">');
			boxWrap.push('<h6 style="font-weight: normal; font-size: 16px; color: #555; padding: 5px 10px; border-bottom: 1px solid #f1f1f1;">'+theOption.title+'</h6>');
			boxWrap.push('<a id="js_closeFloatBox" class="js_closeFloatBox" style="position: absolute; top: 3px; right: 20px; font-size: 18px; color: #999;" href="javascript:;">×</a>');
			boxWrap.push('</div>');
			boxWrap.push('<div style="padding: 10px 20px 15px; background: #fff;">');
			if(theOption.contType=="html"){
				boxWrap.push('<div style="">'+theOption.content+'</div>');	
			}
			else{
				boxWrap.push('<div style="padding-left: 20px; font-size: 14px; color: #666; line-height: 22px; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAPxJREFUeNpilJl3nwEJ8ABxERB7ALEZVOwUEO8A4j4g/gJTyIik0R6I5wOxIgN2AFKYCMQHQRwmqGAgEB9A0/QIiO8g8RWhagJhNgoB6YdQZ8LARyCWhzrtGJKzGaBi8ixQP/GgOes7VDMIPEWTA4cDyKneWPwjCsTMULY0FnlvkEYtLBLMUM0gIIFFXpEJ6ixsQAKPRmYmaDAz4HAuJxCzYZG7A9K4FYfGNCCegBzpSGArKDpAJt/DErJ6QHwZGlVyaNGhBLLxNTRFoINLQPwfTRMDVO1rWMpZA8RuePwLS3KeULXwJAcCu6HOa4ImbAakRN4EldsBEwQIMAB1qTLFu/DbUgAAAABJRU5ErkJggg==) 0 4px no-repeat;">'+theOption.content+'</div>');	
			}
			boxWrap.push('<div style="text-align: center;">');
			if(theOption.okVal){
				boxWrap.push('<a id="js_floatBoxOkBtn" class="js_closeFloatBox" style="display: inline-block; font-size: 15px; color: #fff; padding: 5px 35px; margin:20px 10px 0; background: #fa993b; border: 1px solid #f47302;" href="javascript:;">'+theOption.okVal+'</a>');
			}
			if(theOption.cancelVal){
				boxWrap.push('<a id="js_floatBoxCancelBtn" class="js_closeFloatBox" style="display: inline-block; font-size: 15px; color: #999; padding: 5px 35px; margin:20px 10px 0; background: #f1f1f1; border: 1px solid #e8e8e8;" href="javascript:;">'+theOption.cancelVal+'</a>');
			}
			boxWrap.push('</div></div></div>');			
			boxWrapHtml=boxWrap.join("");					
			$("body").append(boxWrapHtml);
			floatBoxWrap=$("#js_floatBoxWrap")
			floatBoxWrap.animate({"top":_top},600);
			//如果设置自动消失，且没有通过关闭按钮关闭弹框的情况下调用
			if(theOption.timeOut&&floatBoxWrap.length){
				setTimeout(closeFloatBox,3000);
			}
			//为按钮绑定函数
			$("#js_floatBoxOkBtn").bind("click",theOption.okFunc);
			$("#js_floatBoxCancelBtn").bind("click",theOption.cancelFunc);			
		}
		else{
			floatBoxWrap=$("#"+theOption.id);
			var _width=floatBoxWrap.width(),
				_marginLeft=((parseInt(_width)/2)+10)*(-1);
			if(floatBoxWrap.length){
				floatBoxWrap.css({"position":_position,"top":_top+"px","left":"50%","z-index":"1000","margin-left": _marginLeft+"px","padding": "10px","background":boxBgUrl});
				floatBoxWrap.prepend('<a id="js_closeFloatBox" class="js_closeFloatBox" style="position: absolute; top: 10px; right: 18px; font-size: 18px; color: #999;" href="javascript:;">×</a>');
			}
			else{
				base.floatBox({content:"未找到相关内容",lock:true,fixed:true});
			}			
			floatBoxWrap.fadeIn(600);
		}		
		if(theOption.lock){
			if($("#js_boxOverlay").length){
				$("#js_boxOverlay").remove();
			}
			$("body").append(boxOverlay);
			$("#js_boxOverlay").fadeIn(300);
		}				
		//点击关闭按钮和确定取消按钮时
		$(".js_closeFloatBox").bind("click",function(){
			closeFloatBox();
		});				
		function closeFloatBox(){
			if(theOption.lock){
				$("#js_boxOverlay").fadeOut(300);
				setTimeout(function(){
					$("#js_boxOverlay").remove();
				},300);
			}
			if(theOption.id==""){
				floatBoxWrap.animate({"top":"-100%"},200);
				setTimeout(function(){
					floatBoxWrap.remove();
				},200);
			}
			else{
				floatBoxWrap.fadeOut(300);
				setTimeout(function(){
					$("#js_closeFloatBox").remove();
				},300);
			}
		}
	};
	
	base.closeFloatBox=function(){
		if($("#js_boxOverlay").length){
			$("#js_boxOverlay").remove();
		}
		if($("#js_closeFloatBox").parent().parent()=="js_floatBoxWrap"){
			$("#js_closeFloatBox").parent().parent().remove();
		}
		else{
			$("#js_closeFloatBox").parent().hide();
			$("#js_closeFloatBox").remove();
		}	
	};
	
	
}(window.jy={}));




