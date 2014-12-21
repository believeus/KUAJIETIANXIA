<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.believeus.cn/jstl/html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>集团公告</title>
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
    			<a href="/zixunList.jhtml" style="color:#666666;">集团资讯</a>
   			</span>
   			<span style="font-size:15px;font-weight:normal;">&gt;&gt;
    			<c:if test="${news.type ==0}">综合资讯</c:if>
    			<c:if test="${news.type ==1}">集团快讯</c:if>
    			<c:if test="${news.type ==2}">高层动态</c:if>
    			<c:if test="${news.type ==3}">集团公告</c:if>
   			</span>
   		</p>
    	<p class="content-title">
    		${news.title }
   		</p>
    	<p class="news-title">
    		发稿时间：<span class="title-date" style="font-weight:normal" dateTime="${news.editTime }">${news.editTime }</span>&nbsp;&nbsp;&nbsp;
    		来源：跨界天下
   		</p>
   		
   		<div style="width:1200px;height:auto;text-align:center;">
	    	<img src="/${news.imgPath }?w=500&h=400" width="500" height="350"/>
	    	<p style="text-align:center;margin-top:10px;color:#666;">${news.title }</p>
   		</div>
    	<div class="zx-content">
    		${news.content}
    	</div>
    	<!--<p class="news-title"></p>
    	 <div class="news-up-down">
	    	<p>上一篇：<a href="#">没有了</a></p>
	    	<p>下一篇：<a href="#">国家主席习近平来武汉视察 跨界天下</a></p>
    	</div> -->
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
