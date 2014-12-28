<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>集团文化</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport" />
	<meta content="no" name="apple-touch-fullscreen" />
	<meta name="format-detection" content="telephone=no" />
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/date.js"></script>
	<script type="text/javascript">
		$(function(){
			//日期
			$(".title-date").each(function(){
				var dateTime = $(this).attr("dateTime");
				var date = getSmpFormatDateByLong(parseInt(dateTime),true);
				$(this).text(date);
			});
		});
	</script>
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
    <img src="/static/public/images/11.jpg" width="100%" style="margin-top: -1px;"/>
    <div class="kjtx-main">
    	<p class="kjtx-main-title">
    		<span style="border-bottom: 2px solid #922d2c;">
    			<a href="/cultureList.jhtml" style="color:#666666;">集团文化</a>
   			</span>
   			<span style="font-size:15px;font-weight:normal;">&gt;&gt;文化详情</span>
   		</p>
    	<p class="content-title">
    		${news.introduction }
   		</p>
    	<p class="news-title">
    		发稿时间：<span class="title-date" style="font-weight:normal" dateTime="${news.editTime }">${news.editTime }</span>&nbsp;&nbsp;&nbsp;
    		来源：跨界天下
   		</p>
   		
   		<div style="width:1200px;height:auto;text-align:center;">
	    	<img src="/${news.path }?w=500&h=400" width="500" height="350"/>
	    	<p style="text-align:center;margin-top:10px;color:#666;">${news.introduction }</p>
   		</div>
    	<div class="zx-content">
    		${news.content}
    	</div>
    </div>
    <jsp:include page="/WEB-INF/include/footer.jsp" />
    <style type="text/css">
		.flex-viewport{
			width: 1340px;
			margin:0 auto;
		}
		.slides img {
		    height: 210px;
		}
		.bx-viewport{
			height:160px !important;
		}
		.active li a{
			color:#dedede !important;
		}
		.active li a:hover{
			color:#8E2C2D !important;
		}
		.current{
			color:#922D2C !important;
		}
	</style>
  </body>
</html>
