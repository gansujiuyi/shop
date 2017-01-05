<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + ":"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0055)http://apply.shop.jd.com/apply/flow_contact_view.action -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK"><script type="text/javascript" async="" src="<%=path%>/js/seller/mvl.js"></script>
    
    <title>联系方式</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/seller/base.css" media="all">
    <link rel="stylesheet" href="<%=path%>/css/seller/enter.css">
    <script type="text/javascript" src="<%=path%>/js/seller/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/seller/jquery.metadata.js"></script>
    <script type="text/javascript" src="<%=path%>/js/seller/jquery.validate.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/seller/WdatePicker.js"></script><link href="<%=path%>/js/seller/WdatePicker.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<%=path%>/js/seller/jquery.validate.popext_20111130.js"></script>
    
    <script type="text/javascript">
    var _mvq = _mvq || [];
    _mvq.push(['$setAccount', 'm-9-1']);
    _mvq.push(['$logConversion']);
    (function () {
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript';
        mvl.async = true;
        mvl.src = '//misc.360buyimg.com/lib/js/2012/mvl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(mvl, s);
    })();
</script>

<script type="text/javascript">
    $(function () {
        $("#principal").blur(function(){
            if($("#principal").val()!=''){
                $("#principalSpan").text("");
            }
        });

        $("#stepForm").validate({
            rules: {
                "venderApply.contactName": {
                    sellerRequired: true,
                    zh_CnLength: 20
                },
                "venderApply.principal": {
                    zh_CnLength: 20
                },
                "venderApply.contactPhone": {
                    sellerRequired: true,
                    isMobile: true,
                    zh_CnLength: 20
                },
                "venderApply.contactEmail": {
                    sellerRequired: true,
                    isMail: true,
                    zh_CnLength: 50
                }
            },
            messages: {
                "venderApply.contactName": {
                    sellerRequired: "请输入联系人姓名",
                    zh_CnLength: jQuery.format("联系人姓名最大允许输入{0}个字符,一个汉字占两个字符")
                },
                "venderApply.principal": {
                    zh_CnLength: jQuery.format("联系人姓名最大允许输入{0}个字符,一个汉字占两个字符")
                },
                "venderApply.contactPhone": {
                    sellerRequired: "请输入联系人手机",
                    isMobile: "请正确填写您的联系人手机,如：13812345678",
                    zh_CnLength: jQuery.format("联系人手机最大允许输入{0}个字符")
                },
                "venderApply.contactEmail": {
                    sellerRequired: "请输入邮箱",
                    isMail: "邮箱格式不正确",
                    zh_CnLength: jQuery.format("电子邮箱最大允许输入{0}个字符")
                }
            }
        });

        $("#rdo2").click(function(){
            $("#investmentNameDiv").css("display","block");
        });
        $("#rdo1").click(function(){
            $("#investmentNameDiv").css("display","none");
            $("#principal").val("");
        });

    });
</script>
</head>
<body>
    <script type="text/javascript" src="<%=path%>/js/seller/base-2011.js" charset="gb2312"></script>
<div id="shortcut-2013">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()" rel="nofollow">收藏京东</a></li>
		</ul>
		<ul class="fr lh">
			<li class="fore1" id="loginbar"><a href="http://home.jd.com/" target="_blank" class="link-user">小彩笔</a>&nbsp;&nbsp;<a href="https://passport.jd.com/uc/login?ltype=logout" class="link-logout">退出</a></li>
			<li class="fore2 ld">
				<s></s>
				<a href="http://order.jd.com/center/list.action" rel="nofollow">我的订单</a>
			</li>
			<li class="fore2-1 ld" id="jd-vip" style="padding-left: 12px;"><s></s><a target="_blank" rel="nofollow" href="http://vip.jd.com/">京东会员</a></li>
			    <li class="fore3 ld menu" id="app-jd" data-widget="dropdown" clstag="homepage|keycount|home2013|01d">        <s></s><i></i>        <span class="outline"></span>        <span class="blank"></span>        <a href="http://app.jd.com/" target="_blank">手机京东</a><b></b>        <div class="dd lh">            <div class="qr-info"></div>            <div class="qr-item qr-jd-app">                <div class="qr-img">                    <img id="app-qrcode-img" data-img="1" trigger-lazy-img="//img11.360buyimg.com/da/jfs/t274/64/776867158/30074/3341c9cd/54237c80Nbc2c77a4.jpg" class="err-product" width="76" height="76" alt="手机京东" src="<%=path%>/js/seller/blank.gif">                </div>                <div class="qr-ext"><strong>京东客户端"</strong>                    <a clstag="homepage|keycount|home2013|01d01" href="http://itunes.apple.com/cn/app/id414245413" target="_blank" class="btn-app-apple"></a>                    <a clstag="homepage|keycount|home2013|01d02" href="http://sq.jd.com/T4Lxxc" target="_blank" class="btn-app-android"></a>                </div>            </div>            <div class="qr-item qr-jd-jr">                <div class="qr-img">                    <img id="app-qrcode-img" data-img="1" trigger-lazy-img="//img30.360buyimg.com/da/jfs/t763/184/1443816581/4493/1784d4d7/553ee9bdN2e4f09e4.png" class="err-product" width="76" height="76" alt="京东钱包客户端" src="<%=path%>/js/seller/blank.gif">                </div>                <div class="qr-ext"><strong>京东钱包客户端</strong>                    <a clstag="homepage|keycount|home2013|01d03" href="https://itunes.apple.com/cn/app/wang-yin-qian-bao/id832444218?mt=8" target="_blank" class="btn-app-apple"></a>                    <a clstag="homepage|keycount|home2013|01d04" href="http://sq.jd.com/vFIRtq" target="_blank" class="btn-app-android"></a>                </div>            </div>        </div>    </li>
			<li class="fore4 ld menu" id="biz-service" data-widget="dropdown">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				客户服务
				<b></b>
				<div class="dd">
					<div><a href="http://help.jd.com/index.html" target="_blank">帮助中心</a></div>
					<div><a href="http://myjd.jd.com/repair/orderlist.action" target="_blank" rel="nofollow">售后服务</a></div>
					<div><a href="http://chat.jd.com/jdchat/custom.action" target="_blank" rel="nofollow">在线客服</a></div>
					<div><a href="http://myjd.jd.com/opinion/list.action" target="_blank" rel="nofollow">投诉中心</a></div>
					<div><a href="http://www.jd.com/contact/service.html" target="_blank">客服邮箱</a></div>
				</div>
			</li>
			<li class="fore5 ld menu" id="site-nav" data-widget="dropdown">
				<s></s>
				<span class="outline"></span>
				<span class="blank"></span>
				网站导航
				<b></b>
				<div class="dd lh">
					<dl class="item fore1">
						<dt>特色栏目</dt>
						<dd>
							<div><a target="_blank" href="http://mobile.jd.com/index.do">京东通信</a></div>
							<div><a href="http://jdstar.jd.com/" target="_blank">校园之星</a></div>
							<div><a target="_blank" href="http://my.jd.com/personal/guess.html">为我推荐</a></div>
							<div><a target="_blank" href="http://shipingou.jd.com/">视频购物</a></div>
							<div><a target="_blank" href="http://club.jd.com/">京东社区</a></div>
							<div><a target="_blank" href="http://read.jd.com/">在线读书</a></div>
							<div><a target="_blank" href="http://diy.jd.com/">装机大师</a></div>
							<div><a target="_blank" href="http://giftcard.jd.com/market/index.action">京东E卡</a></div>
							<div><a target="_blank" href="http://channel.jd.com/jiazhuang.html">家装城</a></div>
							<div><a target="_blank" href="http://dapeigou.jd.com/">搭配购</a></div>
							<div><a target="_blank" href="http://xihuan.jd.com/">我喜欢</a></div>
						</dd>
					</dl>
					<dl class="item fore2">
						<dt>企业服务</dt>
						<dd>
							<div><a target="_blank" href="http://giftcard.jd.com/company/index">企业客户</a></div>
							<div><a target="_blank" href="http://sale.jd.com/p10997.html">办公直通车</a></div>
						</dd>
					</dl>
					<dl class="item fore3">
						<dt>旗下网站</dt>
						<dd>
							<div><a target="_blank" href="http://en.jd.com/">English Site</a></div>
						</dd>
					</dl>
				</div>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div><!--shortcut end-->    
<div id="o-header-2013">
    <div class="w" id="header-2013">
        <div id="logo-2013" class="ld"><a href="http://www.jd.com/" hidefocus="true"><b></b><img src="<%=path%>/js/seller/logo.png" width="227" height="40" alt="京东"></a></div>
        <div class="header-right">
            <div class="help-area">
                <a href="http://help.jd.com/Vender/viewQuestion-778-2410.html" target="_blank">
                    <i class="icon-help"></i>
                    入驻帮助
                </a>
            </div>
        </div>
    </div>
</div>

    <div class="nav-module">
    <div class="w">
        <ul>
            <li class="curr"><a href="http://apply.shop.jd.com/apply/flow_notice_view.action">入驻须知</a></li>
            <li><a href="http://apply.shop.jd.com/apply/flow_com_new_view.action">公司信息提交</a></li>
            <li><a href="http://apply.shop.jd.com/apply/flow_shop_name_view.action">店铺信息提交</a></li>
            <li><a href="http://apply.shop.jd.com/apply/flow_checking_view.action">审核日志查询</a></li>
        </ul>
    </div>
</div>

<div class="w">
    <div class="panel">
        <div class="panel-heading">
            <div class="mt">
                <h4 class="title">联系方式</h4>
                                <div class="more">
    <div class="progress">
        <div class="progress-wrap">
            <div class="progress-item passed  ">
                <div class="number">1</div>
                <div class="progress-desc">入驻须知</div>
            </div>
        </div>
        <div class="progress-wrap">
            <div class="progress-item  ongoing  ">
                <div class="number">2</div>
                <div class="progress-desc">公司信息</div>
            </div>
        </div>
        <div class="progress-wrap">
            <div class="progress-item  tobe  ">
                <div class="number">3</div>
                <div class="progress-desc">店铺信息</div>
            </div>
        </div>
        <div class="progress-wrap">
            <div class="progress-item  tobe  ">
                <div class="number">4</div>
                <div class="progress-desc">入驻审核</div>
            </div>
        </div>
        <div class="progress-wrap">
            <div class="progress-item  tobe  ">
                <div class="number">5</div>
                <div class="progress-desc">开店任务</div>
            </div>
        </div>
        <div class="progress-wrap">
            <div class="progress-item  tobe  ">
                <div class="number">6</div>
                <div class="progress-desc">店铺上线</div>
            </div>
        </div>
    </div>
</div>                <br>
            </div>
        </div>
        <form name="stepForm" id="stepForm" method="post" action="<%=path %>/seller/qualifications.htmls">
            <input type="hidden" class="input" name="flowType" value="">
            <div class="textarea">
            <div class="agreement">
                <div class="m">
                    <div class="mt">
                        <h4 class="title">入驻联系人信息</h4>
                         <br>
                    </div>
                    <div class="mc">
                        <dl class="horizontal fl">
                            <dt><span class="red">*</span> 联系人姓名</dt>
                            <dd><input type="text" class="input_txt valid" name="venderApply.contactName" value=""></dd>
                            <dt><span class="red">*</span> 联系人手机</dt>
                            <dd>
                                <input type="text" class="input" name="venderApply.contactPhone" value="">
                            </dd>
                            <dt><span class="red">*</span> 联系人电子邮箱</dt>
                            <dd>
                                                             <input type="text" class="input" name="venderApply.contactEmail" value="" >
                                                             <span class="ml10">如需更换其他邮箱，请进入<a href="http://safe.jd.com/user/paymentpassword/safetyCenter.action" class="link-blue" target="_blank">京东用户中心</a>维护。</span>
                                                            </dd>
                            <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</dt>
                            <dd><span class="lh-30">用于入驻过程中接收京东审核结果、开店账号密码信息，请务必正确填写。</span></dd>
                        </dl>
                    </div>
                </div>
            </div>

            </div>
        </form>
        <div class="btn-group ml10 t-r">
            <a href="javascript:void(0);" onclick="cancel(); " class="link-blue" style="float: left;line-height: 26px;margin-left: 10px;">撤销申请？</a>
<script type="text/javascript">
    function cancel(){
        if(confirm("撤销申请将删除当前提交中的入驻资料信息，确定要撤销当前入驻申请吗？")){
            window.location.href="//apply.shop.jd.com/apply/flow_cancel.action";
        }
    }
</script>            <a href="http://apply.shop.jd.com/apply/flow_contact_doSelect.action" class="btn-vice">上一步</a>
                            <input type="submit" value="下一步，完善公司信息" class="btn" id="nextStepBtn">
                    </div>
        <!-- main content end -->
    </div>
</div>
<script type="text/javascript" src="<%=path%>/js/seller/wl.js"></script>
<script type="text/javascript" src="<%=path%>/js/seller/lib-v1.js"></script>
<script src="<%=path%>/js/seller/jdThickBox.0.0.2.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=path%>/js/seller/brand_form.js"></script>
<style>
    .apply-footer{
        margin-top: 30px;
        border-top: 1px solid #e5e5e5;
        padding: 20px 0 30px;
        text-align: center;
    }
    .apply-footer a{
        margin: 0 10px;
        color: #666;
        text-decoration: none;
    }
    .apply-footer a:link,a:visited, a:hover, a:active{
        text-decoration: none;
    }
    .apply-footer a:hover{
        color: #e4393c;
    }

</style>
<div class="w">
    <div class="apply-footer">
    <a rel="nofollow" target="_blank" href="http://help.jd.com/Vender/viewQuestion-778-2410.html">入驻流程</a>
    |
    <a rel="nofollow" target="_blank" href="http://help.jd.com/Vender/question-779.html">入驻注意事项</a>
    |
    <a rel="nofollow" target="_blank" href="http://help.jd.com/Vender/question-901.html">招商方向</a>
    |
    <a rel="nofollow" target="_blank" href="http://help.jd.com/Vender/question-1004.html">资质标准</a>
    |
    <a rel="nofollow" target="_blank" href="http://help.jd.com/Vender/question-905.html">费用标准</a>
    |
    <a rel="nofollow" target="_blank" href="http://sale.jd.com/act/hLF8eujCXw6ckmY.html">联系方式</a>
    </div>
</div>

 
 <span style="display:block;color:#fff;">host-10-187-100-225</span></body></html>