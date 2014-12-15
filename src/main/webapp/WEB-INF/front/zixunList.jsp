<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>集团资讯</title>
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
     <img src="/static/public/images/bg-2.png" width="100%" style="margin-top: -1px;"/>
    <div class="kjtx-main">
    	<p class="kjtx-main-title">
    		<span style="border-bottom: 2px solid #922d2c;">集团资讯</span>
   		</p>
    	<div class="main-nav">
    		<ul>
    			<li><div class="nav_cry"></div><a class="current" href="#">关于乐退</a></li>
    			<li><div class="nav_cry"></div><a href="#">集团快讯</a></li>
    			<li><div class="nav_cry"></div><a href="#">高层动态</a></li>
    			<li><div class="nav_cry"></div><a href="#">集团公告</a></li>
    		</ul>
    	</div>
    	<div class="main-content">
    		<ul>
    			<li>
    				<i class="jiantou"></i>
    				<a href="#">与新煤化工合作</a>
    				<span class="title-date">2014-11-22</span>
   				</li>
    			<li><i class="jiantou"></i><a href="#">壳氏唯亮相2014中国上海国际网络购物交易会</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">习近平：让互联网发展成果惠及13亿中国人民</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">微信电话本退出之后</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">工信部确认我国将取消食盐专营</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">与新煤化工合作</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">壳氏唯亮相2014中国上海国际网络购物交易会</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">习近平：让互联网发展成果惠及13亿中国人民</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">微信电话本退出之后</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">工信部确认我国将取消食盐专营</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">与新煤化工合作</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">壳氏唯亮相2014中国上海国际网络购物交易会</a><span class="title-date">2014-11-22</span></li>
    			<li><i class="jiantou"></i><a href="#">习近平：让互联网发展成果惠及13亿中国人民</a><span class="title-date">2014-11-22</span></li>
    		</ul>
    		<p class="page_list">
    			<a href="#">首页</a>
    			<a href="#">上一页</a>
    			<a style="color:#922D2C;" href="#">[1]</a>
    			<a href="#">[2]</a>
    			<a href="#">[3]</a>
    			<a href="#">[4]</a>
    			<a href="#">[5]</a>
    			<a href="#">[6]</a>
    			<a href="#">[7]</a>
    			...
    			<a href="#">下一页</a>
    			<a href="#">尾页</a>
    		</p>
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
