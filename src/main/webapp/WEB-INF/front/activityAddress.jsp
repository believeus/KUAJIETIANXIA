<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'activityAddress.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="/static/public/js/jquery.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=2qkpDitMlFIilEPKy62fiWDe"></script>
  </head>
  <script type="text/javascript">
//百度地图API功能
	$(function(){
		// 百度地图API功能
		function G(id) {
		    return document.getElementById(id);
		}

		var map = new BMap.Map("l-map");
		map.centerAndZoom("洪山区",12);                   // 初始化地图,设置城市和地图级别。
		map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
		map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
		var gc = new BMap.Geocoder();    
		map.addEventListener("click", function(e){        
		    var pt = e.point;
		    gc.getLocation(pt, function(rs){
		        var addComp = rs.addressComponents;
		        $("#suggestId").val(addComp.province + ""+ addComp.city + "" + addComp.district + "" + addComp.street + "" + addComp.streetNumber);
		        //alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
		    });        
		});
		
		var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
		    {"input" : "suggestId"
		    ,"location" : map
		});

		ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
		var str = "";
		    var _value = e.fromitem.value;
		    var value = "";
		    if (e.fromitem.index > -1) {
		        value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		    }    
		    str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
		    
		    value = "";
		    if (e.toitem.index > -1) {
		        _value = e.toitem.value;
		        value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		    }    
		    str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
		    G("searchResultPanel").innerHTML = str;
		});

		var myValue;
		ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
		var _value = e.item.value;
		    myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		    G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
		    setPlace();
		});

		function setPlace(){
		    map.clearOverlays();    //清除地图上所有覆盖物
		    function myFun(){
		        var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
		        map.centerAndZoom(pp, 18);
		        map.addOverlay(new BMap.Marker(pp));    //添加标注
		    }
		    var local = new BMap.LocalSearch(map, { //智能搜索
		      onSearchComplete: myFun
		    });
		    local.search(myValue);
		}
		
		
		
	});
  </script>
  
  <body>
   <div id="allmap"></div>
	<div id="r-result" style="height:300px;width:200px;padding-left:40px;margin-bottom:20px;">
						<font color="red">*</font>
						<input type="text" id="suggestId" name="address" size="20" value="百度" style="width:345px;height:35px;line-height:35px;"/>
					</div>
					<div id="searchResultPanel" style="display: none;width:150px;height:auto;"></div>
					<div id="l-map" style="width:auto;height:350px;margin-left:40px;"></div>
  </body>
</html>
