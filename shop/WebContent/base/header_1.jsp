<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
		<title>头部</title>
	<!--首页头部   begin-->
	<header>
		<div class="header-wrapper">
			<div class="page co">
				<!--正、低、全   begin-->
				<div class="mall-advance fr">
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
				<div class="logo-wrap fl">
					<a href="javascript:;" class="" title="久易购">
						<img  class="logo-img" src="<%=path%>/images/logo.jpg" alt="久易购"/>
					</a>
				</div>
			</div>
		</div>
		</header>