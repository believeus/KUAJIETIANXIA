<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>​
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台登录</title>
    <script type="text/javascript" src="/static/public/js/jquery.js"></script>
    <script type="text/javascript">
	    $(function(){
	 		$("input[type=submit]").click(function(){
	 			if($("#username").val() !="admin"){
	 				alert("用户名错误");
	 				return false;
	 			}else if($("#password").val() !="admin"){
	 				alert("密码错误");
	 				return false;
	 			}
	 		});
	 	});
    </script>
	<style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			overflow:hidden;
			font-size:12px;
		}
		.STYLE1 {
			color: #000000;
			font-size: 12px;
		}
		a:hover{text-decoration:underline;color: #C20C0C;}
		.sub{
			background-color: #932e2d;
		    border: 1px none #932e2d;
		    border-radius: 2px;
		    color: #ffffff;
		    cursor: pointer;
		    font-size: 16px;
		    height: 40px;
		    font-family: "microsoft yahei";
		    width: 352px;"
		}
		.input{
			width: 315px;
			height: 33px;
			border: none;
			font-size: 16px;
			font-family: "microsoft yahei";
			float: left;
			color: #A1A1A1;
		}
	</style>
  </head>
  
  <body>
    <!-- Begin Name:wuqiwei 此处必须加：不加验证之后就不能表单提交了,所以如果已经验证直接跳转到/admin/manager.jhtml页面 -->
     <shiro:authenticated>
      <script type="text/javascript">
        window.location.href ="/admin/manager.jhtml";
      </script>
	</shiro:authenticated>
	<!-- End Name:wuqiwei 此处必须加：不加验证之后就不能表单提交了,所以如果已经验证直接跳转到/admin/manager.jhtml页面 -->
	
	<div class="center" style="width: 780px; height: auto;margin: 0 auto;overflow: hidden;">
		<div style="width: 100%; height: auto;margin: 25% auto;overflow: hidden;">
			<div style="float: left;margin-top: 12px;">
				<a href="/admin/login.jhtml">
					<img src="/static/public/images/login_logo.jpg" style="width: 230px;" />
				</a>
			</div>
			<div style="float: left;margin: 30px 50px;">
				<img src="/static/public/images/login_center.jpg" />
			</div>
			<div style="float: left;">
				<form id="inputForm" action="/admin/login.jhtml" method="post">
					<div style="width: 350px;height: 35px;border: 1px solid #797979;margin: 30px 20px;">
						<img src="/static/public/images/username.jpg" style="float: left;margin: 4px 4px;" />
						<input class="input" type="text" name="username" id="username" placeholder="用户名" />
					</div>
					<div style="width: 350px;height: 35px;border: 1px solid #797979;margin: 45px 20px;">
						<img src="/static/public/images/password.jpg" style="float: left;margin: 5px 4px;" />
						<input class="input" type="password" name="password" id="password" placeholder="密码" />
					</div>
					<div style="margin: 30px 20px;">
						<input class="sub" type="submit" value="登陆" />
					</div>
				</form>
			</div>
		</div>
    </div>
	
	<!-- <div class="center" style="width: 100%; height: 1000px;margin-top: 200px;">
		<div style="float: left;margin-left: 400px">
			<img alt="logo" src="/static/public/images/logo_kjtx.jpg" />
		</div>
		<div style="height: 39px;left: 50%;margin-left: -300px;position: absolute;top: 50%;width: 600px;margin-top: -100px;">
			<form action="/admin/login.jhtml" method="post">
				<div>
				<div style="float: left;border: 1px solid #A8AFB7;width: 35px;height: 37px;">
					<img src="/static/public/images/user.png" style="width: 20px;height: 20px;margin: 8px 0px 0px 7px;" />
				</div>
				<div style="float: left;">
					<input type="text" name="username" id="username" placeholder="用户名" style="width: 130px;height: 38px;text-indent: 10px;" />
				</div>
				</div>
				<div>
				<div style="float: left;border: 1px solid #A8AFB7;width: 35px;height: 37px;">
					<img src="/static/public/images/lock.png" style="width: 15px;height: 20px;margin: 8px 0px 0px 10px;" />
				</div>
				<div style="float: left;">
					<input type="password" name="password" id="password" placeholder="密码" style="width: 130px;height: 38px;text-indent: 10px;" />
				</div>
				</div>
				<div style="margin-left: 141px;">
					<input type="submit"  value="登陆" style="float: left;width: 125px;height: 39px;" />
				</div>
			</form>
		</div>
    </div> -->
  </body>
</html>
