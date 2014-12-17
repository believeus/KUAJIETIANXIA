<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-公司产品</title>
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
  </head>
  
  <body>
    	<jsp:include page="/WEB-INF/include/header.jsp" />
    	<img src="/static/public/images/11.jpg" alt="" width="100%" />
    	<div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
			<div style="line-height: 65px;height: 55px;">
				<div style="float: left;font-size: 23px;font-weight: bold;"><a style="color: #434343;" href="">集团产业</a></div>
				<div style="float: left;font-size: 18px;margin: 0 8px;">>></div>
				<div style="float: left;font-size: 16px;"><a style="color: #434343;" href="">银德财富</a></div>
				<div style="float: left;font-size: 18px;margin: 0 8px;">>></div>
				<div style="float: left;font-size: 16px;"><a style="color: #922D2C;" href="/kjtx_product.html">公司产品</a></div>
			</div>
			<div style="width: 1200px;height: auto;margin: 0 auto;">
				<div style="border-bottom: 2px solid #AEAEAE;"></div>
				<div style="border-bottom: 4px solid #922D2C;width: 92px;margin: -3px 0px 10px;"></div>
			</div>
			<div style="width: 345px;height: 35px;margin: 10px 0px 0px 73%;text-align: center;font-size: 16px;">
				<div style="float: left;width: 130px;border: 1px solid #aeaeae;line-height: 30px;">
					<a style="color: #434343;" href="/kjtxabstract.jhtml?id=${partners.id }">公司简介</a>
				</div>
				<div style="float: left;width: 130px;border: 1px solid #922d2c;line-height: 30px;background-color: #922D2C;">
					<a style="color: #FFFFFF;" href="/kjtxproduct.jhtml">公司产品</a>
				</div>
			</div>
			<div style="width: 1200px;height: auto;margin: 10px auto;">
				<div style="height: 232px;margin: 0 auto;">
					<c:forEach items="${products }" var="product">
					
					<div style="float: left;width: 378px;height: 200px;border: 1px solid #AEAEAE;margin: 15px  0px;">
						<div style="float: left;margin: 20px 20px;">
							<a href="#"><img src="/${product.imgpath }?w=100&h=100" /></a>
						</div>
						<div style="float: left;color: #434343;margin-left: 10px;width: 55%">
							<div style="font-size: 20px;width: 100%;line-height: 55px;">${product.name }</div>
							<div style="font-size: 16px;width: 100%;line-height: 25px;">
								${product.descption }
							</div>
							<div style="font-size: 14px;background-color: #922D2C;margin-top: 5%;text-align: center;width: 40%;line-height: 25px;margin-left: 52%;">
								<a style="color: #FFFFFF;" href="">更多...</a>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			<div style="width: 100%;height: 50px;background-color: #414141;text-align: center;border-radius: 3px;margin: 30px auto;">
				<div style="line-height: 50px;font-size: 18px;font-weight: bold;">
					<a style="color: #C9C9C9;" href="">查看更多...</a>
				</div>
			</div>
	    </div>
    	<jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
