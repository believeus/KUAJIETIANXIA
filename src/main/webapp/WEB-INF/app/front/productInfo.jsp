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
			<span class="vipcenter">
				<a href="http://no77520.web03.mzserver.net/ldq/manage/main.php" title="会员中心" target="_blank">会员中心</a>
			</span>
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
		
		<p class="pro-title">活力胶原蛋白多肽粉</p>
		<div style="width:50%;margin:0 auto 50px;">
			<img src="/static/public/images/ht.png" width="100%"/>
		</div>
		<div style="">
			<p class="pro-dis">
				<span>产品介绍</span>
			</p>
		</div>
		<div class="pro-contents">
			<p>产品品质背景</p>
			<p>特性一：活力胶原蛋白多肽粉是武汉静悟绿色保健研究所独家研制生产的高科技产品。 </p>
			<p>特性二：本品是从深海无污染的鱼鳞中提取的高纯度胶原蛋白。深海鱼鳞属于角质胶原蛋白，由于在鱼鳞中没有血管，因此有效避免了动物的基因传导，也避免了在动物饲养过程中饲料中的添加剂、抗生素等的残留影响，因此鱼鳞属于相对安全的胶原蛋白原料。</p> 
			<p>特性三：在低温下应用先进的生物酶水解技术得到小分子活性肽， 经过喷雾干燥得到的白色超微细粉， 易溶且完全溶于水， 口服进入人体后， 非常容易被快速彻底消化吸收， 发挥多种功效。 </p>
			<p>特性四：活力胶原蛋白多肽粉不是中药， 也不是西药， 却是人体不可缺少的生物活性物质， 本品不含任何添加剂， 长期服用无任何副作用。</p>
			<p>胶原蛋白和胶原蛋白多肽的区别（产品优质性）</p>
			<p>1）.	目前市场上销售的蛋白粉，多为大豆蛋白粉，是属于植物蛋白，其氨基酸组成与人体差异较大，生物利用率低。</p>
			<p>2）.	感恩活力胶原蛋白多肽是小分子活性肽，为全溶全吸收型，生物利用度高。</p>
			<p>3）.	原料来源于深海的罗非鱼、三文鱼等的鱼鳞，无污染，无疫病，比从牛皮、牛骨、猪皮等提取的胶原多肽更安全放心。</p>
			<p>4）.	生产工艺先进，不采用高温、酸、碱提取，而是采用低温生物酶解技术，使氨基酸结构不被破坏，保持较高的生物活性。</p>
			<p>5）.	感恩活力胶原蛋白多肽是100%纯度的胶原多肽粉，不添加任何辅料、防腐剂、香精，不含胆固醇，采用无菌人工封装，可长期使用，安全可靠。</p>
			<p>6）.	可以内服和外用，而市场上同类产品因大多含有添加剂，不宜外用。</p>
			<p>7）.	胶原蛋白只能溶于热水，不溶于冷水，而胶原蛋白多肽可以在冷水或热水中都能完全溶解。</p>
			<p>8）.	耐酸碱，耐高温性能好，200度加热也不会沉淀。</p>
			<p>9）.	与人的皮肤亲和力强，可以直接透皮吸收，吸收率高达95%-100%，而胶原蛋白在皮肤表面形成一层膜，被皮肤吸收只有2.5%左右。</p>
			<p>10）.多肽可以不经过胃消化，直接被小肠吸收为人体所利用，而不需要分解成氨基酸后才被吸收。</p>
			<p>11）.小分子活性肽没有抗原性，不会引起过敏反应，因此适宜长期服用。</p>
			<p>12）.感恩活力胶原蛋白多肽粉为小分子量胶原蛋白， 由天然材料提取， 不含防腐剂、调味剂、香料， 变性温度低，胶原蛋白纤维易散开， 分子量也很低， 同其他胶原蛋白相比， 消化吸收快， 不含脂肪成分。</p> 
			<p>13）.活力胶原蛋白多肽粉不含任何添加成分。它具有一定程度的抑制癌细胞的功能和促进血液凝固止血的效果，还能对侵入体内的病原体生成抗体， 从而增进身体免疫力。</p>
			<p>14）.过量服用时， 可作为氮分解物， 以尿和汗液的形式排出体外， 不会在体内形成堆积。并且， 同其他食品或材料一起服用时，不会破坏营养源。 </p>
			<p>15）.此外， 感恩活力胶原蛋白多肽粉不仅具有很好保湿功效， 还易于皮肤吸收， 且热稳定性高， 可达120°C。</p>
			<p>16）.血液检查结果表明， 每日摄取鱼鳞胶原蛋白的人同摄取前相比， 血液中氨基酸的浓度明显提高。这是因为，人体依靠血液吸收的氨基酸再造胶原蛋白。因此， 骨质疏松、变形性关节炎、过敏性皮炎患者或花粉过敏患者， 若长期摄取胶原蛋白， 可增强各组织功能， 有效改善症状。</p> 
			<p>17）.与传统化妆品中的胶原蛋白相比， 活力胶原蛋白多肽粉保湿效果更好， 更易于皮肤吸收。此外， 采用口服方式，可使身体更加年轻。如今， 定量摄取胶原蛋白粉， 已成为健康生活中不可或缺的一部分。尤其在即将到来的高龄化社会， 它更是一种具有特殊意义的绿色保健营养品。 </p>
			<p>18）.动物和人体实验充分证明，胶原蛋白多肽能够增加机体的耐力，服用的人在运动过后测定体内肌酸含量下降，减少了疲劳感，充分证明有抗疲劳作用，这对年老体弱的中老年人及平时工作压力过大和容易产生疲劳感的人们无疑是个最佳选择。</p>
			<p>19）.新近国外权威医学研究证实：胶原蛋白多肽具有增智功能，可显著增加细胞活力、加快大脑运算速度，使人更聪明，思维更敏捷，可以有效防止老年痴呆。</p>
		</div>
    	<jsp:include page="/WEB-INF/app/include/footer.jsp"/>
  </body>
</html>
