<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>编辑企业信息 - Powered By believeus</title>
	<meta name="author" content="believeus Team" />
	<meta name="copyright" content="believeus" />
	<link href="/static/public/css/common_s.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/static/public/js/jquery.js"></script>
	<style type="text/css">
		table.input th,td {
		    font-size: 13px;
		}
	</style>
  </head>
  
  <body>
     <div class="path">
		<a href="/admin/manager.jhtml" target="_parent">首页</a> &raquo; 查看企业信息
	</div>
		<table class="input">
			<tr>
				<td colspan="4">
					<input type="button" class="button" value="编辑企业信息" onclick="javascript:window.location.href='/admin/companyEdit.jhtml'"/>
				</td>
			</tr>
			<tr>
				<th>
					企业电话:
				</th>
				<td>
					${enterpriseInfo.tel }
				</td>
			</tr>
			<tr>
				<th>
					网址:
				</th>
				<td>
					${enterpriseInfo.website }
				</td>
			</tr>
			<tr>
				<th>
					邮箱:
				</th>
				<td>
					${enterpriseInfo.email }
				</td>
			</tr>
			<tr>
				<th>
					地址:
				</th>
				<td>
					${enterpriseInfo.address }
				</td>
			</tr>
		</table>
  </body>
</html>
