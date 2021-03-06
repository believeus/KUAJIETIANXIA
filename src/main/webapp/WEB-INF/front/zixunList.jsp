<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>集团资讯</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport" />
	<meta content="no" name="apple-touch-fullscreen" />
	<meta name="format-detection" content="telephone=no" />
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <link href="/static/public/css/common_s.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/date.js"></script>
	<script type="text/javascript" src="/static/public/js/list.js"></script>
	<script type="text/javascript">
		$(function(){
			var href = window.location.href;
			var url = href.substring(href.lastIndexOf("#")+1);
			//alert("url="+url);
			if(url == 1){
				$("#zx00").removeClass("current");
				$("#zx01").removeClass("current");
				$("#zx02").removeClass("current");
				$("#zx03").removeClass("current");
				$("#zx01").addClass("current");
			}else if(url == 2){
				$("#zx00").removeClass("current");
				$("#zx01").removeClass("current");
				$("#zx02").removeClass("current");
				$("#zx03").removeClass("current");
				$("#zx02").addClass("current");
			}else if(url == 3){
				$("#zx00").removeClass("current");
				$("#zx01").removeClass("current");
				$("#zx02").removeClass("current");
				$("#zx03").removeClass("current");
				$("#zx03").addClass("current");
			}else {
				$("#zx00").removeClass("current");
				$("#zx01").removeClass("current");
				$("#zx02").removeClass("current");
				$("#zx03").removeClass("current");
				$("#zx00").addClass("current");
			}
			
			//日期
			$(".title-date").each(function(){
				var dateTime = $(this).attr("dateTime");
				var date = getSmpFormatDateByLong(parseInt(dateTime),false);
				$(this).text(date);
			});
		});
	</script>
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
     <img src="/static/public/images/zx.jpg" width="100%" style="margin-top: -1px;"/>
    <div class="kjtx-main">
    	<p class="kjtx-main-title">
    		<span style="border-bottom: 2px solid #922d2c;">集团资讯</span>
   		</p>
    	<div class="main-nav">
    		<ul>
    			<li><div class="nav_cry"></div><a id="zx00" class="current" href="/zixunList.jhtml?type=0#0">综合资讯</a></li>
    			<li><div class="nav_cry"></div><a id="zx01" href="/zixunList.jhtml?type=1#1">集团快讯</a></li>
    			<li><div class="nav_cry"></div><a id="zx02" href="/zixunList.jhtml?type=2#2">高层动态</a></li>
    			<li><div class="nav_cry"></div><a id="zx03" href="/zixunList.jhtml?type=3#3">集团公告</a></li>
    		</ul>
    	</div>
    	<div class="main-content">
    		<ul>
    			<c:forEach items="${page.content }" var="news" varStatus="status">
	    			<li>
	    				<i class="jiantou"></i>
	    				<a href="/zixunContent.jhtml?id=${news.id }">${news.title }</a>
	    				<span class="title-date" style="float:right;" dateTime="${news.editTime }">${news.editTime }</span>
	   				</li>
   				</c:forEach>
    		</ul>
    		<div style="width:900px;height:auto;overflow:hidden;margin:0 auto;text-align:center;">
			   	<form action="/zixunList.jhtml" id="listForm">
					<jsp:include page="/WEB-INF/include/pagination.jsp" flush="true" />
				</form>
			</div>
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
