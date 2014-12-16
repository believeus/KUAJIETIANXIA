<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<title>跨界天下-产业详情</title>
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
			.com-list > div {
			    margin-bottom: 10px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/include/header.jsp" />
		<img src="/static/public/images/11.jpg" alt="" width="100%" />
		<div style="margin: 0 auto;width: 1200px;">
			<p class="kjtx-main-title">
	    		<span style="border-bottom: 2px solid #922d2c;">集团产业</span><span style="font-size:15px;font-weight:normal;">&gt;&gt;生态产业</span>
	   		</p>
			<div style="text-indent: 40px;width: 1000px;height:200px;margin: 0 auto;font-family: microsoft yahei;font-size: 15px;line-height: 30px;">
				<span>介绍：</span>当一个经济主题变成全球热点时，
				好莱坞从来没有落后过。在未来背景的惊悚片《环形使者》(Looper)中， 布鲁斯•威利斯(Bruce Willis)
				饰演的已退休杀手从2074年穿越回到过去。在遇到年轻的自己后，他建议 他不要再学法语，而要到中国去。在
				未来，上海是世界的中心，人民币是首选货币。 尽管时间旅行和会飞的汽车可能不会很快出现，但至少有一点似
				乎比较接近现实，电影里的坏人并非唯一 急着搞到几张人民币的人。正如德意志银行(Deutsche Bank)所说的，
				“中国资本时代”即将到来，全球金融 格局可能会发生彻底变化。几名分析人士以及一位中国高官表示，不仅资金正
				更自由地从中国流出，而且在 市场因素以及中国宏大计划的推动下，资金流动的渠道和目的地正发生重大变化。 
			</div>
			<span style="margin-left: 95px;font-size:15px;">生物产业/系列公司</span>
			<div style="width: 1005px;height:310px;margin: 10px auto 50px;" class="com-list">
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
				<div style="float: left;"><a href="/kjtxabstract.jhtml"><img src="/static/public/images/firefox.png"/></a></div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
	</body>
</html>
