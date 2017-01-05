<%@page import="com.jiuyi.net.mesage.memberInfo.MemberInfos"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	MemberInfos memberInfos = (MemberInfos)session.getAttribute("memberInfo");
%>
	<!--头部   begin-->
	<div class="indexheader-wrapper">
		<!--头部信息  begin-->
		<div class="header-top">
			<div class="page">
				<ul class="header-list fr">
					<li><a href="javascript:;"><i class="icon icon-shopCar"></i>购物车
							<var class="colred">0</var></a></li>
					<li><a href="javascript:;">我的商城<i
							class="icon icon-arrowDown"></i></a> <!--下拉菜单-->
						<ul class="drop-menu">
							<li><a href="<%=path %>/memberInfo/accountInfo.html?memberId=<%=memberInfos.getMemberId() %>">账户信息 </a></li>
							<li><a href="javascript:;">我的购物车</a></li>
							<li><a href="javascript:;">我的订单</a></li>
							<li><a href="javascript:;">我的关注</a></li>
							<li><a href="javascript:;">我的收藏</a></li>
							<li><a href="javascript:;">评价管理</a></li>
							<li><a href="javascript:;">购买记录</a></li>
							<li><a href="javascript:;">我的红包</a></li>
						</ul></li>
					<li><a href="javascript:;">商户管理<i
							class="icon icon-arrowDown"></i></a> <!--下拉菜单-->
						<ul class="drop-menu">
							<li><a href="javascript:;">商户管理 </a></li>
							<li><a href="javascript:;">商户管理</a></li>
							<li><a href="javascript:;">商户管理</a></li>
							<li><a href="javascript:;">商户管理</a></li>
							<li><a href="javascript:;">商户管理</a></li>
							<li><a href="javascript:;">商户管理</a></li>
						</ul></li>
					<li class="last-no-border"><a href="javascript:;">帮助中心<i
							class="icon icon-arrowDown"></i></a> <!--下拉菜单-->
						<ul class="drop-menu">
							<li><a href="javascript:;">帮助中心 </a></li>
							<li><a href="javascript:;">帮助中心</a></li>
							<li><a href="javascript:;">帮助中心</a></li>
						</ul></li>
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
					<%}%>
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
							<div class="dropBtn"></div>
							<input id="cuurentSearch" type="text" class="putIn iconshop1"
								value="商品">
							<ul class="dropList">
								<li id="shopSearchType">店铺</li>
							</ul>
						</div>
						<input type="text" id="tips-search" class="search-input fl"
							value="请输入类别名称或关键字" />
					</div>
					<input type="button" class="search-btn" value="搜索"/ >
				</div>
			</div>
			<!--右边搜索框 End -->
			<div class="logo-wrap fl">
				<a href="javascript:;" class="" title="久易购"> <img
					class="logo-img" src="<%=path %>/images/logo.jpg" alt="久易购" />
				</a>

			</div>
			<div class="myMall fl">
				<span>我的商城</span>
			</div>
		</div>
		<!--logo 搜索 End -->
		<!--导航-->
		<div class="jy_nav">
			<div class="page">
				<dl class="jy_nav_dl">
					<dd>
						<a href="javascript:;" target="_blank">交易管理</a>
					</dd>
					<dd>
						<a class="here" href="javascript:;" target="_blank"> 账户信息</a>
					</dd>
					<dd>
						<a href="javascript:;" target="_blank">站内信息</a>
					</dd>
				</dl>
			</div>
		</div>
		<!--导航 End-->
	</div>
	<div id="button"></div>
	<!--首页头部   End-->