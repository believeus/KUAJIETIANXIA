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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport" />
	<meta content="no" name="apple-touch-fullscreen" />
	<meta name="format-detection" content="telephone=no" />
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
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
				<!-- <p style="font-size: 20px; font-weight: bold;margin: 30px 0 20px;">集团简介</p> -->
				<p class="jtwh">
					跨界天下，一切皆为大商而来！
跨界天下是亚太跨界联盟集团中国区总公司。（成立时间为2007年6月）跨界天下是以中小微企业主为主体联盟企成员，通过跨界联盟平台，组织、协调、相互整合对接资源，优化资源配置的综合商企联盟平台组织。区别于传统的商会或企业服务公司。跨界天下提倡引导各会员企业间的资源共享、互惠互利、互相借势增长的共生、互补关系，打破了此消彼长的竞争关系；同时，跨界天下所带来的是涵盖各行业、各年龄阶段、各消费群体之间的资源信息共融与共荣。“以资本为杠杆，以用户体验为互补”。跨界天下是一次彻底的、由独立机构发起的全面的跨行业合作模板，是各联盟企业间更深层次的横向合作，是真正意义上的跨界协力服务平台。
				</p>
			</div>
		</div>
		<div class="kjtx-list-content">
			<div class="kjtx-list-content-desc" style="float: left; margin-right: 0px; margin-left: 60px;top: -63px;">
				<p style="text-indent: 40px; font-size: 14px; line-height: 21px; margin-top: 10px;">
					亚太跨界联盟公司自成立于2007年6月。是一家集生物科技研发，金融资本运营管理，娱乐媒体策划制作宣传，商业营销模式创新，健康养生食品种植的多元化综合型商企联盟机构组织。
致力于打造中国最具规模最有价值最有公德心的联盟商企平台。跨界天下以中小微企业主为主体成员的，通过跨界联盟平台，组织、协调、相互资源对接整合，优化资源配置；提供金融、教育、健康，法务，商业等服务、支持针对行业发展需求进行各种专项支持援助，提升企业竞争力；电子商务和传统销售渠道相结合的线上线下交叉融合；促进跨界企业间消费商共享，对品牌提升，市场拓展，产品销售意义重大，对会员企业产业发展升级具有关键性作用。
   同时，充分利用互联网数据信息优势，帮助企业创造贴合时代特点的商业模式、产品技术创新，打造新品牌，辅导企业海外上市融资；一对一帮扶模式，跨界产业联盟，整合各行业电商+实体店，〇2〇模式，引用国外资本服务于中国企业。
跨界天下，志在打破行业枷锁，跨界联盟，资源整合，从竞争走向竞合，我们秉承合法、正道、独特、持久、共赢、乐退的精神，打造中国传统中小微企业的利益共同体，携手实现国家富强、民族产业振兴的中国梦。
				</p>
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
