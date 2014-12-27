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
			var height = $("body").css("height");
			$(".imgs img").click(function(){
				//alert($(this).css("width"));
				$(".big-img").css({"display":"block","height":height,"width":"1903px"});
				$(".big-img img").css({"margin-top":$(this).css("top")});
				$(".big-img img").attr("src",$(this).attr("src"));
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
			z-index:998;
			/* -webkit-transform: rotate(90deg);/*Safari 4+,Google Chrome 1+ 
			-moz-transform: rotate(90deg);/*Firefox 3.5+
			filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);/*ie*/ */
		}
		.big-img img{
			margin-top:100px;
		}
	</style>
  </head>
  <body>
  	<%-- <jsp:include page="/WEB-INF/include/header.jsp" /> --%>
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
    	<img src="/static/public/images/new_02.jpg" width="100%"/>
    	<img src="/static/public/images/new_03.jpg" width="100%"/>
    	<img width="100%" src="/static/public/images/grey.gif" data-original="/static/public/images/new_04.jpg"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_05.jpg" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_06.jpg" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_07.jpg" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_08.jpg" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_09.jpg" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_10.gif" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_11.jpg" width="100%"/>
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_12.jpg" width="100%" />
    	<img src="/static/public/images/grey.gif" data-original="/static/public/images/new_13.jpg" width="100%" style="margin-bottom: 45px;"/>
    	</div>
    	<jsp:include page="/WEB-INF/app/include/footer.jsp"/>
    	<div class="big-img">
    		<img alt="" src="" />
    	</div>
  </body>
</html>
