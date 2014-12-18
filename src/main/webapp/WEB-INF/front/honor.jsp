<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-荣誉资质</title>
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
		    margin-top: -45px;
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
		});
	</script>
  </head>
  
  <body>
   		<jsp:include page="/WEB-INF/include/header.jsp" />
   		<img src="/static/public/images/11.jpg" width="100%" />
   		<div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
			<div style="font-size: 23px;font-weight: bold;line-height: 65px;height: 40px;text-align: center;">
				<a style="color: #666666;" href="kjtx_world.html">资质荣誉</a>
			</div>
			<div style="width: 250px;height: auto;margin: 0 auto;">
				<div style="border-bottom: 3px solid #AEAEAE;margin: 30px 0px 0px;"></div>
				<div style="border-bottom: 5px solid #922D2C;width: 120px;margin: -4px auto 0px"></div>
			</div>
			
			<div style="height: auto;overflow:hidden;border: 1px solid #CACBC6;margin-top: 40px;">
				<c:forEach items="${honors }" var="honors" varStatus="status">
					<div style="float: left;" class="list">
						<a href="">
							<img height="299.5" width="299"  src="${honors.imgpath }" <c:if test="${status.index>3 }">style="margin-top: -4px;"</c:if> />
						</a>
						<div class="honor" style="font-size: 16px;">
							<div>${honors.name }</div>
							<div style="font-size: 12px;">2014-03-09</div>
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
			
			<div style="width: 100%;height: 50px;background-color: #414141;text-align: center;border-radius: 3px;margin: 30px auto;">
				<div style="line-height: 50px;font-size: 18px;font-weight: bold;">
					<a style="color: #C9C9C9;" href="">查看更多...</a>
				</div>
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
