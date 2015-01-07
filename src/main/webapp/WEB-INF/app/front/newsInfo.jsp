<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.believeus.cn/jstl/date" prefix="date" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-集团资讯详情</title>
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
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
		.news-title{
			text-align: center;
		}
		.content-news{
			text-align: left;margin-bottom: 90px;line-height:20px;text-indent: 20px;padding:0 10px;font-size: 14px;
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
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
  		 <div class="kjtx-news">
			<p class="content-title">${news.title }</p>
			<p class="news-title">
	    		发稿时间：<span datetime="1419234974257" style="font-weight:normal" class="title-date"><date:date parttern="yyyy-MM-dd" value="${news.editTime }"></date:date></span>&nbsp;&nbsp;&nbsp;
	    		来源：跨界天下
	   		</p>
	   		<div class="content-news">
	   			${news.content }
	   		</div>
		 </div>

    <jsp:include page="/WEB-INF/app/include/footer.jsp"/>
  </body>
</html>
