<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-产品详情</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport" />
	<meta content="no" name="apple-touch-fullscreen" />
	<meta name="format-detection" content="telephone=no" />
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<link rel="shortcut icon" type="image/x-icon" href="/static/public/images/favicon.ico" />
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<style type="text/css">
		body{
			font-family:microsoft yahei;
		}
		.kjtx-product{
			width:1200px;
			height:auto;
			margin:0 auto;
			overflow:hidden;
		}
		.kjtx-product-img{
			width:630px;height:335px;float:left;
		}
		.kjtx-product-name{
			width:500px;height:335px;float:left;margin-left:60px;font-size: 16px;
		}
		.kjtx-product-name td {
		    line-height: 45px;
		}
		.kjtx-product-name th {
		    color: #aaa;
		}
		.kjtx-product-content {
		    background: none repeat scroll 0 0 #f8f8f8;
		    margin: 30px 0;
		    padding: 20px 15px;
		}
		.product-content-title{
			border-left:5px solid #922D2C;
			color:#922D2C;
			font-size:20px;
			font-weight:bold;
			padding-left:20px;
		}
		.product-introduction{
			
		}
		.product-introduction-p {
		    font-size: 14px;
		    line-height: 22px;
		    margin: 20px 0;
		    padding: 0 5px;
		    color: #555;
		}
	</style>
  </head>
  
  <body>
    	<jsp:include page="/WEB-INF/include/header.jsp" />
    	<img src="/static/public/images/cy.jpg" width="100%" style="margin-top: -1px;"/>
    	<p class="kjtx-main-title">
	   		<span style="border-bottom: 2px solid #922d2c;"><a href="/industryList.jhtml" style="color:#666;">集团产业</a></span>
	   		<span style="font-size:16px;font-weight:normal;position: relative;top: -3px;">
	   			&gt;&gt;<a href="/industryPartners.jhtml?industryId=${product.partners.industry.id }" style="color:#666;">${product.partners.industry.name }</a>
   			</span>
	   		<span style="font-size:16px;font-weight:normal;position: relative;top: -3px;">
	   			&gt;&gt;<a href="/kjtxabstract.jhtml?id=${product.partners.id }" style="color:#666;">${product.partners.name }</a>
   			</span>
	   		<span style="font-size:16px;font-weight:normal;position: relative;top: -3px;">&gt;&gt;产品详情</span>
		</p>
		<div class="kjtx-product">
			<div style="width:1200px;height:auto;overflow:hidden;">
				<div class="kjtx-product-img">
					<img src="/${product.imgpath }?w=630&h=335" width="630" height="335"/>
				</div>
				<div class="kjtx-product-name">
					<table>
						<tr>
							<th>商品名称：</th>
							<td>${product.name}</td>
						</tr>
						<tr>
							<th>经营公司：</th>
							<td>${product.partners.name}</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="kjtx-product-content">
				<p class="product-content-title">产品介绍</p>
				<div class="product-introduction">
					<p class="product-introduction-p">${product.descption }</p>
				</div>
			</div>
		</div>
    	<jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
