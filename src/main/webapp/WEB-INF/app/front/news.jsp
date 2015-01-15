<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.believeus.cn/jstl/date" prefix="date" %>
<%@ taglib uri="http://www.believeus.cn/jstl/html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-集团资讯</title>
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/static/public/js/list.js"></script>
	<script type="text/javascript">
		$(function(){
			
		});
	</script>
	<style type="text/css">
		body{
			margin:0;padding:0;
		}
		.kjtx-tel{
			background:none repeat scroll 0 0 #000;
			color:#fff;
			font-family: microsoft yahei;
			font-size:16px;
			text-align:center;
			height:40px;
			line-height:40px;
			position:fixed;
			top:0;
			width:100%;
			z-index:999;
		}
		.kjtx-tel a{
			color:#fff;
		}
		.kjtx-header{
			position:fixed;
			bottom:0;
			height:40px;
			background:#000;
			width:100%;
			z-index:999;
		}
		.kjtx-header-list{
			float:left;
			width:25%;
			height:40px;
			line-height:40px;
			text-align: center;
		}
		.kjtx-header-list a{
			font-family: microsoft yahei;
			font-size:16px;
			color:#fff;
		}
		.kjtx-logo{
			text-align: center;
			width:50%;
			margin:40px auto 0;
		}
		.big-img{
			background:#000;
			width:100%;
			height:auto;
			overflow: hidden;
			display:none;
			position:absolute;
			top:0;
			z-index:998;
			/* -webkit-transform: rotate(90deg);/*Safari 4+,Google Chrome 1+ 
			-moz-transform: rotate(90deg);/*Firefox 3.5+
			filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);/*ie*/ */
		}
		.big-img img{
			margin-top:100px;
		}
		.news-list{
			float:left;
			width:50%;
			font-family: microsoft yahei;
			font-size:16px;
			color:#666;
		}
		.news-list a{
			color:#666;
		}
		.news-list a:hover{
			color:#932E2C;
			text-decoration: underline;
		}
		.kjtx-news{
			width:100%;overflow:hidden;height:auto;margin-bottom:5px;
		}
		.jiantou{
			margin-right:5px;
		}
		/* ---------- Pagination ---------- */

		div.pagination {
			height: 20px;
			width:300px;
			margin:0 auto;
		}
		
		div.pagination a, div.pagination span {
			height: 18px;
			line-height: 18px;
			display: inline;
			float: left;
			margin-left: 3px;
			text-align: center;
			vertical-align: middle;
			white-space: nowrap;
			outline: none;
			blr: expression(this.hideFocus = true);
		}
		
		div.pagination a {
			padding: 0px 5px;
			border: 1px solid #cccccc;
		}
		
		div.pagination a:hover {
			border: 1px solid #fd6d01;
			text-decoration: none;
		}
		
		div.pagination a.previousPage {
			width: 18px;
			padding: 0px;
			background: url(/static/public/images/list.gif) 0px -180px no-repeat;
		}
		
		div.pagination span.previousPage {
			width: 18px;
			cursor: default;
			border: 1px solid #cccccc;
			background: url(/static/public/images/list.gif) -30px -180px no-repeat;
		}
		
		div.pagination a.nextPage {
			width: 18px;
			padding: 0px;
			background: url(/static/public/images/list.gif) 0px -210px no-repeat;
		}
		
		div.pagination span.nextPage {
			width: 18px;
			cursor: default;
			border: 1px solid #cccccc;
			background: url(/static/public/images/list.gif) -30px -210px no-repeat;
		}
		
		div.pagination a.firstPage {
			width: 18px;
			padding: 0px;
			background: url(/static/public/images/list.gif) -60px -180px no-repeat;
		}
		
		div.pagination span.firstPage {
			width: 18px;
			cursor: default;
			border: 1px solid #cccccc;
			background: url(/static/public/images/list.gif) -90px -180px no-repeat;
		}
		
		div.pagination a.lastPage {
			width: 18px;
			padding: 0px;
			background: url(/static/public/images/list.gif) -60px -210px no-repeat;
		}
		
		div.pagination span.lastPage {
			width: 18px;
			cursor: default;
			border: 1px solid #cccccc;
			background: url(/static/public/images/list.gif) -90px -210px no-repeat;
		}
		
		div.pagination .currentPage {
			padding: 0px 5px;
			color: #fd6d01!important;
			font-weight: bold;
			cursor: default;
			border: 1px solid #fd6d01;
			background-color: #ffede1;
		}
		
		div.pagination .pageBreak {
			padding: 0px 5px;
			color: #3366cc;
			cursor: default;
		}
		
		div.pagination .pageSkip {
			vertical-align: middle;
			padding: 0px 3px;
			color: #666666;
		}
		
		div.pagination .pageSkip input {
			width: 18px;
			height: 18px;
			line-height: 18px;
			padding: 0px;
			margin: 0px 5px;
			text-align: center;
			vertical-align: top;
			*vertical-align: middle;
			ime-mode: disabled;
			border: 1px solid #cccccc;
		}
		
		div.pagination .pageSkip button {
			width: 20px;
			height: 20px;
			margin: 0px 0px 0px 5px;
			vertical-align: top;
			*vertical-align: middle;
			cursor: pointer;
			outline: none;
			blr: expression(this.hideFocus = true);
			border: none;
			background: url(/static/public/images/list.gif) -120px -210px no-repeat;
		}
	</style>
  </head>
  <body>
  	<%-- <jsp:include page="/WEB-INF/include/header.jsp" /> --%>
  		<div class="kjtx-tel">
  			<span style="font-family:microsoft yahei;">
				<i class="phone-tel"></i>
				Call Us Now：<a href="tel://+86-27-65650999">+86-27-65650999</a>
			</span>
			<span class="vipcenter">
				<a href="http://no77520.web03.mzserver.net/ldq/manage/main.php" title="会员中心" target="_blank">会员中心</a>
			</span>
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
		
		<div style="margin-bottom: 90px;">
			<c:forEach var="news" items="${news}">
				<div class="kjtx-news">
					<div style="padding:0 10px;">
						<p class="news-list"><a href="/app/newsInfo.jhtml?id=${news.id }"><i class="jiantou"></i><html:html num="6" value="${news.title }"></html:html></a></p>
						
						<p class="news-list" style="text-align: right;margin-top:4px;font-size:12px;"><date:date parttern="yyyy-MM-dd" value="${news.editTime }"></date:date></p>
					</div>
				</div>
			</c:forEach>
			<form action="/app/news.jhtml" id="listForm">
				<jsp:include page="/WEB-INF/include/pagination.jsp" flush="true" />
			</form>
		</div>
    	<jsp:include page="/WEB-INF/app/include/footer.jsp"/>
  </body>
</html>
