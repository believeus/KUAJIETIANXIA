<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.believeus.cn/jstl/date" prefix="date" %>
<%@ taglib uri="http://www.believeus.cn/jstl/html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>跨界天下-产业详情</title>
		<link rel="stylesheet" href="/static/public/css/fonts.css" />
		<link rel="stylesheet" href="/static/public/css/style.css" />
		<link rel="stylesheet" href="/static/public/css/fwslider.css" />
		<link rel="stylesheet" href="/static/public/css/jquery.bxslider.css" />
		<link rel="stylesheet" href="/static/public/css/zalki_hover_img.css" />
		<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="/static/public/js/jquery.validate.js"></script>
		<script type="text/javascript" src="/static/public/js/common.js"></script>
		<script type="text/javascript" src="/static/public/js/input.js"></script>
		<script type="text/javascript" src='/static/public/js/me.js'></script>
		<!----start-top-nav-script---->
		<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
		<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
		<!----//End-top-nav-script---->
		<style type="text/css">
			body{
				font-family:microsoft yahei;
			}
			.com-list > div {
			    margin-bottom: 10px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/include/header.jsp" />
		<img src="/static/public/images/11.jpg" alt="" width="100%" />
		<div style="margin: 0 auto;width: 1200px;">
			<p class="kjtx-main-title">
	    		<span style="border-bottom: 2px solid #922d2c;">
	    			<a href="/industryList.jhtml" style="color:#666;">集团产业</a>
    			</span>
   				<span style="font-size:15px;font-weight:normal;">&gt;&gt;${industry.name}</span>
	   		</p>
	   		<div style="font-size: 16px; font-family: microsoft yahei; text-align: center; font-weight: bold;">${industry.introduction }</div>
			<div style="text-indent: 40px;width: 1000px;height:200px;margin: 0 auto;font-family: microsoft yahei;font-size: 15px;line-height: 30px;">
				<span>介绍：</span>
				<%-- <html:html num="400" value="${industry.content}"></html:html> --%>
				${industry.content}
			</div>
			<span style="margin-left: 95px;font-size:15px;">${industry.name}&nbsp;/&nbsp;系列公司</span>
			<div style="width: 1005px;height:310px;margin: 10px auto 50px;" class="com-list">
				<c:forEach var="partner" items="${partners}">
				<div style="float: left;"><a href="/kjtxabstract.jhtml?id=${partner.id}"><img src="/${partner.logo}?w=200&h=200"/></a></div>
				</c:forEach>
			</div>
		</div>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</body>
</html>
