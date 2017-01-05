<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + ":"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0055)http://apply.shop.jd.com/apply/flow_com_new_view.action -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK"><script type="text/javascript" async="" src="./公司信息_files/mvl.js"></script>
    
    <title>公司信息</title>
    <link rel="stylesheet" type="text/css" href="./公司信息_files/base.css" media="all">
    <link rel="stylesheet" href="./公司信息_files/enter.css">
    <script type="text/javascript" src="./公司信息_files/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="./公司信息_files/jquery.metadata.js"></script>
    <script type="text/javascript" src="./公司信息_files/jquery.validate.min.js"></script>
    <script type="text/javascript" src="./公司信息_files/WdatePicker.js"></script><link href="./公司信息_files/WdatePicker.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="./公司信息_files/jquery.validate.popext_20111130.js"></script>
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
</head>
<body>
    <script type="text/javascript" src="./公司信息_files/base-2011.js" charset="gb2312"></script>
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
			    <li class="fore3 ld menu" id="app-jd" data-widget="dropdown" clstag="homepage|keycount|home2013|01d">        <s></s><i></i>        <span class="outline"></span>        <span class="blank"></span>        <a href="http://app.jd.com/" target="_blank">手机京东</a><b></b>        <div class="dd lh">            <div class="qr-info"></div>            <div class="qr-item qr-jd-app">                <div class="qr-img">                    <img id="app-qrcode-img" data-img="1" trigger-lazy-img="//img11.360buyimg.com/da/jfs/t274/64/776867158/30074/3341c9cd/54237c80Nbc2c77a4.jpg" class="err-product" width="76" height="76" alt="手机京东" src="./公司信息_files/blank.gif">                </div>                <div class="qr-ext"><strong>京东客户端"</strong>                    <a clstag="homepage|keycount|home2013|01d01" href="http://itunes.apple.com/cn/app/id414245413" target="_blank" class="btn-app-apple"></a>                    <a clstag="homepage|keycount|home2013|01d02" href="http://sq.jd.com/T4Lxxc" target="_blank" class="btn-app-android"></a>                </div>            </div>            <div class="qr-item qr-jd-jr">                <div class="qr-img">                    <img id="app-qrcode-img" data-img="1" trigger-lazy-img="//img30.360buyimg.com/da/jfs/t763/184/1443816581/4493/1784d4d7/553ee9bdN2e4f09e4.png" class="err-product" width="76" height="76" alt="京东钱包客户端" src="./公司信息_files/blank.gif">                </div>                <div class="qr-ext"><strong>京东钱包客户端</strong>                    <a clstag="homepage|keycount|home2013|01d03" href="https://itunes.apple.com/cn/app/wang-yin-qian-bao/id832444218?mt=8" target="_blank" class="btn-app-apple"></a>                    <a clstag="homepage|keycount|home2013|01d04" href="http://sq.jd.com/vFIRtq" target="_blank" class="btn-app-android"></a>                </div>            </div>        </div>    </li>
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
        <div id="logo-2013" class="ld"><a href="http://www.jd.com/" hidefocus="true"><b></b><img src="./公司信息_files/logo.png" width="227" height="40" alt="京东"></a></div>
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
            <li><a href="http://apply.shop.jd.com/apply/flow_notice_view.action">入驻须知</a></li>
            <li class="curr"><a href="http://apply.shop.jd.com/apply/flow_com_new_view.action">公司信息提交</a></li>
            <li><a href="http://apply.shop.jd.com/apply/flow_shop_name_view.action">店铺信息提交</a></li>
            <li><a href="http://apply.shop.jd.com/apply/flow_checking_view.action">审核日志查询</a></li>
        </ul>
    </div>
</div>

<script type="text/javascript" src="./公司信息_files/com_form_validate.js"></script>
<script type="text/javascript" src="./公司信息_files/plupload.full.js"></script>
<script type="text/javascript" src="./公司信息_files/vender_upload.js"></script>
<div class="w">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="lh-50">公司信息提交</h3>
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
</div>        </div>
        <form name="stepForm" id="stepForm" method="post" action="http://apply.shop.jd.com/apply/flow_com_new_doSave.action?">
            <div class="panel-body">
                <div class="callout mb10">
                    <div class="content">
                        1. 信息提交前，请务必先了解<a href="http://help.jd.com/Vender/viewQuestion-1004-2597.html" class="link-blue" target="_blank">京东开放平台招商资质标准细则；</a><br>
                        2. 公司类信息需填项较多，建议先查看<a href="http://help.jd.com/Vender/viewQuestion-779-2553.html" class="link-blue" target="_blank">公司信息注意事项</a>再进行填写；<br>
                        3. 公司信息请严格按照相关证件信息进行确认填写；<br>
                        4. 以下所需要上传电子版资质仅支持JPG、GIF、PNG格式的图片，大小不超过1M，且必须加盖企业彩色公章。
                    </div>
                    <div class="remi-dialog" id="checkSecretDialog">审核通过秘诀</div>
                </div>
                
                <div class="m">
    <div class="mt">
        <h4 class="title">营业执照信息</h4>
    </div>
    <div class="mc">
        <dl class="horizontal fl">
            <dt><span class="red">*</span>执照类型</dt>
            <dd>
                <input type="radio" class="input" name="venderApplyCompany.license.licenseType" id="venderApplyCompany.license.licenseType1" value="1" checked="checked"> <label for="venderApplyCompany.license.licenseType1">普通执照</label>
                <input type="radio" class="input" name="venderApplyCompany.license.licenseType" id="venderApplyCompany.license.licenseType2" value="2"> <label for="venderApplyCompany.license.licenseType2">三证合一</label>
            </dd>
            <dt><span class="red">*</span>公司名称</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.name" value="">

                <p class="msg-text">请按照营业执照上登记的完整名称填写</p>
            </dd>
            <dt><span class="red">*</span>营业执照注册号</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.license.businessLicense" value="">

                <p class="msg-text" zhizhaotype="1" style="display: block;">请按照营业执照上的注册号进行填写</p>

                <p class="msg-text hidden" zhizhaotype="2" display="none" style="display: none;">请按照营业执照上的统一社会信用代码进行填写</p>
            </dd>
            <dt><span class="red">*</span>法定代表人姓名</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.legalRepresentative" value="">

                <p class="msg-text">请按照营业执照上登记的法人填写</p>
            </dd>
            <dt><span class="red">*</span>营业执照所在地</dt>
            <dd>
                

<select id="catLicenseAdd_1" name="catLicenseAdd_1" class="fe-select addrSelector"> <option value="">请选择</option><option value="1">北京</option><option value="2">上海</option><option value="3">天津</option><option value="4">重庆</option><option value="5">河北</option><option value="6">山西</option><option value="7">河南</option><option value="8">辽宁</option><option value="9">吉林</option><option value="10">黑龙江</option><option value="11">内蒙古</option><option value="12">江苏</option><option value="13">山东</option><option value="14">安徽</option><option value="15">浙江</option><option value="16">福建</option><option value="17">湖北</option><option value="18">湖南</option><option value="19">广东</option><option value="20">广西</option><option value="21">江西</option><option value="22">四川</option><option value="23">海南</option><option value="24">贵州</option><option value="25">云南</option><option value="26">西藏</option><option value="27">陕西</option><option value="28">甘肃</option><option value="29">青海</option><option value="30">宁夏</option><option value="31">新疆</option><option value="32">台湾</option><option value="42">香港</option><option value="43">澳门</option><option value="84">钓鱼岛</option><option value="52993">港澳</option><option value="10000004">保税区</option><option value="10000006">亚洲</option><option value="10000007">欧洲</option><option value="10000008">非洲</option><option value="10000009">北美洲</option><option value="10000010">南美洲</option><option value="10000011">大洋洲</option><option value="10000012">南极洲</option></select>
<select id="catLicenseAdd_2" name="catLicenseAdd_2" class="fe-select addrSelector"> </select>
<select id="catLicenseAdd_3" name="catLicenseAdd_3" class="fe-select addrSelector"> </select>

<script type="text/javascript">
        jQuery.ajaxSetup({
        async: false
    });
    var categoryIds = new Array();
    jQuery(document).ready(function () {
        var cat_select_id_prefix = "catLicenseAdd_";
        var area_prefix = "licenceDetailAddr_";
        var cat_max_level = 3;
        var initCatData = function (cid, selectId, idArray) {
            //记录选择的所有ID
            var ids = "";
            //最后的option 0:false 1:true
            var endFlag = "";
            var lev = parseInt(selectId.substring(selectId.length - 1), 10);
            if (lev > cat_max_level) {
                endFlag = "&endFlag=1"
            }
            if (idArray.length > 0) {
                ids = "&ids=" + idArray.join();
            }
            var url = "/json/category/category_areaCats.action?cid=" + cid + ids + endFlag + "&lev=" + lev;
            jQuery.getJSON(url, function (json) {
                if (json != null && json != '') {
                    addOption(selectId, json);
                    ids = json[json.length - 1].ids;
                    if (ids != undefined) {
                        jQuery("#licenceRegAddr").val(ids);
                    }
                }
            });
        }
        jQuery(".addrSelector").change(function () {
            var selid = jQuery(this).attr('id');
            var lev = parseInt(selid.substring(selid.length - 1), 10);
            var val = jQuery(this).val();
            var ids = getLicenceAddrArray();
            if (categoryIds.length < 1 && ids.length > 0) {
                categoryIds = ids;
            }
            if (lev == 1) {
                categoryIds = new Array();
            }
            if (lev > 0) {
                var nextSelectId = cat_select_id_prefix + (lev + 1);
                //清空后面所有的联动菜单
                cleanupSelects(lev);
                if (val > 0) {
                    categoryIds[lev - 1] = val;
                    for (var i = lev; i < categoryIds.length;) {
                        categoryIds.length -= 1;
                    }
                    //更新详细地址
                    jQuery("#" + area_prefix + lev).html(jQuery(this).find("option:selected").text());
                    //初始化下一级联动菜单
                    initCatData(val, nextSelectId, categoryIds);
                } else {
                    for (var i = lev; i <= categoryIds.length;) {
                        categoryIds.length -= 1;
                    }
                    jQuery("#licenceRegAddr").val(categoryIds.join());
                }
            }
        });

        var addOption = function (selectId, catJsonObj) {
            var jqId = "#" + selectId;
            if (jQuery(jqId).length == 1) {
                jQuery(jqId).append("<option value=''>请选择</option>");
                jQuery.each(catJsonObj, function (index, entry) {
                    if (entry.name != undefined) {
                        jQuery(jqId).append("<option value='" + entry.id + "'>" + entry.name + "</option>");
                    }
                })
            }
        }

        var cleanupSelects = function (lev) {
            for (var i = lev + 1; i <= cat_max_level; i++) {
                jQuery("#" + cat_select_id_prefix + i).empty();
            }
            for (var i = lev; i <= cat_max_level; i++) {
                jQuery("#" + area_prefix + i).html("");
            }
        }

        var getLicenceAddrArray = function () {
            var categoryBeforeIds = jQuery("#licenceRegAddr").val();
            if (categoryBeforeIds != '') {
                return categoryBeforeIds.split(",");
            } else {
                return new Array();
            }
        }

        //初始化1级类目select
        initCatData(0, "catLicenseAdd_1", categoryIds)

        var idArray = getLicenceAddrArray();
        for (var j = 0; j < idArray.length; j++) {
            if (idArray[j] != '') {
                jQuery("#" + cat_select_id_prefix + (j + 1)).attr("value", idArray[j]);
                var area = jQuery("#" + cat_select_id_prefix + (j + 1)).find("option:selected").text();
                jQuery("#" + area_prefix + (j + 1)).html(area);
                initCatData(idArray[j], cat_select_id_prefix + (j + 2), categoryIds);
            }
        }

    });

</script>
<input type="hidden" value="" id="licenceRegAddr">
<input type="hidden" id="licenceRegAddrSubmit" name="venderApplyCompany.license.licenseAddrIds">                <label id="catLevB2Msg" class="error" for="catLevB_2" generated="true"></label>
                <label id="catLevB1Msg" class="error" for="catLevB_1" generated="true"></label>
            </dd>
            <dt><span class="red">*</span>营业执照详细地址</dt>
            <dd>
                <span id="licenceDetailAddr_1"></span>
                <span id="licenceDetailAddr_2"></span>
                <span id="licenceDetailAddr_3"></span>
                <input type="text" name="venderApplyCompany.license.licenseAdd" id="address-co" value="">
            </dd>

            <dt><span class="red">*</span>成立日期</dt>
            <dd>
                <input id="establishDate" type="text" class="input jdate narrow" onclick="WdatePicker()" name="venderApplyCompany.establishDate" value="" readonly="true">
                <span class="error" id="establishDateSpan">  </span>
            </dd>
            <dt><span class="red">*</span>营业期限</dt>
            <dd>
                <input id="startDate" type="text" class="input jdate narrow" onclick="WdatePicker()" name="venderApplyCompany.license.licenseExpDateStart" value="" readonly="true">
                —
                <input id="endDate" type="text" class="input jdate narrow" onclick="WdatePicker()" name="venderApplyCompany.license.licenseExpDateEnd" value="" readonly="true">
                <input type="checkbox" name="venderApplyCompany.license.isForEver" id="forever" value="1"><label for="forever">长期</label>
                <span class="error" id="dateSpan">  </span>
            </dd>
            <dt><span class="red">*</span>注册资本</dt>
            <dd><input type="text" class="input" name="venderApplyCompany.registeredCapital" value="">万元
            </dd>
            <dt><span class="red">*</span>经营范围</dt>
            <dd>
                <textarea name="venderApplyCompany.license.licenseArea" style="font-size: 12px; width:300px; height: 70px;"></textarea>

                <p class="msg-text">请与营业执照或企业信息公示网的经营范围保持一致</p>
            </dd>
            <dt><span class="red">*</span>公司所在地</dt>
            <dd>
                    <select id="catLev_1" name="catLev_1" class="catselect" style="width:100px;display:inline;"> <option value="">请选择</option><option value="1">北京</option><option value="2">上海</option><option value="3">天津</option><option value="4">重庆</option><option value="5">河北</option><option value="6">山西</option><option value="7">河南</option><option value="8">辽宁</option><option value="9">吉林</option><option value="10">黑龙江</option><option value="11">内蒙古</option><option value="12">江苏</option><option value="13">山东</option><option value="14">安徽</option><option value="15">浙江</option><option value="16">福建</option><option value="17">湖北</option><option value="18">湖南</option><option value="19">广东</option><option value="20">广西</option><option value="21">江西</option><option value="22">四川</option><option value="23">海南</option><option value="24">贵州</option><option value="25">云南</option><option value="26">西藏</option><option value="27">陕西</option><option value="28">甘肃</option><option value="29">青海</option><option value="30">宁夏</option><option value="31">新疆</option><option value="32">台湾</option><option value="42">香港</option><option value="43">澳门</option><option value="84">钓鱼岛</option><option value="52993">港澳</option><option value="10000004">保税区</option><option value="10000006">亚洲</option><option value="10000007">欧洲</option><option value="10000008">非洲</option><option value="10000009">北美洲</option><option value="10000010">南美洲</option><option value="10000011">大洋洲</option><option value="10000012">南极洲</option></select>&nbsp;
    <select id="catLev_2" name="catLev_2" class="catselect" style="width:100px;display:inline;"> </select>&nbsp;
    <select id="catLev_3" name="catLev_3" class="catselect" style="width:100px;display:inline;"> </select>&nbsp;

<script type="text/javascript">
    //不要去掉,同步请求
    jQuery.ajaxSetup({
        async: false
    });
    var categoryIds = new Array();
    jQuery(document).ready(function() {
        var cat_select_id_prefix = "catLev_";
        var area_prefix = "companyAddr_";
        var cat_max_level = 3;
        var initCatData = function(cid,selectId,idArray) {
            //记录选择的所有ID
            var ids = "";
            //最后的option 0:false 1:true
            var endFlag="";
            var lev = parseInt(selectId.substring(selectId.length-1),10);
            if(lev>cat_max_level){endFlag = "&endFlag=1"}
            if(idArray.length > 0){ids="&ids="+idArray.join();}
            var url = "/json/category/category_areaCats.action?cid="+cid+ids+endFlag+"&lev="+lev;
            jQuery.getJSON(url, function(json) {
                if (json != null && json != '') {
                    addOption(selectId, json);
                    ids = json[json.length-1].ids;
                    if(ids != undefined){
                        jQuery("#comAddrIds").val(ids);
                    }
                }
            });
        }
        jQuery(".catselect").change(function() {
            var selid = jQuery(this).attr('id');
            var lev = parseInt(selid.substring(selid.length-1),10);
            var val = jQuery(this).val();
            var ids = getcategoryMemoryIds();
            if(categoryIds.length < 1 && ids.length > 0){
                categoryIds = ids;
            }
            if(lev == 1){
                categoryIds = new Array();
            }
            if(lev > 0){
               var nextSelectId =cat_select_id_prefix+(lev+1);
                //清空后面所有的联动菜单
                cleanupSelects(lev);
                if(val>0){
                    categoryIds[lev-1]=val;
                    for(var i=lev;i<categoryIds.length;){
                        categoryIds.length-=1;
                    }
                    //更新详细地址
                    jQuery("#"+area_prefix+lev).html(jQuery(this).find("option:selected").text());
                    //初始化下一级联动菜单
                    initCatData(val,nextSelectId,categoryIds);
                }else
                {
                    for(var i=lev;i<=categoryIds.length;){
                        categoryIds.length-=1;
                    }
                    jQuery("#comAddrIds").val(categoryIds.join());
                }
            }
        });

        var addOption=function(selectId,catJsonObj){
            var jqId = "#"+selectId;
            if(jQuery(jqId).length=1){
               jQuery(jqId).append("<option value=''>请选择</option>");
               jQuery.each(catJsonObj, function(index, entry) {
                   if(entry.name!=undefined){
                    jQuery(jqId).append("<option value='"+entry.id+"'>"+entry.name+"</option>");
                   }
                })
            }
        }

        var cleanupSelects=function(lev){
            for(var i=lev+1;i<=cat_max_level;i++){
                jQuery("#"+cat_select_id_prefix+i).empty();
            }
            for(var i=lev;i<=cat_max_level;i++){
                jQuery("#"+area_prefix+i).html("");
            }
        }

        var getcategoryMemoryIds=function(){
            var categoryBeforeIds = jQuery("#comAddrIds").val();
            if(categoryBeforeIds != ''){
                return  categoryBeforeIds.split(",");
            }else
            {
                return new Array();
            }
        }

        //初始化1级类目select
        initCatData(0,"catLev_1",categoryIds)

        var idArray = getcategoryMemoryIds();
        for(var j=0;j<idArray.length;j++){
            if(idArray[j] != ''){
                jQuery("#"+cat_select_id_prefix+(j+1)).attr("value",idArray[j]);
                var area = jQuery("#"+cat_select_id_prefix+(j+1)).find("option:selected").text();
                jQuery("#"+area_prefix+(j+1)).html(area);
                initCatData(idArray[j],cat_select_id_prefix+(j+2),categoryIds);
            }
        }

    });

</script>
<input type="hidden" value="" name="venderApplyCompany.comAddrIds" id="comAddrIds">                <label id="catLev2Msg" class="error" for="catLev_2" generated="true"></label>
                <label id="catLev1Msg" class="error" for="catLev_1" generated="true"></label>
            </dd>
            <dt><span class="red">*</span>公司详细地址</dt>
            <dd>
                <span id="companyAddr_1"></span>
                <span id="companyAddr_2"></span>
                <span id="companyAddr_3"></span>
                <input type="text" class="input" name="venderApplyCompany.addr" value="">
            </dd>
            <dt><span class="red">*</span>公司电话</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.contactTel" value="">
            </dd>
            <dt><span class="red">*</span>公司紧急联系人</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.tentactr" value="">
            </dd>
            <dt><span class="red">*</span>公司紧急联系人手机</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.phone" value="">
            </dd>
            <dt><span class="red">*</span>法定代表人证件类型</dt>
            <dd>
                <input type="radio" class="input" name="venderApplyCompany.cardType" id="venderApplyCompany.cardType1" checked="checked" value="1"> <label for="venderApplyCompany.cardType1">大陆身份证</label>
                <input type="radio" class="input" name="venderApplyCompany.cardType" id="venderApplyCompany.cardType2" value="2"> <label for="venderApplyCompany.cardType2">非大陆证件</label>
            </dd>
            <dt>
                <span class="card" cardtype="1" style="display: block;">*法定代表人身份证号</span>
            </dt>
            <dd>
                <input type="text" class="input card" name="venderApplyCompany.personalNo" cardtype="1" id="companyCard" value="" style="display: block;">
                <span class="error" id="cardInfo">  </span>
            </dd>
            <dt>
                <span class="red">*</span>
                法人身份证电子版
            </dt>
            <dd id="comFilePath" class="deletePane b-upload-wrap">
                <p class="upload-msg" cardtype="1" style="display: block;">身份证要求正反两面，复印件请加盖开店公司红章</p>

                <p class="upload-msg hidden" cardtype="2" style="display: none;">法人非大陆人士请上传如护照或其它有效证件</p>
                <ul id="comFilePath_container" class="upload-wrap">
                                                                                    <li id="comFilePath_btn" class="li-item upload-btn" style="z-index: 0;">
                        <s class="icon-upload"></s>
                    </li>
                </ul>
                <p id="comFilePath_msg" class="msg-error"></p>
                <p class="msg-text">图片尺寸请确保800px*800px以上，文件大小1MB以内，支持JPG、GIF、PNG格式，最多可上传2张</p>
            </dd>


            <dt><span class="red">*</span>营业执照电子版</dt>
            <dd id="licenseFilePath" class="deletePane b-upload-wrap">
                <p class="upload-msg">营业执照复印件需加盖公司红章扫描上传，若营业执照上未体现注册资本、经营范围，请在营业执照后另行上传<a target="_blank" href="http://gsxt.saic.gov.cn/" class="link-blue">企业信息公示网</a>上的截图。
                </p>
                <ul id="licenseFilePath_container" class="upload-wrap">
                                                                                    <li id="licenseFilePath_btn" class="li-item upload-btn" style="z-index: 0;">
                        <s class="icon-upload"></s>
                    </li>
                </ul>
                <p id="licenseFilePath_msg" class="msg-error"></p>
                <p class="msg-text">图片尺寸请确保800px*800px以上，文件大小1MB以内，支持JPG、GIF、PNG格式，最多可上传2张</p>
            </dd>
            <dt><span class="red">*</span>银行开户许可证电子版</dt>
            <dd id="bankFilePath" class="deletePane b-upload-wrap">
                <p class="upload-msg">复印件需加盖公司红章扫描上传</p>
                <ul id="bankFilePath_container" class="upload-wrap">
                                        <li id="bankFilePath_btn" class="li-item upload-btn" style="z-index: 0;">
                        <s class="icon-upload"></s>
                    </li>
                </ul>
                <p id="bankFilePath_msg" class="msg-error"></p>
                <p class="msg-text">图片尺寸请确保800px*800px以上，文件大小1MB以内，支持JPG、GIF、PNG格式</p>
            </dd>
        </dl>
    </div>
</div>

<script>
    jQuery(function () {
        //身份证图片上传
        var personUpload = new VenderUpload({
            uploadId: 'comFilePath',
            maxFileCountMsg: '最多只能上传2张身份证图片',
            fileUploadPath: '/json/file/uploadFileInternal.action',
            fileDomainUrl: "/json/file/downloadFileInternal.action",
            pluploadPath: '/apply/js/plupload/',
            maxFileCount: 2,
            createFileValueHiddenFun: function (file, ret, venderUpload, up) {
                var idx = venderUpload.getFileUploadedCount();
                var hiddenValue = '<input type="hidden" class="filePath" name="comFilePath[' + idx + '].path" value="' + ret.filePath + '"/>'
                        + '<input type="hidden" class="fileName" name="comFilePath[' + idx + '].fileName" value="' + file.name + '"/>'
                return hiddenValue;
            },
            removeFileMultiHandleFun:function(fileIndex,fileItemComponent,venderUpload){
                jQuery(fileItemComponent).find(".filePath").attr("name", "comFilePath[" + fileIndex + "].path");
                jQuery(fileItemComponent).find(".fileName").attr("name", "comFilePath[" + fileIndex + "].fileName");
            }
        })
        personUpload.init();

        //营业执照图片上传
        var licenseUpload = new VenderUpload({
            uploadId: 'licenseFilePath',
            maxFileCountMsg: '最多只能上传2张营业执照图片',
            fileUploadPath: '/json/file/uploadFileInternal.action',
            fileDomainUrl: "/json/file/downloadFileInternal.action",
            pluploadPath: '/apply/js/plupload/',
            maxFileCount: 2,
            createFileValueHiddenFun: function (file, ret, venderUpload, up) {
                var idx = venderUpload.getFileUploadedCount();
                var hiddenValue = '<input type="hidden" class="filePath" name="licenseFilePath[' + idx + '].path" value="' + ret.filePath + '"/>'
                        + '<input type="hidden" class="fileName" name="licenseFilePath[' + idx + '].fileName" value="' + file.name + '"/>'
                return hiddenValue;
            },
            removeFileMultiHandleFun:function(fileIndex,fileItemComponent,venderUpload){
                jQuery(fileItemComponent).find(".filePath").attr("name", "licenseFilePath[" + fileIndex + "].path");
                jQuery(fileItemComponent).find(".fileName").attr("name", "licenseFilePath[" + fileIndex + "].fileName");
            }
        })
        licenseUpload.init();

        //银行开户图片上传
        var bankUpload = new VenderUpload({
            uploadId: 'bankFilePath',
            maxFileCountMsg: '最多只能上传1张银行开户许可证图片',
            fileUploadPath: '/json/file/uploadFileInternal.action',
            fileDomainUrl: "/json/file/downloadFileInternal.action",
            pluploadPath: '/apply/js/plupload/',
            maxFileCount: 1,
            createFileValueHiddenFun: function (file, ret, venderUpload, up) {
                var hiddenValue = '<input type="hidden" name="bankFilePath.path" value="' + ret.filePath + '"/>'
                        + '<input type="hidden" name="bankFilePath.fileName" value="' + file.name + '"/>'
                return hiddenValue;
            }
        })
        bankUpload.init();

    });
</script>
                <div class="m">
    <div class="mt">
        <h4 class="title">组织机构代码证</h4>
    </div>
    <div class="mc">
        <dl class="horizontal fl">
            <dt><span class="red">*</span>组织机构代码</dt>
            <dd>
                <input type="text" class="input" name="venderApplyCompany.orgCode.orgCode" value="">

                <p class="msg-text" zhizhaotype="1" style="display: block;">请按照组织机构代码证上的代码填写，不要省略“—”</p>

                <p class="msg-text hidden" zhizhaotype="2" style="display: none;">三证合一请填写统一社会信用代码</p>
            </dd>
            <dt><span class="red">*</span>组织机构代码证有效期</dt>
            <dd>
                <input id="org_exp_date_start" type="text" class="input jdate narrow" onclick="WdatePicker()" name="venderApplyCompany.orgCode.orgExpDateStart" value="" readonly="true">
                —
                <input id="org_exp_date_end" type="text" class="input jdate narrow" onclick="WdatePicker()" name="venderApplyCompany.orgCode.orgExpDateEnd" value="" readonly="true">

                <input type="checkbox" name="venderApplyCompany.orgCode.isForEver" id="orgForever" value="1"><label for="forever">长期</label>
                <span class="error" id="orgDateSpan"></span>
            </dd>
            <dt><span class="red">*</span>组织机构代码证电子版</dt>
            <dd id="orgFilePath" class="deletePane b-upload-wrap">
                <p class="upload-msg">复印件需加盖公司红章扫描上传，三证合一的此处请上传营业执照电子版</p>
                <ul id="orgFilePath_container" class="upload-wrap">
                                        <li id="orgFilePath_btn" class="li-item upload-btn" style="z-index: 0;">
                        <s class="icon-upload"></s>
                    </li>
                </ul>
                <p id="orgFilePath_msg" class="msg-error"></p>

                <p class="msg-text">图片尺寸请确保800px*800px以上，文件大小1MB以内，支持JPG、GIF、PNG格式</p>
            </dd>
        </dl>
    </div>
</div>

<script>
    jQuery(function () {
        //组织机构图片上传
        var orgUpload = new VenderUpload({
            uploadId: 'orgFilePath',
            maxFileCountMsg: '最多只能上传1张银行开户许可证图片',
            fileUploadPath: '/json/file/uploadFileInternal.action',
            fileDomainUrl: "/json/file/downloadFileInternal.action",
            pluploadPath: '/apply/js/plupload/',
            maxFileCount: 1,
            createFileValueHiddenFun: function (file, ret, venderUpload, up) {
                var hiddenValue = '<input type="hidden" name="orgFilePath.path" value="' + ret.filePath + '"/>'
                        + '<input type="hidden" name="orgFilePath.fileName" value="' + file.name + '"/>'
                return hiddenValue;
            }
        })
        orgUpload.init();

    });
</script>
                <div class="btn-group t-r">
                                            <a href="javascript:void(0);" onclick="cancel(); " class="link-blue" style="float: left;line-height: 26px;margin-left: 10px;">撤销申请？</a>
<script type="text/javascript">
    function cancel(){
        if(confirm("撤销申请将删除当前提交中的入驻资料信息，确定要撤销当前入驻申请吗？")){
            window.location.href="//apply.shop.jd.com/apply/flow_cancel.action";
        }
    }
</script>                        <a href="javascript:void(0)" class="btn-vice" id="prevStepBtn">上一步</a>
                        <a href="javascript:void(0);" class="btn" id="nextStepBtn">下一步，完善税务及银行信息</a>
                                    </div>
                <input id="chnFlag" type="hidden" value="">
            </div>
        </form>
    </div>
</div>
<script>
    jQuery(function () {
        initFormValidate("stepForm");

        initCardType();

    });

    $("#returnBack").click(function() {
        window.location.href = "/apply/flow_checking_view.action";
    });

    $("#prevStepBtn").click(function() {
        window.location.href = "/apply/flow_contact_view.action";
    });


        $("#nextStepBtn").click(function() {


        if (!jQuery("#stepForm").valid()) {
            return;
        }

        if(!validLicenseDate()){
            return;
        }

        if(!validOrgDate()) {
            return;
        }

        var comFilePath = jQuery('#comFilePath_container li.li-item-file').length;
        var licenseFilePath = jQuery('#licenseFilePath_container li.li-item-file').length;
        var bankFilePath = jQuery('#bankFilePath_container li.li-item-file').length;
        var orgFilePath = jQuery('#orgFilePath_container li.li-item-file').length;
        if(comFilePath<=0){
            jAlert("请上传法人身份证电子版");
            return;
        }
        if(licenseFilePath<=0){
            jAlert("请上传营业执照电子版");
            return;
        }
        if(bankFilePath<=0){
            jAlert("请上传银行开户许可证电子版");
            return;
        }
        if(orgFilePath<=0){
            jAlert("请上传组织机构代码证电子版");
            return;
        }

            $("#licenceRegAddrSubmit").val("");
        var regAddrId = $("#licenceRegAddr").val();
        $("#licenceRegAddrSubmit").val(regAddrId);

        var card = document.getElementsByName("venderApplyCompany.cardType");
        var cardStatus =1;
        for (i=0; i<card.length; i++) {
            if (card[i].checked) {
                cardStatus = card[i].value;
            }
        }

        var cardInfo = document.getElementById("companyCard").value;

        if(cardStatus == 1){
            if(cardInfo == '') {
                $("#cardInfo").focus();
                $("#cardInfo").text("请输入身份证号码");
                return;
            }else {
                $("#cardInfo").text("");
            }
        }

        checkStatusAndSubmit($("#stepForm"));
        return false;
    });

    function initCardType(){
        $("input[type=radio][name='venderApplyCompany.cardType']").ready(function() {
            $(".card").each(function(index,ele){
                if($(ele).attr('cardType') != null){
                    if($(ele).attr('cardType')==1){
                        $(ele).css('display','block');
                    }else{
                        $(ele).css('display','none');
                    }
                }
            });
        });

        $("input[type=radio][name='venderApplyCompany.cardType']").ready(function() {
            $(".upload-msg").each(function(index,ele){
                if($(ele).attr('cardType') != null){
                    if($(ele).attr('cardType')==1){
                        $(ele).css('display','block');
                    }else{
                        $(ele).css('display','none');
                    }
                }
            });
        });

        $("input[type=radio][name='venderApplyCompany.cardType']").ready(function() {
            $("card").each(function(index,ele){
                if($(ele).attr('cardType') != null){
                    if($(ele).attr('cardType')==1){
                        $(ele).css('display','block');
                    }else{
                        $(ele).css('display','none');
                    }
                }
            });
        });
    }

    function validLicenseDate(){

        var timeStart=$("#startDate").val();
        var timeEnd= $("#endDate").val();
        if(timeStart == '' && timeEnd == '') {
            $("#startDate").focus();
            $("#dateSpan").text("请选择营业执照有效期的开始和结束时间");
            return false;
        }else if(timeStart == ''){
            $("#startDate").focus();
            $("#dateSpan").text("请选择营业执照有效期的开始时间");
            return false;
        }else if(timeEnd == ''){
            $("#endDate").focus();
            $("#dateSpan").text("请选择营业执照有效期的结束时间");
            return false;
        }else{
            $("#dateSpan").text("");
            return true;
        }

        if(timeEnd.length!=0){
            var arr=timeEnd.split("-");
            var arr2=timeStart.split("-");

            var oldtime=parseInt(arr[0]+""+arr[1]+""+arr[2]);
            var newtime=parseInt(arr2[0]+""+arr2[1]+""+arr2[2]);
            if(oldtime<=newtime){
                $("#endDate").focus();
                $("#dateSpan").text("营业执照有效期的结束时间必须大于开始时间");
                return false;
            }else {
                $("#dateSpan").text("");
                return true;
            }
        }

        var establishDate=$("#establishDate").val();
        if(establishDate == '') {
            $("#establishDate").focus();
            $("#establishDateSpan").text("请选择公司成立时间");
            return false;
        }else {
            $("#establishDateSpan").text("");
            return true;
        }
        return true;
    }

    function validOrgDate() {
        var orgDateStart=$("#org_exp_date_start").val();
        var orgDateEnd= $("#org_exp_date_end").val();
        if(orgDateStart == '' && orgDateEnd == '') {
            $("#org_exp_date_start").focus();
            $("#orgDateSpan").text("请选择组织机构代码证有效期的开始和结束时间");
            return false;
        }else if(orgDateStart == ''){
            $("#org_exp_date_start").focus();
            $("#orgDateSpan").text("请选择组织机构代码证有效期的开始时间");
            return false;
        }else if(orgDateEnd == ''){
            $("#org_exp_date_end").focus();
            $("#orgDateSpan").text("请选择组织机构代码证有效期的结束时间");
            return false;
        }else{
            $("#orgDateSpan").text("");
        }

        if(orgDateEnd.length!=0){
            var arr=orgDateEnd.split("-");
            var arr2=orgDateStart.split("-");

            var oldtime=parseInt(arr[0]+""+arr[1]+""+arr[2]);
            var newtime=parseInt(arr2[0]+""+arr2[1]+""+arr2[2]);
            if(oldtime<=newtime){
                $("#org_exp_date_end").focus();
                $("#orgDateSpan").text("组织机构代码证有效期的结束时间必须大于开始时间");
                return false;
            }else {
                $("#orgDateSpan").text("");
            }
        }
        return true;
    }
</script>
<script>
    jQuery(function() {
        $("#checkSecretDialog").jdThickBox({
            title: "审核通过秘诀",
            type: "iframe",
            width: 680,
            height: 380,
            source: '/apply/static/checkSecret.html',
            _close_val: "×",
            _titleOn: true
        });
    });
</script><script type="text/javascript" src="./公司信息_files/wl.js"></script>
<script type="text/javascript" src="./公司信息_files/lib-v1.js"></script>
<script src="./公司信息_files/jdThickBox.0.0.2.js" type="text/javascript"></script>
<script type="text/javascript" src="./公司信息_files/brand_form.js"></script>
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
 <span style="display:block;color:#fff;">host-10-191-74-78</span><div id="p1b3922nn71buha86dqs6kkpgd0_html5_container" class="plupload html5" style="position: absolute; width: 80px; height: 80px; overflow: hidden; z-index: -1; opacity: 0; top: 1106px; left: 366px; background: transparent;"><input id="p1b3922nn71buha86dqs6kkpgd0_html5" style="font-size: 999px; position: absolute; width: 100%; height: 100%;" type="file" accept="image/jpeg,image/gif,image/png" multiple="multiple"></div><div id="p1b3922o26tp9f7l1b8vpghi7t3_html5_container" class="plupload html5" style="position: absolute; width: 80px; height: 80px; overflow: hidden; z-index: -1; opacity: 0; top: 1296px; left: 366px; background: transparent;"><input id="p1b3922o26tp9f7l1b8vpghi7t3_html5" style="font-size: 999px; position: absolute; width: 100%; height: 100%;" type="file" accept="image/jpeg,image/gif,image/png" multiple="multiple"></div><div id="p1b3922o291brfq91j8m1ffk19au5_html5_container" class="plupload html5" style="position: absolute; width: 80px; height: 80px; overflow: hidden; z-index: -1; opacity: 0; top: 1454px; left: 366px; background: transparent;"><input id="p1b3922o291brfq91j8m1ffk19au5_html5" style="font-size: 999px; position: absolute; width: 100%; height: 100%;" type="file" accept="image/jpeg,image/gif,image/png" multiple="multiple"></div><div id="p1b3922o2d8rd2od3h31fbg1pqd7_html5_container" class="plupload html5" style="position: absolute; width: 80px; height: 80px; overflow: hidden; z-index: -1; opacity: 0; top: 1740px; left: 366px; background: transparent;"><input id="p1b3922o2d8rd2od3h31fbg1pqd7_html5" style="font-size: 999px; position: absolute; width: 100%; height: 100%;" type="file" accept="image/jpeg,image/gif,image/png" multiple="multiple"></div></body></html>