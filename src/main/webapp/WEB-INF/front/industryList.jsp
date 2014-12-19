<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>集团产业</title>
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <link href="/static/public/css/common_s.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/static/public/js/list.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
    <img src="/static/public/images/11.jpg" width="100%" style="margin-top: -1px;"/>
   	<p class="kjtx-main-title">
   		<span style="border-bottom: 2px solid #922d2c;">集团产业</span>
	</p>
    <div class="kjtx-main">
    	<c:forEach var="industry" items="${page.content}" varStatus="status">
    		<div class="kjtx-main-list" <c:if test="${(status.index+1)%4==0 }">style="margin-right:0;"</c:if> >
    		<div class="kjtx-main-list-img">
    			<a href="/industryPartners.jhtml?industryId=${industry.id }"><img src="/${industry.path }?w=270&h=210" width="272" height="210"/></a>
    		</div>
    		<div class="kjtx-main-list-name">
    			<a href="/industryPartners.jhtml?industryId=${industry.id }" style="color:#333;">${industry.name }</a>
    		</div>
    		<div class="kjtx-main-list-content" title="${industry.introduction }">
	    		${fn:substring(industry.introduction,0,17) }
	    		<c:if test="${fn:length(industry.introduction)>17 }">
	    		...
	    		</c:if>
    		</div>
    	</div>
    	</c:forEach>
    </div>
    <div style="width:1200px;height:auto;overflow:hidden;margin:0 auto;text-align:center;">
	   	<form action="/industryList.jhtml" id="listForm">
			<jsp:include page="/WEB-INF/include/pagination.jsp" flush="true" />
		</form>
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
		.kjtx-main-list-name a:hover{
			text-decoration: underline;
			color:#922d2c !important;
		}
	</style>
  </body>
</html>
