<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html{width: 100%;height: 100%; margin:0;font-family:"微软雅黑";}
		#l-map{height:300px;width:100%;}
		#r-result{width:100%;}
	</style>
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=2qkpDitMlFIilEPKy62fiWDe"></script>
	<script type="text/javascript">
		$(function(){
			// 百度地图API功能
			var map = new BMap.Map("l-map");            // 创建Map实例
			map.centerAndZoom(new BMap.Point(114.31431662552, 30.570363859501), 12);
			var local = new BMap.LocalSearch(map, {
				renderOptions: {map: map, panel: "r-result"}
			});
			local.search("武汉万达威斯汀酒店");
			
			var height = window.screen.height;
			//alert(height);
			//document.getElementById("l-map").style.height=height;
			$("#l-map").css({"height":height});
		});
	
	</script>
	<title>武汉万达威斯汀酒店</title>
</head>
<body>
	<div id="l-map"></div>
	<!-- <div id="r-result"></div> -->
</body>
</html>


