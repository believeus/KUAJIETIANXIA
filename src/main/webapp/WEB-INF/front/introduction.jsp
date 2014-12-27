<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-集团简介</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
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
		.kjtx-list-content{
			width:1198px;
			height:245px;
			border:1px solid #dddddd;
			background:#F3F3F3;
			margin-top: 30px;
		}
		.kjtx-list-content-img{
			width:385px;
			height:245px;
			float:left;
		}
		.kjtx-list-content-desc{
			width:690px;
			height:245px;
			float: right;
			margin-right: 60px;
			position: relative;
   			top: -93px;
		}
		.icon-status{
			width:98px;
			height:92px;
			border:1px solid #fff;
			border-radius:5px;
			background:#932e2c;
			left: -50px;
		    position: relative;
		    top: 65px;
		    float:left;
		}
		.icon-status-index{
			height:52px;
			width:98px;
			line-height:52px;
			color:#fff;
			text-align:center;
			font-size: 50px;
			transition:all 0.5s ease-in-out 0s;
		}	
		.icon-status-index:hover{
			transform: rotate(360deg);
		}
		.icon-status-name{
			height:40px;
			width:98px;
			line-height:40px;
			color:#fff;
			text-align:center;
			font-size: 20px;
		}
		.jtwh{
			font-size: 16px;text-indent: 40px;line-height: 30px;
		}
	</style>
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
    <img src="/static/public/images/js.jpg" width="100%" />
	<p class="kjtx-main-title">
    		<span style="border-bottom: 2px solid #922d2c;">集团介绍</span>
   		</p>
    <div class="center" style="width: 1200px; height: 1160px;margin: 0 auto;overflow: hidden;">
		<div class="kjtx-list-content">
			<div class="kjtx-list-content-img">
				<img src="/static/public/images/honor_1.jpg" width="385" height="245"/>
			</div>
			<div class="icon-status">
				<div class="icon-status-index">1</div>
				<div class="icon-status-name">集团简介</div>
			</div>
			<div class="kjtx-list-content-desc">
				<p style="font-size: 20px; font-weight: bold;margin: 30px 0 20px;">集团简介</p>
				<p class="jtwh">
					跨界天下，一切皆为大商而来！
				</p>
				<p class="jtwh">
					使命：打造中国最具规模、最有价值、最有公德心的联盟商企平台；
				</p>
				<p class="jtwh">
					价值观：合法、正道、独特、持久、多赢、乐退；
				</p>
				<p class="jtwh">
					定位：以资本为杠杆、以平台为载体、以需求为核心、服务民营企业；<br/>
				</p>
				<p class="jtwh">
					经营理念：跨界合作、联盟共赢。
				</p>
			</div>
		</div>
		<div class="kjtx-list-content">
			<div class="kjtx-list-content-desc" style="float: left; margin-right: 0px; margin-left: 60px;top: -63px;">
				<p style="font-size: 20px; font-weight: bold;margin: 30px 0 20px;">总裁致辞</p>
				<p style="font-size: 16px;text-indent: 40px;">暂无</p>
			</div>
			<div class="icon-status" style="left: 15px; top: 10px; z-index: 99;">
				<div class="icon-status-index">2</div>
				<div class="icon-status-name">总裁致辞</div>
			</div>
			<div class="kjtx-list-content-img" style="float: right; position: relative; top: -157px;">
				<img src="/static/public/images/honor_2.jpg" width="385" height="245"/>
			</div>
		</div>
		<div class="kjtx-list-content">
			<div class="kjtx-list-content-img" style="position: relative; top: -30px;">
				<img src="/static/public/images/honor_4.jpg" width="385" height="245"/>
			</div>
			<div class="icon-status" style="top:35px;">
				<div class="icon-status-index">3</div>
				<div class="icon-status-name">发展历程</div>
			</div>
			<div class="kjtx-list-content-desc" style="top: -123px;">
				<p style="font-size: 20px; font-weight: bold;margin: 30px 0 20px;">发展历程</p>
				<p style="font-size: 16px;text-indent: 40px;">暂无</p>
			</div>
		</div>
		<div class="kjtx-list-content">
			<div class="kjtx-list-content-desc" style="float: left; margin-right: 0px; margin-left: 60px;top: -93px;">
				<p style="font-size: 20px; font-weight: bold;margin: 30px 0 20px;">组织架构</p>
				<p style="font-size: 16px;text-indent: 40px;">暂无</p>
			</div>
			<div class="icon-status" style="left: 15px; top: -20px; z-index: 99;">
				<div class="icon-status-index">4</div>
				<div class="icon-status-name">组织架构</div>
			</div>
			<div class="kjtx-list-content-img" style="float: right; position: relative; top: -187px;">
				<img src="/static/public/images/honor_3.jpg" width="385" height="245"/>
			</div>
		</div>
	</div>
    <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
