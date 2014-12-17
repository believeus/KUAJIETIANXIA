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
<<<<<<< Updated upstream
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
=======
    	<img src="/static/public/images/11.jpg" width="100%" style="margin-top: -1px;"/>
    	<p class="kjtx-main-title">
	   		<span style="border-bottom: 2px solid #922d2c;">产品详情</span><span style="font-size:16px;font-weight:normal;position: relative;top: -3px;">&gt;&gt;天福太岁系列</span>
		</p>
		<div class="kjtx-product">
			<div style="width:1200px;height:auto;overflow:hidden;">
				<div class="kjtx-product-img">
					<img src="/static/public/images/product.png" />
				</div>
				<div class="kjtx-product-name">
					<table>
						<tr>
							<td colspan="2" style="font-weight: bold; font-size: 20px;">SANDY胶原蛋白免费试用</td>
						</tr>
						<tr>
							<th>商品名称：</th>
							<td>SANDY胶原蛋白</td>
						</tr>
						<tr>
							<th>所属品牌：</th>
							<td>SANDY</td>
						</tr>
						<tr>
							<th>试用数量：</th>
							<td>10份</td>
						</tr>
						<tr>
							<th>商品价值：</th>
							<td>398元/份</td>
						</tr>
						<tr>
							<th>商品类型：</th>
							<td>面膜</td>
						</tr>
						<tr>
							<th>经营公司：</th>
							<td>跨界天下/天福太岁系列产品</td>
						</tr>
					</table>
>>>>>>> Stashed changes
				</div>
			</div>
			<div class="kjtx-product-content">
				<p class="product-content-title">产品介绍</p>
				<div class="product-introduction">
					<p class="product-introduction-p">1、可以预防心血管病。研究表明，胶原蛋白可以降低血甘油三酯和胆固醇，并可增高体内某些缺乏的必需微量元素，从而使其维持在一个相对正常的范围之内，是一种理想的减肥降血脂食品。此外，胶原蛋白在协助机体排出铝质，减少铝质在体内聚集方面也有独特之处。铝对人体有害，研究表明，日前逐渐增多的老年痴呆症与铝的摄入量有关，同时胶原蛋白有加速血红蛋白和红细胞生成的功效，它具有改善循环、对冠心病、缺血性脑病有利。</p>
					<p class="product-introduction-p">2、可以作为一种补钙食品。胶原蛋白的特征氨基酸羟基脯氨酸是血浆中运输钙到骨细胞的运载工具，骨细胞中的骨胶原是羟基磷灰石的黏合剂，它与羟摹磷灰石共同构成了骨骼的主体。因此，只要摄入足够的胶原蛋白，就能保证正常机体钙质的摄入量，胶原蛋白可成制成补钙的保健食品。</p>
					<p class="product-introduction-p">3、可以为特殊人群使用。妇科疾病的根源来自于内分泌失调，胶原蛋白能够改善妇科疾病的困扰，而更年期的妇女更需要胶原蛋白供给身体所需，使得更年期妇女能够更轻松面对各种不适。</p>
					<p class="product-introduction-p">4、胶原蛋白中含有大量甘氨酸，在人体内不仅参与合成胶原，而且还是大脑细胞中是一种中枢神经抑制性递质，以产生对中枢神经的镇静作用，对焦虑症、神经衰弱等有良好的治疗作用胶原蛋白食品，在胃里可以抑制蛋白质因胃酸作用引起的凝聚作用，从而有利于食物的消化，还有抑制胃酸和胃原酶分泌的作用，可减轻胃溃疡患者疼痛，促进胃溃疡愈合。</p>
					<p class="product-introduction-p">5、胶原蛋白是身体免疫作用中负责重要功能的阿米巴细胞清扫异物的感知器，因此对预防疾病很有帮助。可提高免疫机能、抑制癌细胞、活化细胞机能、活化筋骨、治疗关节炎及酸痛。</p>
					<p class="product-introduction-p">6、防止皮肤老化、去皱纹。随着年龄的增长，胶原蛋白会逐渐的流失，从而导致支撑皮肤的胶原肽键和弹力网断裂，其螺旋网状结构随即被破坏，皮肤组织被氧化、萎缩、塌陷，肌肤就会出现干燥、皱纹、松弛无弹性等衰老现象，所以，女性补充胶原蛋白是一种延衰的必须</p>
				</div>
			</div>
		</div>
    	<jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
