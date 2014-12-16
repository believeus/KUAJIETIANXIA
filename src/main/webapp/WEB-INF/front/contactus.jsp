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
		font-size: 16px;
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
	}
</style>
  </head>
  
  <body>
     <jsp:include page="/WEB-INF/include/header.jsp" />
     <div class="center" style="width: 1200px; height: auto;margin: 0 auto 50px;overflow: hidden;">
		<div style="font-size: 23px;font-weight: bold;line-height: 65px;height: 55px;">
			<a style="color: #666666;" href="">联系我们</a>
		</div>
		<div style="width: 1200px;height: auto;margin: 0 auto;">
			<div style="border-bottom: 2px solid #AEAEAE;"></div>
			<div style="border-bottom: 4px solid #922D2C;width: 92px;margin: -3px 0px 10px;"></div>
		</div>
		<div style="width: 1200px;height: auto;margin: 10px auto;">
			<div style="float: left;color: #434343;font-size: 16px;">
				<div style="margin: 30px auto;">
					<img src="/static/public/images/map.jpg" style="width: 100%;"/>
				</div>
				<div style="line-height: 40px;">咨询电话：027-65650999</div>
				<div style="line-height: 40px;">邮箱：hbydcf@126.com</div>
				<div style="line-height: 40px;">网址：www.eyinde.com</div>
				<div style="line-height: 40px;">地址：武汉市江汉区民权路长江大厦25楼</div>
			</div>
			<div style="float: left;margin: 20px 0px 20px 50px;color: #434343;font-size: 16px;">
				<form action="#" method="post">
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
						<input class="input2" type="submit" value="提交" />
					</div>
				</form>
			</div>
		</div>
    </div>
     <jsp:include page="/WEB-INF/include/footer.jsp" />
  </body>
</html>
