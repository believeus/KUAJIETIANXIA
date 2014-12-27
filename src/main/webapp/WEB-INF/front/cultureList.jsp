<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-集团文化</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <link href="/static/public/css/common_s.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/static/public/js/list.js"></script>
	<!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<style type="text/css">
		body{
			font-family:microsoft yahei;
		}
	</style>
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
    <img src="/static/public/images/11.jpg" alt="" width="100%" />
    <div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
		<div style="line-height: 65px;height: 55px;">
			<div style="float: left;font-size: 23px;font-weight: bold;color: #434343;">集团文化</div>
		</div>
		<div style="width: 1200px;height: auto;margin: 0 auto;">
			<div style="border-bottom: 2px solid #AEAEAE;"></div>
			<div style="border-bottom: 4px solid #922D2C;width: 92px;margin: -3px 0px 10px;"></div>
		</div>
		
		<div style="width: 1200px;height: auto;margin: 10px auto;overflow:hidden;">
			<div style="height: auto;margin: 0 auto;overflow:hidden;">
			<c:forEach items="${page.content }" var="cul" varStatus="status">
				<div style="float: left; width: 590px; height: 220px; margin: 15px 10px 15px 0px;">
					<div style="float: left;color: #434343;margin-left: 10px;width: 64%;height:200px;">
						<div style="font-size: 20px;width: 100%;line-height: 40px;" title="${cul.introduction }">
							${status.index+1 }、
							<a class="wenhua-title" href="/cultureInfo.jhtml?id=${cul.id }" title="${cul.introduction }">${fn:substring(cul.introduction, 0, 16)}</a>
							<c:if test="${fn:length(cul.introduction) > 16 }">
			   					...
		   					</c:if>
						</div>
						<div style="font-size: 14px;width: 100%;line-height: 25px;height:120px;">
							${fn:substring(cul.content, 0, 120)}
							<c:if test="${fn:length(cul.content) > 120 }">
			   					...
		   					</c:if>
						</div>
						<div style="font-size: 14px;background-color: #922D2C;margin-top: 10px;text-align: center;width: 30%;line-height: 30px;">
							<a style="color: #FFFFFF;" href="/cultureInfo.jhtml?id=${cul.id }">详情</a>
						</div>
					</div>
					<div style="float: left; margin: 32px 20px; width: 154px; height: 154px;">
						<a href="/cultureInfo.jhtml?id=${cul.id }" title="${cul.introduction }"><img src="${cul.path }" style="border-radius: 100px;width: 154px;height: 154px;" /></a>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		<div style="width:1200px;height:auto;overflow:hidden;margin:0 auto;text-align:center;">
		   	<form action="/cultureList.jhtml" id="listForm">
				<jsp:include page="/WEB-INF/include/pagination.jsp" flush="true" />
			</form>
		</div>
    </div>
    <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
