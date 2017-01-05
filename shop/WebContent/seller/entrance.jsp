<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + ":"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0070)http://apply.shop.jd.com/apply/flow_notice_view.action?flowType=normal -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK"><script type="text/javascript" async="" src="<%=path%>/js/seller/mvl.js"></script>

<title>入驻须知</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/seller/base.css" media="all">
<link rel="stylesheet" href="<%=path%>/css/seller/enter.css">
<script type="text/javascript"
	src="<%=path%>/js/seller/jquery-1.4.2.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/js/seller/jquery.metadata.js"></script>
<script type="text/javascript"
	src="<%=path%>/js/seller/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/seller/WdatePicker.js"></script>
<link href="<%=path%>/js/seller/WdatePicker.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="<%=path%>/js/seller/jquery.validate.popext_20111130.js"></script>
<script type="text/javascript" src="<%=path%>/js/seller/base-2011.js"
	charset="gb2312"></script>
<script type="text/javascript" src="<%=path%>/js/seller/wl.js"></script>
<script type="text/javascript" src="<%=path%>/js/seller/lib-v1.js"></script>
<script src="<%=path%>/js/seller/jdThickBox.0.0.2.js"
	type="text/javascript"></script>
<script type="text/javascript" src="<%=path%>/js/seller/brand_form.js"></script>
<script type="text/javascript">
	var _mvq = _mvq || [];
	_mvq.push([ '$setAccount', 'm-9-1' ]);
	_mvq.push([ '$logConversion' ]);
	(function() {
		var mvl = document.createElement('script');
		mvl.type = 'text/javascript';
		mvl.async = true;
		mvl.src = '//misc.360buyimg.com/lib/js/2012/mvl.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(mvl, s);
	})();
</script>
<script>
    function returnCheck(){
        if(confirm("返回重选将删除当前提交中的入驻信息，确定要返回重选入驻商家类型吗？")){
            window.location.href="//apply.shop.jd.com/apply/flow_selection_view";
        }
    }
    $(document).ready(function() {
         $("#nextStepBtn").click(function(){
             $("#stepForm").submit();
         });
    });
</script>
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
</head>
<body>

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

<script type="text/javascript" src="<%=path%>/js/seller/flow_notic.js"></script>
<div class="w">
    <div class="panel">
        <div class="panel-heading">
            <div class="mt">
                <h4 class="title">入驻须知</h4>
                                <div class="more">
    <div class="progress">
        <div class="progress-wrap">
            <div class="progress-item  ongoing  ">
                <div class="number">1</div>
                <div class="progress-desc">入驻须知</div>
            </div>
        </div>
        <div class="progress-wrap">
            <div class="progress-item  tobe  ">
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
        <form name="stepForm" id="stepForm" method="post" action="<%=path %>/seller/contactWay.htmls">
            <div class="panel-body ruzhu-wrap">
                <p class="b-p01">京东秉承“客户为先，诚信至上”的宗旨、 “让生活变得简单，快乐！”为我们的最终目标，为广大用户提供最优质的商品及服务。 京东开放平台欢迎国际国内知名品牌、拥
                    有特色货品及垂直电商入驻。</p>
                <dl class="help-box">
                    <dt>一、请认真查阅入驻相关说明，准备入驻资质：</dt>
                    <dd>
                        <a href="http://help.jd.com/Vender/question-1004.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_03.png" alt="" class="block">
                            招商基础资质标准
                        </a>
                        <a href="http://help.jd.com/Vender/question-901.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_05.png" alt="" class="block">
                            开放平台重点招募品牌
                        </a>
                        <a href="http://help.jd.com/Vender/question-905.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_07.png" alt="" class="block">
                            开放平台各类目自费一览表
                        </a>
                        <a href="http://help.jd.com/Vender/question-779.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_09.png" alt="" class="block">
                            入住审核常见问题
                        </a>
                    </dd>
                </dl>
                <dl class="help-box">
                    <dt>二、以下规则，对于进驻京东开放平台的商家至关重要,请务必仔细阅读：</dt>
                    <dd>
                        <a href="http://help.jd.com/Vender/question-851.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_15.png" alt="" class="block">
                            京东开放平台总则
                        </a>
                        <a href="http://help.jd.com/Vender/question-853.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_16.png" alt="" class="block">
                            商品均符合行业发布规范
                        </a>
                        <a href="http://help.jd.com/Vender/viewQuestion-851-2314.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_17.png" alt="" class="block">
                            卖家积分管理规则

                        </a>
                        <a href="http://help.jd.com/Vender/viewQuestion-902-2746.html" target="_blank" class="help-dlk">
                            <img src="<%=path%>/images/seller/icon_18.png" alt="" class="block">
                            开放平台店铺淘汰机制
                        </a>
                    </dd>
                </dl>
                <dl class="help-box">
                    <dt>三、为协助新商家顺利入驻，京东开放平台为新入驻商家提供了丰富的基础培训教程：</dt>
                    <dd>
                        <p class="b-p02">1、关于新商家入驻后的必修课程，请进入“京东卖家培训”模板查看 <a href="http://mjbbs.jd.com/forum-58-1.html" target="_blank">http://mjbbs.jd.com/forum-58-1.html</a><br>
                            2、运营分析数据，请进入“数据罗盘”查看 <a href="http://help.jd.com/Vender/question-801.html" target="_blank">http://help.jd.com/Vender/question-801.html</a></p>
                    </dd>
                </dl>
                <dl class="help-box">
                    <dt>四、了解其他运营规则及信息：</dt>
                    <dd>
                        <p class="b-p02">请登录商家帮助中心查看 <a href="http://help.jd.com/vender.html" target="_blank">http://help.jd.com/vender.html</a></p>
                    </dd>
                </dl>
            </div>
        </form>
        <hr style="color: #F4F9F733">
        <div class="btn-group ml10 t-r">
                          <a href="javascript:void(0);" onclick="returnCheck();" class="btn-vice">返回重选</a>
                       <input type="submit" value="开始提交" class="btn" id="nextStepBtn">
        </div>
    </div>
</div>

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
 <span style="display:block;color:#fff;">host-10-191-74-79</span></body></html>