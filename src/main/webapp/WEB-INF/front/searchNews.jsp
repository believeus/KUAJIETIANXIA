<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
			height:70px;
		}
		.searchBtn{
			background:#922D2C;
			color:#fff;
			border:1px solid #922D2C;
			padding:5px 25px;
			font-weight:bold;
			font-family: microsoft yahei;
			height:35px;
			margin-left:12px;
		}
		.search-text{
			border: 1px solid #aeaeae;
		    height: 35px;
		    text-indent: 15px;
		    width: 800px;
		    margin-left:10px;
		}
		.search-select{
			border: 1px solid #aeaeae;
		    height: 35px;
		    text-indent: 10px;
		    width: 287px;
		    color: #555;
		}
		.search-select option{
			text-indent: 19px;
		}
		.search-data{
			font-family: microsoft yahei;
		    font-size: 15px;
		    margin: 8px 0;
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
       	<form action="/search.jhtml" method="post">
       		<div class="search-form">
       			<select name="item" class="search-select">
       				<option value="news">新闻搜索</option>
       				<option value="product">产品搜索</option>
       				<option value="company">公司搜索</option>
       			</select>
       			<input type="text" name="keywords" placeholder="请输入关键字" class="search-text">
       			<input type="submit" value="GO" class="searchBtn">
       			<p class="search-data">找到<span style="color:#922D2C;">${size }</span>条结果</p>
       		</div>
       	</form>
       		<div class="search-content">
       			<c:forEach var="news" items="${news}">
       				<div class="content-list">
       				<p style="margin:10px 0;">
       					<a href="/zixunContent.jhtml?id=${news.id}"><font class="keywordsColor"></font>${news.title}</a>
   					</p>
       				<div class="content-list-desc">
       					<c:choose>
    						 <c:when test="${fn:length(news.content) > 100}">
     							<c:out value="${fn:substring(news.content, 0, 100)}......" />
    						 </c:when>
     						<c:otherwise>
      							<c:out value="${news.content}" />
    						 </c:otherwise>
   						 </c:choose>
       				</div>
       				<p class="search-date">发布时间：${news.editTime}</p>
       			</div>
       			</c:forEach>
       			
       		</div>
		</div>
      <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
