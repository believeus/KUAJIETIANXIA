<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-公司简介</title>
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
	</style>
  </head>
  
  <body>
    	<jsp:include page="/WEB-INF/include/header.jsp" />
    	<img src="/static/public/images/11.jpg" alt="" width="100%" />
    	<div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
			<div style="line-height: 65px;height: 55px;">
				<div style="float: left;font-size: 23px;font-weight: bold;"><a style="color: #434343;" href="/industryList.jhtml">集团产业</a></div>
				<div style="float: left;font-size: 18px;margin: 0 8px;">&gt;&gt;</div>
				<div style="float: left;font-size: 16px;"><a style="color: #434343;" href="/kjtxabstract.jhtml?id=${partners.id }">${partners.name }</a></div>
				<div style="float: left;font-size: 18px;margin: 0 8px;">&gt;&gt;</div>
				<div style="float: left;font-size: 16px;">公司简介</div>
			</div>
			<div style="width: 1200px;height: auto;margin: 0 auto;">
				<div style="border-bottom: 2px solid #AEAEAE;"></div>
				<div style="border-bottom: 4px solid #922D2C;width: 92px;margin: -3px 0px 10px;"></div>
			</div>
			<div style="width: 345px;height: 35px;margin: 10px 0px 0px 73%;text-align: center;font-size: 16px;">
				<div style="float: left;width: 130px;border: 1px solid #922D2C;line-height: 30px;background-color: #922D2C;">
					<a style="color: #FFFFFF;" href="/kjtxabstract.jhtml?id=${partners.id}">公司简介</a>
				</div>
				<div style="float: left;width: 130px;border: 1px solid #aeaeae;line-height: 30px;">
					<a style="color: #434343;" href="/kjtxproduct.jhtml?partnerId=${partners.id }">公司产品</a>
				</div>
			</div>
			<div style="width: 1200px;height: auto;margin: 10px auto;">
				<div style="width: 58%;height: 210px;margin: 40px auto 10px;">
					<div style="font-size: 20px;font-weight: bold;line-height: 50px;margin: 0 auto;text-align: center;">
						${partners.name}
					</div>
					<div style="margin: 10 auto;">
						<div style="float: left;margin: 20px 20px;">
							<img src="/${partners.logo }?w=250&h=250" width="200" height="100"/>
						</div>
						<div style="float: left;color: #434343;margin-left: 20px;">
							<div style="font-size: 15px;line-height: 30px;">公司类型：${partners.companyTye }</div>
							<div style="font-size: 15px;line-height: 30px;">公司法人：${partners.legalMan}</div>
							<div style="font-size: 15px;line-height: 30px;">注册资金：${partners.regCapital }万元整</div>
							<div style="font-size: 15px;line-height: 30px;">经营范围：${partners.bizScope }</div>
							<div style="font-size: 15px;line-height: 30px;">公司地址：${partners.address}</div>
						</div>
					</div>
				</div>
				<div style="width: 60%; margin-top: 0px; margin-bottom: 0px; margin-left: 160px;">
					<img alt="" src="/static/public/images/line.jpg" />
				</div>
				<p style="width: 1000px; margin: 0px auto; font-size: 16px; font-weight: bold;">公司介绍:</p>
				<div style="font-size: 16px;width: 77%;height: auto;color: #434343;margin: 40px auto 10px;">
					${partners.introduction}
				</div>
				<c:if test="${partners.img1 ne null }">
					<div style="width: 1000px;height: auto;margin: 0 auto;text-align:center;margin-bottom:20px;">
					  <img alt="" src="/${partners.img1 }" />
					</div>
				</c:if>
				<c:if test="${partners.img2 ne null }">
					<div style="width: 1000px;height: auto;margin: 0 auto;text-align:center;margin-bottom:20px;">
					 <img alt="" src="/${partners.img2 }" />
					</div>
				</c:if>
				<c:if test="${partners.img3 ne null }">
					<div style="width: 1000px;height: auto;margin: 0 auto;text-align:center;margin-bottom:20px;">
					  <img alt="" src="/${partners.img3 }" />
					</div>
				</c:if>
				
				<div style="font-size: 16px;width: 77%;height: 100px;color: #434343;margin: 40px auto 10px;">
					本公司已经获得武汉股权托管交易中心的认可，成为该中心推荐会员，我们有多年丰富经验的业务团队，
					专享的尊贵礼遇，竭诚为您在区域性股权市场上市服务。
				</div>
			</div>
	    </div>
    	<jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
