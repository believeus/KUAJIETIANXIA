<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>集团公告</title>
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/include/header.jsp" />
    <div class="kjtx-main">
    	<p class="kjtx-main-title">集团公告<a href="#" style="color: #555;font-size: 18px;">&gt;&gt;集团公告</a></p>
    	<img src="/static/public//images/zxImg.jpg" width="1210"/>
    	<p class="content-title">1978年8月，习仲勋与参加暑期社会实践活动的习近平在海南。<span class="title-date" style="font-weight:normal">2014-12-12 03:31</span></p>
    	<div class="zx-content">
    		京华时报讯（记者田超）昨天，由人民出版社主办的《改革开放元勋画传丛书》出版座谈会在京举行。该套丛书第一辑包括了万里、习仲勋、谷牧等老一辈领导人的画传，万伯翱、习远平、刘燕远等亲属代表受邀出席。

据出版方介绍，该丛书聚焦的是改革开放初期的历史功勋人物。《画传丛书》将分辑分册出版，第一辑包括万里、习仲勋、谷牧、任仲夷、项南等5位改革元勋的画传。丛书中的《谷牧画传》《任仲夷画传》《项南画传》已于9月相继推出，《习仲勋画传》于近日出版发行，《万里画传》待出版。其中，《习仲勋画传》由央视记者、国家一级编导夏蒙和陕西富平县党史研究室主任王小强合作编写。画传记载了习仲勋同志从幼年到晚年的人生经历，还有习近平随父亲下乡调研的图片等，部分照片为首次公开发表。

夏蒙透露，在《习仲勋画传》编写过程中曾向习仲勋的夫人请教，“我们有张图片拿不准，就请教齐心大姐，她告诉我图中人是程砚秋的夫人果素瑛，还有一位是程派青衣王吟秋，我的困惑一下就解决了。”
    	</div>
    </div>
    <jsp:include page="/WEB-INF/include/footer.jsp" />
    <style type="text/css">
		.flex-viewport{
			width: 1340px;
			margin:0 auto;
		}
		.slides img {
		    height: 210px;
		}
		.bx-viewport{
			height:160px !important;
		}
		.active li a{
			color:#dedede !important;
		}
		.active li a:hover{
			color:#8E2C2D !important;
		}
		.current{
			color:#922D2C !important;
		}
	</style>
  </body>
</html>
