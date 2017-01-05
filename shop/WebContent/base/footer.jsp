<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
	<!--尾部   开始-->
	<footer>
		<div class="footer-wrapper">
			<div class="footer-box">
				<div class="page co">
					<div class="fb-content co">
						<div class="erweima-box">
							<img src="<%=path%>/images/erweima.jpg" width="154px"height="154px"/>
						</div>
						<div class="fb-left">
							<p class="ft18 fY ">客服电话</p>
							<b class="phone-num">400-1234-234</b>
							<p class="col999">工作时间 08:00-12:00  14:00-18:00</p>
						</div>
						<dl>
							<dt>新手上路  </dt>
							<dd><a href="注册/注册1.html" target="_blank">免费注册</a></dd>
							<dd><a href="javascript:viod(0);" target="_blank">购物指南</a></dd>
							<dd><a href="javascript:viod(0);" target="_blank">常见问题</a></dd>
							<dd><a href="javascript:viod(0);" target="_blank">联系客服</a></dd>
						</dl>
						<dl>
							<dt>服务保障  </dt>
							<dd><a href="javascript:viod(0);" target="_blank">七日无理由退换 </a></dd>
							<dd><a href="javascript:viod(0);" target="_blank">医商品如实描述疗卫生</a></dd>
							<dd><a href="javascript:viod(0);" target="_blank">正品保障服务 </a></dd>
						</dl>
						<dl>
							<dt>支付方式</dt>
							<dd><a href="javascript:viod(0);" target="_blank">在线支付</a></dd>
						</dl>
						<dl class="noborder">
							<dt>商家服务</dt>
							<dd><a href="javascript:viod(0);" target="_blank">商家入职</a></dd>
							<dd><a href="javascript:viod(0);" target="_blank">商户中心</a></dd>
						</dl>
					</div>
				</div>
			</div>
			<p class="version ">版权所有：久义信息技术有限公司©2015 京ICP备05007539号-7 京ICP证100714号 京公网安备11010802021935号</p>
		</div>
	</footer>