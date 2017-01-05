 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>   
<jsp:directive.include file="/base/tag.inc" />
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<%-- <script type="text/javascript" src="<%=path%>/js/youjian.js"></script> --%>
<script type="text/javascript" src="<%=path%>/js/jquery.jslides.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="<%=path%>/js/header.js"></script>
<script type="text/javascript" src="<%=path%>/js/base-1.0.js"></script>
<%-- <script type="text/javascript" src="<%=path%>/js/formValidator-4.1.1.js"></script>
<script type="text/javascript" src="<%=path%>/js/formValidatorRegex.js"></script>
<script type="text/javascript" src="<%=path%>/js/register.js"></script>
 --%>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/public.css"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index-header.css"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/login.css"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/account.css"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/register.css"/>