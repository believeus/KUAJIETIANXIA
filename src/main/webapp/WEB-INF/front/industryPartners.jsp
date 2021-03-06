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
		<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport" />
		<meta content="no" name="apple-touch-fullscreen" />
		<meta name="format-detection" content="telephone=no" />
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style" />
		<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
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
			.com-list div {
			    margin-bottom: 10px;
			    margin-right:10px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/include/header.jsp" />
		<img src="/static/public/images/cy.jpg" alt="" width="100%" />
		<div style="margin: 0 auto;width: 1200px;">
			<p class="kjtx-main-title">
	    		<span style="border-bottom: 2px solid #922d2c;">
	    			<a href="/industryList.jhtml" style="color:#666;">集团产业</a>
    			</span>
   				<span style="font-size:15px;font-weight:normal;">&gt;&gt;${industry.name}</span>
	   		</p>
	   		<div style="font-size: 16px; font-family: microsoft yahei; text-align: center; font-weight: bold;" title="${industry.introduction }">
	   			<html:html num="30" value="${industry.introduction }"></html:html>
   			</div>
			<div style="text-indent: 40px;width: 1000px;height:auto;margin: 0 auto 30px;font-family: microsoft yahei;font-size: 15px;line-height: 30px;">
				<span style="font-weight: bold;font-size:20px;">介绍：</span>
				${industry.content}
			</div>
			<span style="margin-left: 95px;font-size:20px;font-weight: bold;">${industry.name}&nbsp;/&nbsp;系列公司</span>
			<div style="width: 1005px;height:310px;margin: 10px auto 50px;" class="com-list">
				<c:forEach var="partner" items="${partners}">
					<div style="float: left;">
						<a href="/kjtxabstract.jhtml?id=${partner.id}">
							<img src="/${partner.logo}?w=200&h=200" width="200" height="200"/>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</body>
</html>
