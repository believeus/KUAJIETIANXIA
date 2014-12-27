<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.believeus.cn/jstl/html" prefix="html" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-公司产品</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<link rel="stylesheet" href="/static/public/css/zalki_hover_img.css" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/static/public/js/common.js"></script>
	<script type="text/javascript" src="/static/public/js/input.js"></script>
	<!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<style type="text/css">
		body{
			font-family:microsoft yahei;
		}
		.product-name{
			color:#922D2C;font-size:16px;font-weight:bold;
		}
		.product-name:hover{
			text-decoration: underline;
		}
	</style>
  </head>
  
  <body>
    	<jsp:include page="/WEB-INF/include/header.jsp" />
    	<img src="/static/public/images/11.jpg" alt="" width="100%" />
    	<div class="center" style="width: 1200px; height: auto;margin: 0 auto;overflow: hidden;">
			<div style="line-height: 65px;height: 55px;">
				<div style="float: left;font-size: 23px;font-weight: bold;"><a style="color: #434343;" href="/industryList.jhtml">集团产业</a></div>
				<div style="float: left;font-size: 18px;margin: 0 8px;">>></div>
				<div style="float: left;font-size: 16px;"><a style="color: #434343;" href="/kjtxabstract.jhtml?id=${partners.id }">${partners.name }</a></div>
				<div style="float: left;font-size: 18px;margin: 0 8px;">>></div>
				<div style="float: left;font-size: 16px;color: #922D2C;">公司产品</div>
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
			<div style="width: 1200px;height: auto;margin: 10px auto;overflow: hidden;min-height:330px;">
				<div style="height: auto;margin: 0 auto;">
					<c:forEach items="${products }" var="product">
						<div style="float: left;width: 378px;height: 150px;border: 1px solid #AEAEAE;margin: 15px  10px;">
							<div style="float: left;margin: 20px 20px;">
								<a href="/productDetail.jhtml?productId=${product.id }"><img src="/${product.imgpath }?w=110&h=110"/></a>
							</div>
							<div style="float: left;color: #434343;margin-left: 10px;width: 55%">
								<div style="font-size: 20px;width: 100%;line-height: 55px;">
									<a class="product-name" href="/productDetail.jhtml?productId=${product.id }">${product.name }</a>
								</div>
								<div style="font-size: 15px;width: 100%;line-height: 25px;" title="${product.descption }">
									<%-- <html:html num="25" value="${product.descption }"></html:html> --%>
									${fn:substring(product.descption,0,25) }
									<c:if test="${fn:length(product.descption) >25 }">...</c:if>
								</div>
								<div style="font-size: 14px;background-color: #922D2C;margin-top: 5%;text-align: center;width: 40%;line-height: 25px;margin-left: 52%;">
									<a style="color: #FFFFFF;" href="/productDetail.jhtml?productId=${product.id }">详情...</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
    	<jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
