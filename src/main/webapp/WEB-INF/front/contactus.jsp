<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>联系我们</title>
    <link rel="stylesheet" href="/static/public/css/style.css" />
    <script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
    <!----start-top-nav-script---->
	<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
	<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
	<!----//End-top-nav-script---->
	<style type="text/css">
	body{
		font-size:12px;
	}
	a:hover{text-decoration:underline;color: #C20C0C;}
	.input1{
		height: 30px;
		border: 1px solid #A1A1A1;
		border-radius: 2px;
		text-indent: 10px;
		font-size: 14px;
		font-family: "microsoft yahei";
		color: #434343;
	}
	.input2{
		background-color: #922d2c;
		border: 1px none #A1A1A1;
		border-radius: 2px;
		color: #ffffff;
		cursor: pointer;
		font-family: "microsoft yahei";
		font-size: 14px;
		height: 35px;
		width: 150px;
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
		<div style="width: 1200px;height: auto;margin: 10px auto;">
			<div style="float: left;color: #434343;font-size: 16px;">
				<div style="margin: 30px auto;">
					<img src="/static/public/images/map.jpg" style="width: 100%;"/>
				</div>
				<div style="line-height: 40px;">咨询电话：${enterpriseInfo.tel }</div>
				<div style="line-height: 40px;">邮箱：${enterpriseInfo.email }</div>
				<div style="line-height: 40px;">网址：${enterpriseInfo.website }</div>
				<div style="line-height: 40px;">地址：${enterpriseInfo.address }</div>
			</div>
			<div style="float: left;margin: 20px 0px 20px 50px;color: #434343;font-size: 16px;">
				<form action="/clientLeaveMsg.jhtml" method="post" id="inputForm">
					<div style="height: 80px;">
						<div style="float: left;">
							<div style="line-height: 35px">姓名</div>
							<input class="input1" style="width: 310px;" type="text" name="username" id="username" />
						</div>
						<div style="float: left;margin-left: 50px;">
							<div style="line-height: 35px">邮箱</div>
							<input class="input1" style="width: 310px;" type="text" name="email" id="email" />
						</div>
					</div>
					<div style="margin-top: 20px;height: 80px;">
						<div style="line-height: 35px">标题</div>
						<input class="input1" style="width: 674px;" type="text" name="title" id="title" />
					</div>
					<div style="margin-top: 20px;height: 200px;">
						<div style="line-height: 35px">内容</div>
						<!-- textarea去掉右侧滚动条，去掉右下角拖拽 resize: none;overflow: hidden; -->
						<textarea class="textarea" type="text" name="content" id="content" /></textarea>
					</div>
					<div style="margin-left: 528px;margin-top: 40px;">
						<input class="input2" type="button" id="leavemsg" value="提交" />
					</div>
				</form>
			</div>
		</div>
    </div>
     <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
