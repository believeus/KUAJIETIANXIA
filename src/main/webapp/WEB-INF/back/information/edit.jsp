<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>编辑集团资讯 - Powered By believeus</title>
	<meta name="author" content="believeus Team" />
	<meta name="copyright" content="believeus" />
	<link href="/static/public/css/common_s.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/static/public/js/jquery.js"></script>
	<script type="text/javascript" src="/static/public/js/jquery.validate.js"></script>
	<script type="text/javascript" src="/static/public/js/admin/ueditor1_2_6_2/ueditor.config.js"></script>
	<script type="text/javascript" src="/static/public/js/admin/ueditor1_2_6_2/ueditor.all.js"></script>
	<script type="text/javascript" src="/static/public/js/common.js"></script>
	<script type="text/javascript" src="/static/public/js/input.js"></script>
	<style type="text/css">
		table.input th {
		    font-size: 13px;
		}
	</style>
	<script type="text/javascript">
	$().ready(function() {
	
		var editor = new UE.ui.Editor();
	    editor.render('editor');
	    editor.addListener('contentchange',function(){
	        this.sync();
	        $('textarea').valid();
	    });
	
	    var editor1 = new UE.ui.Editor();
	    editor1.render('editor1');
	    editor1.addListener('contentchange',function(){
	        this.sync();
	        $('#editor1').valid();
	    });
	    
		var $inputForm = $("#inputForm");
		
		// 表单验证
		$inputForm.validate({
			rules: {
				introduction: "required",
				name: "required"
			}
		});
		
		
	});
	
	</script>
  </head>
  
  <body>
     <div class="path">
		<a href="/admin/manager.jhtml" target="_parent">首页</a> &raquo; 编辑集团资讯
	</div>
	<form id="inputForm" action="/admin/information/save.jhtml" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${information.id }"/>
		<input type="hidden" name="path" value="${information.path}"/>
		<table class="input">
			<tr>
				<th>
					名称:
				</th>
				<td>
					<input type="text" name="name" class="text"  value="${information.name}"/>
				</td>
			</tr>
			<tr id="pathTr">
				<th>
					<span class="requiredField">*</span>相关图片:
				</th>
				<td colspan="3">
					<div>
						<span style="float:left">
							<div id="preview_wrapper">    
						        <div id="preview_fake" >    
						            <img id="preview" onload="onPreviewLoad(this,190,120)" src="/${information.path}"/>
						        </div>    
						    </div>    
						    <br/>    
						    <input id="upload_img" type="file" name="upload_img" onchange="filename0.value=this.value;onUploadImgChange(this,190,120,'preview','preview_fake','preview_size_fake');"/>  
						    <input type="hidden" id="filename0" name="filename0">
						    <br/>    
						    <img id="preview_size_fake"/> 
						</span>
					</div>
				</td>
			</tr>
			
			<tr id="contentTr">
				<th>
					介绍:
				</th>
				<td colspan="3">
					<textarea id="editor" name="introduction" class="editor">${information.introduction}</textarea>
				</td>
			</tr>
			<tr id="contentTr">
				<th>
					内容:
				</th>
				<td colspan="3">
					<textarea id="editor1" name="content" class="editor">${information.content}</textarea>
				</td>
			</tr>
			<tr>
				<th>
					&nbsp;
				</th>
				<td colspan="3">
					<input type="submit" class="button" value="确定" />
					<input type="button" class="button" value="返回" onclick="javascript:window.history.back();"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
