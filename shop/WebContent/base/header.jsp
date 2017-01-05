<%@page import="com.jiuyi.net.mesage.memberInfo.MemberInfos"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	MemberInfos memberInfos = (MemberInfos)session.getAttribute("memberInfo");
%>
	<!--首页头部   begin-->
	<header>
		<div class="indexheader-wrapper">
			<!--头部信息  begin-->
			<div class="header-top">
				<div class="page">
					<ul id="AAAA" class="header-list fr">
						<li><a href="javascript:;"><i class="icon icon-shopCar"></i>购物车 <var class="colred">0</var></a></li>
						<li>
							<a href="javascript:(0);">我的商城<i class="icon icon-arrowDown"></i></a>
							<!--下拉菜单-->
							<ul class="drop-menu">
								<li><a href="javascript:;">我的购物车</a></li>   
								<li><a href="<%=path %>/orders/queryOrder.html">我的订单</a></li>   
								<li><a href="<%=path %>/suggest/querySuggest.html?suggestPersonId=<%=memberInfos.getMemberId() %>">我的建议</a></li>   
								<li><a href="#">我的收藏</a></li>   
								<li><a href="<%=path %>/evaluate/querySuggest.html">评价管理</a></li>   
								<li><a href="javascript:;">购买记录</a></li>   
								<li><a href="javascript:;">我的红包</a></li>   
							</ul>
						</li>
						<li>
							<a href="javascript:;">商户管理<i class="icon icon-arrowDown"></i></a>
							<!--下拉菜单-->
							<ul class="drop-menu">
								<li><a href="javascript:;">商户管理 </a></li>   
								<li><a href="javascript:;">商户管理</a></li>   
								<li><a href="javascript:;">商户管理</a></li>   
								<li><a href="javascript:;">商户管理</a></li>   
								<li><a href="javascript:;">商户管理</a></li>   
								<li><a href="javascript:;">商户管理</a></li>   
							</ul>
						</li>
						<li class="last-no-border">
							<a href="javascript:;">帮助中心<i class="icon icon-arrowDown"></i></a>
							<!--下拉菜单-->
							<ul class="drop-menu">
								<li><a href="javascript:;">帮助中心 </a></li>   
								<li><a href="javascript:;">帮助中心</a></li>   
								<li><a href="javascript:;">帮助中心</a></li>   
							</ul>
						</li>
					</ul>
					<%
					  if(null !=memberInfos){
					%>
					 <ul class="header-list fl">
					 <li>
							<a href="javascript:;"><%=memberInfos.getMemberName()%><i class="icon icon-arrowDown"></i></a>
							<!--下拉菜单-->
							<ul class="drop-menu" style="width: 90px;">
								<li><a href="<%=path %>/memberInfo/accountInfo.html?memberId=<%=memberInfos.getMemberId() %>">账户信息 </a></li>   
								<li><a href="<%=path %>/memberInfo/logOut.html">退出系统</a></li>   
							</ul>
						</li>
						<li class="last-no-border">
							<a href="javascript:;">信息<var class="colred ml5">3</var></a>
						</li>
					 </ul>
					<%
					  }else{
				      %>
				      <p style="font-family:microsoft yahei">你好，欢迎进入久易购商城   <span class="ml10">请 <a class="colpink" href="<%=path%>/memberInfo/toMemberInfoLogin.html" >[ 登录 ]</a>  <a class="colpink" href="<%=path%>/memberInfo/toMemberInfoReg1.html">[  免费注册 ]</a> </span></p>
				      <%
					  }
					%>
				</div>
			</div>
			<!--头部信息  End-->
			<!--logo 搜索-->
			<div class="page jy_logo">
				<!--右边搜索框  begin-->
				<div class="header-search fr">
					<div class="search-box fl">
					  <!--商品店铺下拉菜单-->
					  <div class="select-box fl">
					    <div class="dropDown">
					         <div class="dropBtn"> </div>
		                     <input id="cuurentSearch" type="text" class="putIn iconshop1" value="商品">
	                         <ul class="dropList">
		                	     <li id="shopSearchType">店铺</li>
		                     </ul>
		                </div>
						<input type="text" id="tips-search" class="search-input fl" value="请输入类别名称或关键字"/>
					  </div>
						<input type="button" class="search-btn" value="搜索"/ >
						<!--热门搜索-->
						<dl class="hot-query">
							<dt class="fB fl">热门搜索：</dt>
							<dd>
								<a href="javascript:;" target="_blank" class="colred">女式大衣 </a>
								<a href="javascript:;" target="_blank">雪地靴</a>
								<a href="javascript:;" target="_blank">保温杯</a>
								<a href="javascript:;" target="_blank">吸尘器</a>
								<a href="javascript:;" target="_blank">手机壳</a>
								
							</dd>
						</dl>
						<!--热门搜索 End -->
				</div>
				<!--正、低、全   begin-->
				<div class="mall-advance fl">
					<dl>
						<dt>正</dt>
						<dd>正品保障</dd>
						<dd class="col999">放心购物</dd>
					</dl>
					<dl>
						<dt>低</dt>
						<dd>震撼低价</dd>
						<dd  class="col999">经济实惠</dd>
					</dl>
					<dl>
						<dt>全</dt>
						<dd>种类齐全</dd>
						<dd  class="col999">选购无忧</dd>
					</dl>
				</div>
				<!--正、低、全   End-->
				</div>
				<!--右边搜索框 End -->
				<div class="logo-wrap fl">
					<a href="javascript:;" class="" title="久易购">
						<img  class="logo-img" src="<%=path%>/images/logo.jpg" alt="久易购"/>
					</a>
				</div>
			</div> 
			<!--logo 搜索 End -->
			<!--导航-->
			<div class="jy_nav">
				<div class="page">
					<dl class="jy_nav_dl">
						<dt><a href="javascript:;">全部商品分类</a></dt>
						<dd><a href="javascript:;" class="shouye" >首页</a></dd>
						<dd><a href="javascript:;" class="here">疯狂划算</a></dd>
						<dd><a href="javascript:;">秒杀开抢</a></dd>
						<dd><a href="javascript:;">云购夺宝</a></dd>
						<dd><a href="javascript:;">限时抢购</a></dd>
						<dd><a href="javascript:;">幸运大转盘</a></dd>
						<dd><a href="javascript:;">微众筹</a></dd>
						<dd><a href="javascript:;">微砍价</a></dd>
						<dd><a href="javascript:;">一元购</a></dd>
						<dd><a href="javascript:;">微拼团</a></dd>
					</dl>
				</div>
			</div>
			<!--导航 End-->
		</div>
		<div id="button"></div>
		<!--首页头部   End-->
</header>