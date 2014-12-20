<%@page import="java.sql.Date"%>
<%@page import="java.sql.Time"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-荣誉资质</title>
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
	<script type="text/javascript" src="/static/public/js/date.js"></script>
    <style type="text/css">
		body{
			font-size:12px;
		}
		a:hover{text-decoration:underline;color: #C20C0C;}
		.honor{
			background: none repeat scroll 0 0 #000;
		    color: #fff;
		    font-size: 16px;
		    height: 41px;
		    opacity: 0.5;
		    position: absolute;
		    text-align: center;
		    width: 299px;
		    margin-top: -41px;
		    display: none;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			$(".list").mouseover(function(){
				$(this).find("div[class='honor']").css("display","block");
			});
			$(".list").mouseout(function(){
				$(this).find("div[class='honor']").css("display","none");
			});
			
			//日期
			$(".honor-date").each(function(){
				var dateTime = $(this).attr("dateTime");
				var date = getSmpFormatDateByLong(parseInt(dateTime),false);
				$(this).text(date);
			});
		});
	</script>
  </head>
  
  <body>
   		<jsp:include page="/WEB-INF/include/header.jsp" />
   		<img src="/static/public/images/11.jpg" width="100%" />
   		<div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
			<div style="font-size: 23px;font-weight: bold;line-height: 65px;height: 40px;text-align: center;">
				资质荣誉
			</div>
			<div style="width: 250px;height: auto;margin: 0 auto;">
				<div style="border-bottom: 3px solid #AEAEAE;margin: 30px 0px 0px;"></div>
				<div style="border-bottom: 5px solid #922D2C;width: 120px;margin: -4px auto 0px"></div>
			</div>
			
			<div style="height: auto;overflow:hidden;border: 1px solid #CACBC6;margin-top: 40px;margin-bottom:30px;">
				<c:forEach items="${page.content }" var="honors" varStatus="status">
					<div style="float: left;" class="list">
						<img height="299.5" width="299"  src="${honors.imgpath }" />
						<div class="honor" style="font-size: 16px;">
							<div>${honors.name }</div>
							<div class="honor-date" style="font-size: 12px;" dateTime="${honors.editTime }">${honors.editTime }</div>
						</div>
					</div>
				</c:forEach>
				<!-- <div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;" src="/static/public/images/honor_1.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div>
				<div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;" src="/static/public/images/honor_1.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div>
				<div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;" src="/static/public/images/honor_2.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div> -->
				
			</div>
			<!-- <div style="height: 300px;border: 1px solid #CACBC6;margin-top: 40px;">
				<div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;"  src="/static/public/images/honor_1.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div>
				<div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;" src="/static/public/images/honor_2.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div>
				<div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;" src="/static/public/images/honor_2.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div>
				<div style="float: left;" class="list">
					<a href="">
						<img style="height: 299.5px;" src="/static/public/images/honor_1.png" />
					</a>
					<div class="honor" style="font-size: 16px;">
						<div>荣誉证书</div>
						<div style="font-size: 12px;">2014-03-09</div>
					</div>
				</div>
			</div> -->
			
			<div style="width:1200px;height:auto;overflow:hidden;margin:0 auto;text-align:center;">
			   	<form action="/honor.jhtml" id="listForm">
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
