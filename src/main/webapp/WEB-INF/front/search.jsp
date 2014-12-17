<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-站内搜索</title>
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<style type="text/css">
		body{
			font-family: microsoft yahei;
		}
		.search-form{
			width:1200px;
			height:90px;
		}
		.searchBtn{
			background:#922D2C;
			color:#fff;
			border:1px solid #922D2C;
			padding:5px 25px;
			font-weight:bold;
			font-family: microsoft yahei;
			height:35px;
		}
		.search-text{
			border: 1px solid #aeaeae;
		    height: 35px;
		    text-indent: 15px;
		    width: 800px;
		}
		.search-select{
			border: 1px solid #aeaeae;
		    height: 35px;
		    text-indent: 10px;
		    width: 287px;
		}
		.search-data{
			font-family: microsoft yahei;
		    font-size: 15px;
		    margin: 5px 0;
		    padding-right: 20px;
		    text-align: right;
		}
		.search-content{
			background:#FBFBFB;
			border:1px solid #D7D7D7;
			width:1197px;height:auto;overflow:hidden;
			padding:20px 0;
		}
		.content-list{
			width:1065px;
			height:auto;
			margin:0 auto 30px;
		}
		.content-list-desc{
			font-family: microsoft yahei;
		    font-size: 15px;
		    line-height: 25px;
		}
		.content-list a {
		    color: #000;
		    font-size: 18px;
		    text-decoration: underline;
		    font-family: microsoft yahei;
		}
		.search-date{
			font-family: microsoft yahei;
			margin:10px 0; 
			font-size:13px;
		}
		.keywordsColor{
			color:#922D2C;
		}
	</style>
  </head>
  
  <body>
      <jsp:include page="/WEB-INF/include/header.jsp" />
       <img src="/static/public/images/11.jpg" alt="" width="100%" />
		<p class="kjtx-main-title">
	   		<span style="border-bottom: 2px solid #922d2c;">站内搜索</span>
		</p>
       <div class="center" style="width: 1200px; height: auto;margin: 0 auto 50px;overflow: hidden;">
       		<div class="search-form">
       			<select name="items" class="search-select">
       				<option value="1">新闻搜索</option>
       				<option value="2">产品搜索</option>
       				<option value="3">公司搜索</option>
       			</select>
       			<input type="text" name="keywords" placeholder="国家" class="search-text">
       			<input type="button" value="GO" class="searchBtn">
       			<p class="search-data">找到<span style="color:#922D2C;">210502</span>条结果</p>
       		</div>
       		<div class="search-content">
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       			<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="#"><font class="keywordsColor">国家</font>统计局关于2014棉花产量的公告</a>
   					</p>
       				<div class="content-list-desc">
       					新华网北京12月16日电  据新华社“新华视点”微信报道，13日出席南京大屠杀死难者国家公祭仪式后，习近平总书记走进侵华日军南京大屠杀遇难同胞纪念馆，参观《人类的浩劫——侵华日军南京大屠杀史实展》。据纪念馆馆长朱成山介绍，原定45分钟的参观行程，延长到了72分钟，总书记先后提出68个问题。
       				</div>
       				<p class="search-date">发布时间：2014.12.17</p>
       			</div>
       		</div>
		</div>
      <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
