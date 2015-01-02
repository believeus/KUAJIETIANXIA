<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-集团简介</title>
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			
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
				Call Us Now：<a href="tel://+86-27-65650999">+86-27-65650999</a>
			</span>
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
  		
		<div style="width:100%;overflow:hidden;height:auto;background:#F3F3F3;">
			<div style="width:100%;"><img src="/static/public/images/1.png" width="100%"></div>
			<div style="width:100%;float:left;font-size:14px;text-indent: 20px;padding:10px 0;line-height:23px;">
				跨界天下，一切皆为大商而来！ 跨界天下是跨界天下文化传媒有限公司中国区总公司，成立于2007年6月。跨界天下是以中小微企业主为主体联盟企成员，通过跨界联盟平台，组织、协调、相互整合对接资源，优化资源配置的综合商企联盟平台组织。区别于传统的商会或企业服务公司。跨界天下提倡引导各会员企业间的资源共享、互惠互利、互相借势增长的共生、互补关系，打破了此消彼长的竞争关系；同时，跨界天下所带来的是涵盖各行业、各年龄阶段、各消费群体之间的资源信息共融与共荣。“以资本为杠杆，以用户体验为互补”。跨界天下是一次彻底的、由独立机构发起的全面的跨行业合作模板，是各联盟企业间更深层次的横向合作，是真正意义上的跨界协力服务平台。 
			</div>
		</div>
		<div style="width:100%;overflow:hidden;height:auto;margin-top:20px;background:#F3F3F3;margin-bottom: 50px;">
			<div style="width:100%;float:left;"><img src="/static/public/images/2.png" width="100%"></div>
			<div style="width:100%;float:left;font-size:14px;text-indent: 20px;padding:10px 0;line-height:23px;">
				跨界天下文化传媒有限公司自成立于2007年6月。是一家集生物科技研发，金融资本运营管理，娱乐媒体策划制作宣传，商业营销模式创新，健康养生食品种植的多元化综合型商企联盟机构组织。
致力于打造中国最具规模最有价值最有公德心的联盟商企平台。跨界天下以中小微企业主为主体成员的，通过跨界联盟平台，组织、协调、相互资源对接整合，优化资源配置；提供金融、教育、健康，法务，商业等服务、支持针对行业发展需求进行各种专项支持援助，提升企业竞争力；电子商务和传统销售渠道相结合的线上线下交叉融合；促进跨界企业间消费商共享，对品牌提升，市场拓展，产品销售意义重大，对会员企业产业发展升级具有关键性作用。
   同时，充分利用互联网数据信息优势，帮助企业创造贴合时代特点的商业模式、产品技术创新，打造新品牌，辅导企业海外上市融资；一对一帮扶模式，跨界产业联盟，整合各行业电商+实体店，〇2〇模式，引用国外资本服务于中国企业。
跨界天下，志在打破行业枷锁，跨界联盟，资源整合，从竞争走向竞合，我们秉承合法、正道、独特、持久、共赢、乐退的精神，打造中国传统中小微企业的利益共同体，携手实现国家富强、民族产业振兴的中国梦。 
			</div>
		</div>
    <jsp:include page="/WEB-INF/app/include/footer.jsp"/>
  </body>
</html>
