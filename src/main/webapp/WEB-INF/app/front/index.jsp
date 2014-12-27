<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-首页</title>
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<link rel="stylesheet" href="/static/public/css/fwslider.css" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script src="/static/public/js/kjtx/jquery.bxslider.js"></script>
	<script src="/static/public/js/jquery.lazyload.js" type="text/javascript" charset="utf-8"></script>
	<!--start slider -->
	<link rel="stylesheet" href="/static/public/css/fwslider.css" media="all" />
	<script src="/static/public/js/kjtx/jquery-ui.min.js"></script>
	<script src="/static/public/js/kjtx/css3-mediaqueries.js"></script>
	<script src="/static/public/js/kjtx/fwslider.js"></script>
	<!--end slider -->
	<!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<script type="text/javascript">
		$(function(){
			//懒加载
			$("img").lazyload({
				threshold:0,
	            failure_limit:0,
	            event:"scroll",
	            effect:"fadeIn",
	            container:window,
	            skip_invisible:true
			});
			$(".imgs img").click(function(){
				if($(".big-img").css("display") == "none"){
					$(".big-img").css({"display":"block","height":"2000px","width":"1903px"});
					$("body").css("overflow-y","hidden");
					//$(".big-img img").css({"margin-top":$(this).scrollTop});
					$(".big-img img").attr("src",$(this).attr("src"));
				}
				$(".big-img img").click(function(){
					if($(".big-img").css("display") == "block"){
						$(".big-img").css({"display":"none"});
						$("body").css("overflow-y","auto");
					}
				});
			});
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
			z-index:9999;
		}
		.big-img img{
			margin-top:100px;
		}
	</style>
  </head>
  <body>
  		<div class="kjtx-tel">
  			<span style="font-family:microsoft yahei;">
				<i class="phone-tel"></i>
				Call Us Now：<a href="tel://400-6565-0999">400-6565-0999</a>
			</span>
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
  		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		            <div class="slide">
		                <img src="/static/public/images/001.jpg" alt=""/>
		            </div>
		            <div class="slide">
		                <img src="/static/public/images/cc.jpg" alt=""/>
		            </div>
		        </div>
		        <div class="timers"> </div>
		        <div class="slidePrev" style="opacity:1;"><span> </span></div>
		        <div class="slideNext" style="opacity:1;"><span> </span></div>
		    </div>
		    <!--/slider -->
		</div>
		<div class="imgs">
    	<a href="#"><img src="/static/public/images/news_02.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/news_03.jpg" width="100%"/></a>
    	<a href="#"><img width="100%" src="/static/public/images/grey.gif" data-original="/static/public/images/news_04.jpg"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_05.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_06.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_07.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_08.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_09.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_10.gif" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_11.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_12.jpg" width="100%"/></a>
    	<a href="#"><img src="/static/public/images/grey.gif" data-original="/static/public/images/news_13.jpg" width="100%" style="margin-bottom: 45px;"/></a>
    	</div>
    	<jsp:include page="/WEB-INF/app/include/footer.jsp"/>
    	<div class="big-img">
    		<img alt="" src="" />
    	</div>
  </body>
</html>
