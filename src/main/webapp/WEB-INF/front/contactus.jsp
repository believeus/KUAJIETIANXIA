<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>联系我们</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport" />
	<meta content="no" name="apple-touch-fullscreen" />
	<meta name="format-detection" content="telephone=no" />
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=2qkpDitMlFIilEPKy62fiWDe"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<style type="text/css">
	body{
		font-size:12px;
		font-family: microsoft yahei;
	}
	a:hover{text-decoration:underline;color: #C20C0C;}
	.input1{
		border: 1px solid #a1a1a1;
	    border-radius: 2px;
	    color: #434343;
	    font-family: "microsoft yahei";
	    font-size: 14px;
	    height: 40px;
	    margin-bottom: 23px;
	    text-indent: 10px;
	}
	.input2{
		background-color: #922d2c;
	    border: 1px none #a1a1a1;
	    border-radius: 2px;
	    color: #ffffff;
	    cursor: pointer;
	    float: right;
	    font-family: "microsoft yahei";
	    font-size: 18px;
	    height: 45px;
	    margin-top: 30px;
	    width: 160px;
	}
	.textarea{
		width: 674px;
		height: 150px;
		border: 1px solid #A1A1A1;
		border-radius: 2px;
		text-indent: 10px;
		resize: none;
		overflow: hidden;
		font-family: "microsoft yahei";
		color: #434343;
		font-size: 14px;	
	}
</style>
<script type="text/javascript">
$(function(){
	$("#leavemsg").click(function(){
		
		if($("#username").val() ==""){
			alert("请输入姓名");
		}else if($("#email").val() == ""){
			alert("请输入邮箱");
		}else if (!$("#email").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
			alert("邮箱格式不正确");
		}else if($("#title").val() == ""){
			alert("请输入标题");
		}else if($("#content").val() == ""){
			alert("请输入内容");
		}else{
			$.ajax({
				type : "post",
				url : "/clientLeaveMsg.jhtml",
				dataType : "json",
				contentType:"application/x-www-form-urlencoded",
				data :{"username":$("#username").val(),"email":$("#email").val(),"title":$("#title").val(),"content":$("#content").val()} ,
				success : function(map) {
					alert(map.msg);
				}
			});
			alert("提交成功，等待审核!");
		}
	});
	
	/*  // 百度地图API功能
	function G(id) {
		return document.getElementById(id);
	}
	var map = new BMap.Map("l-map");
	//map.centerAndZoom("江汉区",12); // 初始化地图,设置城市和地图级别。
	map.centerAndZoom(new BMap.Point(114.31431662552, 30.570363859501), 12);
	map.enableScrollWheelZoom(); //启用滚轮放大缩小，默认禁用
	map.enableContinuousZoom(); //启用地图惯性拖拽，默认禁用
	var gc = new BMap.Geocoder();
	map.addEventListener("click", function(e){
	var pt = e.point;
	gc.getLocation(pt, function(rs){
	var addComp = rs.addressComponents;
	$("#suggestId").val(addComp.province + ""+ addComp.city + "" + addComp.district + "" + addComp.street + "" + addComp.streetNumber);
	//alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
	});
	});
	var ac = new BMap.Autocomplete( //建立一个自动完成的对象
	{"input" : "suggestId","location" : map});
	ac.addEventListener("onhighlight", function(e) { //鼠标放在下拉列表上的事件
	var str = "";
	var _value = e.fromitem.value;
	var value = "";
	if (e.fromitem.index > -1) {
		value = _value.province + _value.city + _value.district + _value.street + _value.business;
	}
	str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
	value = "";
	if (e.toitem.index > -1) {
		_value = e.toitem.value;
		value = _value.province + _value.city + _value.district + _value.street + _value.business;
	}
	str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
	G("searchResultPanel").innerHTML = str;
	});
	var myValue;
	ac.addEventListener("onconfirm", function(e) { //鼠标点击下拉列表后的事件
		var _value = e.item.value;
		myValue = _value.province + _value.city + _value.district + _value.street + _value.business;
		G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
		setPlace();
	});
	function setPlace(){
		map.clearOverlays(); //清除地图上所有覆盖物
	function myFun(){
		var pp = local.getResults().getPoi(0).point; //获取第一个智能搜索的结果
		map.centerAndZoom(pp, 18);
		map.addOverlay(new BMap.Marker(pp)); //添加标注
	}
	var local = new BMap.LocalSearch(map, { //智能搜索
		onSearchComplete: myFun
	});
		local.search(myValue);
	} */
	
});
</script>
  </head>
  
  <body>
     <jsp:include page="/WEB-INF/include/header.jsp" />
     <img src="/static/public/images/11.jpg" alt="" width="100%" />
     <div class="center" style="width: 1200px; height: auto;margin: 0 auto 50px;overflow: hidden;">
		<p class="kjtx-main-title">
	   		<span style="border-bottom: 2px solid #922d2c;">联系我们</span>
		</p>
		<div style="width: 1200px;height: auto;margin: 10px auto;overflow: hidden;">
			<div style="float: left;color: #434343;font-size: 16px;width: 450px;">
				<div style="margin: 30px auto;">
					<img src="/static/public/images/map.jpg" style="width: 100%;"/> 
					<!-- <div id="searchResultPanel" style="display: none;width:150px;height:auto;"></div>
					<div id="l-map" style="width:auto;height:350px;"></div>-->
				</div>
				<div style="line-height:30px;">咨询电话：027-65650999</div>
				<div style="line-height:30px;">邮箱：hbydcf@126.com</div>
				<div style="line-height:30px;">网址：http://www.kuajietianxia.com</div>
				<div style="line-height:30px;">地址：武汉市江汉区民权路长江大厦25楼</div>
			</div>
			<div style="float: left;margin: 20px 0px 20px 50px;color: #434343;font-size: 16px;">
				<form action="/clientLeaveMsg.jhtml" method="post" id="inputForm">
					<div style="width: 674px; height: auto; overflow: hidden;margin-top: 9px;">
						<input class="input1" style="width: 674px;" type="text" name="username" id="username" placeholder="姓名"/>
						<input class="input1" style="width: 674px;" type="text" name="email" id="email" placeholder="邮箱"/>
						<input class="input1" style="width: 674px;" type="text" name="title" id="title" placeholder="标题"/>
						<textarea class="textarea" name="content" id="content" placeholder="内容"/></textarea>
						<input class="input2" type="button" id="leavemsg" value="提交" />
					</div>
				</form>
			</div>
		</div>
    </div>
     <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
