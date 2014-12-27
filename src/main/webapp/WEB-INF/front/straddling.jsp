<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="html" uri="http://www.believeus.cn/jstl/html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-招商合作</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <link rel="stylesheet" href="/static/public/css/fonts.css" />
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<link rel="stylesheet" href="/static/public/css/fwslider.css" />
	<link rel="stylesheet" href="/static/public/css/jquery.bxslider.css" />
	<link rel="stylesheet" href="/static/public/css/zalki_hover_img.css" />
	<link href="/static/public/css/common_s.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/static/public/js/jquery.validate.js"></script>
	<script type="text/javascript" src="/static/public/js/common.js"></script>
	<script type="text/javascript" src="/static/public/js/input.js"></script>
	<script type="text/javascript" src='/static/public/js/me.js'></script>
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
    <img src="/static/public/images/zs.jpg" width="100%" />
	<p class="kjtx-main-title">
   		<span style="border-bottom: 2px solid #922d2c;">招商合作</span>
	</p>
   	<div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
		<div style="color: #666666;font-size: 18px;font-weight: bold;line-height: 40px;height: 40px;margin-left: 92%;">
			<!-- <a style="color: #666666;" href="">集团简介</a> -->
		</div>
		<c:forEach items="${page.content }" var="partner" varStatus="status">
			<div style="border: 1px solid #CACBC6;height: 284px;margin: 0 auto;margin-bottom:30px;">
				<div style="float: left;width: 50%;">
					<a href="/kjtxabstract.jhtml?id=${partner.id }">
						<img style="width: 600px;height:265px;margin: 10px;" src="${partner.logo }" />
					</a>
				</div>
				<div style="float: left;width: 45%;margin: 10px 10px 10px 40px;">
					<div style="line-height: 50px;margin-top: -15px">
						<a class="zhaoshang-title" href="/kjtxabstract.jhtml?id=${partner.id }">
							${partner.name }
						</a>
					</div>
					<div style="margin-top: 10px;text-indent: 2em;color: #666666;font-size: 16px;height:190px;">
						<html:html num="350" value="${partner.introduction }"></html:html>
					</div>
					<div style="font-size: 16px;float: right;margin-right: 20px;">
						<a style="color: #922D2C;margin-right:30px;" href="/kjtxabstract.jhtml?id=${partner.id }">[更多简介...]</a>
						<a style="color: #555;" href="/kjtxproduct.jhtml?partnerId=${partner.id }">[查看产品]</a>
					</div>
				</div>
			</div>
		</c:forEach>
		<div style="width:1200px;height:auto;overflow:hidden;margin:0 auto;text-align:center;">
		   	<form action="/straddling.jhtml" id="listForm">
				<jsp:include page="/WEB-INF/include/pagination.jsp" flush="true" />
			</form>
		</div>
    </div>
    
    <jsp:include page="/WEB-INF/include/footer.jsp" />
    <style type="text/css">
		.flex-viewport{
			width: 1685px;
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
	</style>
  </body>
</html>
