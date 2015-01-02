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
    <title>跨界天下-主打产品详情</title>
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
			margin:0 auto 30px;
		}
		.pro-dis{
			background:#F8F8F8;
			color:#932D2B;
			padding:20px 0;
		}
		.pro-dis span {
		    border-left: 3px solid #932d2b;
		    color: #932d2b;
		    font-size: 16px;
		    font-weight: bold;
		    margin-left: 20px;
		    padding-left: 20px;
		}
		.pro-contents{
			padding:0 10px;
			margin-bottom: 70px;
		}
		.pro-contents p {
		    font-family: microsoft yahei;
		    font-size: 15px;
		    line-height: 23px;
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
		
		<p class="pro-title">活力胶原蛋白蚕丝面膜</p>
		<div style="width:50%;margin:0 auto 50px;">
			<img src="/static/public/images/mm.jpg" width="100%"/>
		</div>
		<div style="">
			<p class="pro-dis">
				<span>产品介绍</span>
			</p>
		</div>
		<div class="pro-contents">
			<p>产品品质背景</p>
			<p>特性一：内含小于1000D的胶原蛋白，不同于市面普通的胶原蛋白面膜，vikki3D面膜里面含有的胶原蛋白小分子肽能够直接渗入肌肤真皮层，被吸收利用，使用效果更加明显。 </p>
			<p>特性二：安全、无副作用，进口原料提取的胶原蛋白，完全生物利用，无任何负作用，极少产生过敏现象，不刺激皮肤和眼睛，性质温和。</p> 
			<p>特性三：深度保湿、美白、紧致、抗衰老、祛斑。</p>
			<p>功效及作用</p>
			<p>蚕丝面膜对肌肤有极高的紧致提升作用，还可以使皮肤白净、滋润、光泽、富有弹性，对暗黄、暗哑、干纹、细纹、松弛的问题皮肤能明显改善，胶原蛋白是皮肤的主要成分，人体皮肤中72%是胶原蛋白，胶原蛋白在皮肤中构成弹力网，支撑皮肤锁住水分。女性20岁时胶原蛋白开始流失，25岁进入胶原蛋白流失高峰，40岁时胶原蛋白含量不到18岁的一半。胶原蛋白流失导致支撑皮肤的弹力网断裂，皮肤组织萎缩、塌陷，肌肤干燥、粗糙、松弛、皱纹、毛孔粗大、暗斑、色斑等衰老现象。VIKKI高分子纯胶原蛋白面膜独特的上下分体设计，立体剪裁，更加贴合面部轮廓，有助于肌肤有效地吸收精华液，使用效果更显著。保湿：海洋胶原蛋白肽富含亲水性的天然保湿因子，它于皮肤表面的蛋白质结合，可补充人体胶原蛋白、氨基酸，能涵养皮肤水份，使皮肤有着良好的亲和性。而且三螺旋结构能强劲锁住30倍水分，让皮肤时刻保持湿润、水嫩的状态！</p>
			<p>防皱：由于海洋胶原蛋白肽的分子机构和人体皮肤胶原蛋白相容性极好，所以能完全被皮肤吸收、填充在皮肤基质层之间，从而使皮肤丰满、皱纹舒展，真皮中丰满的胶原蛋白层，能迅速填补局部塌陷，将皮肤细胞撑起，改善松弛，收紧皮肤，减少深皱纹、平复细纹。同时提高皮肤密度，产生张力。</p>
			<p>修复：海洋胶原蛋白可以使皮肤柔软丰满富有弹性，润滑角质层，刺激皮肤微循环，促进皮肤新陈代谢，使皮肤光滑、亮泽、减少皱纹。胶原蛋白能直接渗入肌肤底层，且与周围组织的亲和性好，可协助细胞制造成胶原蛋白，促使皮肤细胞正常成长。同时，胶原蛋白本身还具有消炎和更新肌肤的作用</p>
			<p>营养：胶原蛋白对皮肤的渗透性强，可透过角质层与皮肤上皮细胞结合，参与和改善皮肤细胞的代谢，使皮肤中的胶原蛋白活性加强。它能保持角质层水分及纤维结构的完整性，改善皮肤细胞生存环境和促进皮肤组织的新陈代谢，增强血液循环，达到滋润皮肤的目的。</p>
			<p>亮肤：皮肤的光泽取决于含水量，胶原蛋白良好的保水能力使皮肤水润亮泽，散发健康的光彩。紧肤：胶原蛋白进入真皮组织后，可修复断裂、老化的弹力纤维网，增加皮肤紧密度，产生皮肤张力，缩小毛孔，使皮肤紧绷而富有弹性！</p>
			<p>淡斑：胶原蛋白能使细胞粘接更紧密，新生细胞速度加快，不给黑色素、毒素聚集藏身之地，令皮肤肤色白皙、色斑淡出。</p>
			<p>1、科学搭配有效成份，减少高效成份的浪费，真正提高美容效果。 运用生物基因工程技术，将HGH&成纤维细胞生长因子（FGF）及数种生长因子组合与透明质酸，抗氧化剂等有效成份以最佳量搭配组合，产生协同效应，大大提高各种成份的疗肤功效。</p>
			<p>2、高分子纯胶原蛋白蚕丝面膜适用于各种皮肤，能够补充皮肤的胶原蛋白，使皮肤柔软富有弹性。不同于传统洁净功效面膜产品的是，水晶胶原蛋白面膜采用其独特的生物胶原蛋白和其它营养成分，有效地补充皮肤的胶原蛋白成分，增加皮肤的水和作用。使用之后，你会发觉皮肤柔软，光泽，水嫩。</p>
			<p>3、高分子纯胶原蛋白水晶面膜采用高纯度深海鱼类小分子胶原蛋白等营养成分配制而成。 “引起皮肤衰老及一切问题的主因，都源于皮肤中胶原蛋白的流失。”——世界胶原蛋白之父布兰特（j•brandt）博士人体成分中有16%左右是蛋白质，胶原蛋白占体内蛋白质总量的30～40% ，故成年人体内约有3kg左右胶原蛋白，主要存在于皮肤肌肉、骨骼、牙齿、内脏（如胃、肠、心肺、血管与食道）、眼睛等处。胶原蛋白在皮肤中起着十分重要的作用，皮肤的生长、修复和营养都离不开它。胶原蛋白被喻为“骨中之骨，肤中之肤”，又被世界美容界人士称为“肌肤的软黄金”。可以说，它是真皮层强有力的后盾，对皮肤的作用不言而喻。它占人体的30%以上，它是构成皮肤的重要物质，它在整个皮肤中占约72%，其中在真皮组织中约占80%。简单的说，皮肤基本上就是由胶原蛋白构成的。所以，使用胶原蛋白面膜就是完全的天然的胶原蛋白补充，是女性美容活肤的最佳选择！</p>
		</div>
    	<jsp:include page="/WEB-INF/app/include/footer.jsp"/>
  </body>
</html>
