<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.believeus.cn/jstl/date" prefix="date" %>
<%@ taglib uri="http://www.believeus.cn/jstl/html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-主打产品</title>
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
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
			width:20%;
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
		.news-list{
			float:left;
			width:50%;
			font-family: microsoft yahei;
			font-size:16px;
			color:#666;
		}
		.news-list a{
			color:#666;
		}
		.news-list a:hover{
			color:#932E2C;
			text-decoration: underline;
		}
		.kjtx-news{
			width:100%;overflow:hidden;height:auto;margin-bottom:5px;
		}
		.jiantou{
			margin-right:5px;
		}
		.pro-title{
			text-align: center;
			font-weight: bold;
			font-size: 16px;
			font-family: simhei;
			font-size: 21px;
			border-bottom:1px solid #AAAAAA;
			width:260px;
			margin:0 auto;
		}
		.dis-content{
			padding:0 10px;
		}
		.dis-content p {
		    font-family: microsoft yahei;
		    font-size: 16px;
		    line-height: 25px;
		    text-indent: 30px;
		}
		.pro-list{
			float:left;
			width:50%;
			
		}
		.pro-name{
			color: #932e2c;
		    font-size: 15px;
		    font-weight: bold;
		}
		.pro-name:hover{
			text-decoration: underline;
		}
	</style>
  </head>
  <body>
  	<%-- <jsp:include page="/WEB-INF/include/header.jsp" /> --%>
  		<div class="kjtx-tel">
  			<span style="font-family:microsoft yahei;">
				<i class="phone-tel"></i>
				Call Us Now：<a href="tel://400-6565-0999">027-6565-0999</a>
			</span>
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
		
		<div style="margin-bottom: 50px;">
			<p class="pro-title">跨界天下旗下管理品牌</p>
			<div style="width:50%;margin:30px auto;">
				<img src="/static/public/images/tf_logo.png" width="100%"/>
			</div>
			<div class="dis-content">
				<p>亚太跨界联盟公司自成立于2007年6月。是一家集生物科技研发，金融资本运营管理，娱乐媒体策划制作宣传，商业营销模式创新，健康养生食品种植的多元化综合型商企联盟机构组织。</p>
				<p>致力于打造中国最具规模最有价值最有公德心的联盟商企平台。跨界天下以中小微企业主为主体成员的，通过跨界联盟平台，组织、协调、相互资源对接整合，优化资源配置；提供金融、教育、健康，法务，商业等服务、支持针对行业发展需求进行各种专项支持援助，提升企业竞争力；电子商务和传统销售渠道相结合的线上线下交叉融合；促进跨界企业间消费商共享，对品牌提升，市场拓展，产品销售意义重大，对会员企业产业发展升级具有关键性作用。</p>

			</div>
			<div style="margin-top:30px;margin-bottom: 30px;height:auto;overflow: hidden;">
				<p class="pro-title" style="margin-bottom:30px;">公司产品</p>
				<div class="pro-list">
					<a href="/app/productInfo.jhtml"><img src="/static/public/images/111.jpg" width="100%"/></a>
					<div style="text-align: center;padding:10px 0;">
						<a href="/app/productInfo.jhtml" class="pro-name">活力胶原蛋白多肽粉</a>
					</div>
				</div>
				<div class="pro-list">
					<a href="/app/productInfo2.jhtml"><img src="/static/public/images/222.jpg" width="100%"/></a>
					<div style="text-align: center;padding:10px 0;">
						<a href="/app/productInfo2.jhtml" class="pro-name">活力胶原蛋白蚕丝面膜</a>
					</div>
				</div>
			</div>
		</div>
    	<jsp:include page="/WEB-INF/app/include/footer.jsp"/>
  </body>
</html>
