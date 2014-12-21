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
	<title>编辑新闻 - Powered By believeus</title>
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
				title: "required",
				content: "required",
				entitle: "required",
				encontent: "required",
				type:"required"
			}
		});
		
		
	});
	
	</script>
  </head>
  
  <body>
     <div class="path">
		<a href="/admin/manager.jhtml" target="_parent">首页</a> &raquo; 编辑新闻
	</div>
	<form id="inputForm" action="/admin/news/save.jhtml" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${news.id }"/>
		<input type="hidden" name="imgPath" value="${news.imgPath}"/>
		<table class="input">
			<tr>
				<th>
					新闻分类:
				</th>
				<td>
					<select name="type">
						<c:if test="${news.type==null }">
							<option value="" selected="selected">--请选择--</option>
							<option value="0">关于乐退</option>
							<option value="1">集团快讯</option>
							<option value="2">高层动态</option>
							<option value="3">集团公告</option>
						</c:if>
						<c:if test="${news.type==0 }">
							<option value="">--请选择--</option>
							<option value="0" selected="selected">关于乐退</option>
							<option value="1">集团快讯</option>
							<option value="2">高层动态</option>
							<option value="3">集团公告</option>
						</c:if>
						<c:if test="${news.type==1 }">
							<option value="">--请选择--</option>
							<option value="0">关于乐退</option>
							<option value="1" selected="selected">集团快讯</option>
							<option value="2">高层动态</option>
							<option value="3">集团公告</option>
						</c:if>
						<c:if test="${news.type==2 }">
							<option value="">--请选择--</option>
							<option value="0">关于乐退</option>
							<option value="1">集团快讯</option>
							<option value="2" selected="selected">高层动态</option>
							<option value="3">集团公告</option>
						</c:if>
						<c:if test="${news.type==3 }">
							<option value="">--请选择--</option>
							<option value="0">关于乐退</option>
							<option value="1">集团快讯</option>
							<option value="2">高层动态</option>
							<option value="3" selected="selected">集团公告</option>
						</c:if>
					</select>
				</td>
			</tr>
			<tr>
				<th>
					新闻中文标题:
				</th>
				<td>
					<input type="text" name="title" class="text" maxlength="10000" value="${news.title}"/>
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
						            <img id="preview" onload="onPreviewLoad(this,190,120)" src="/${news.imgPath}"/>
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
					中文内容:
				</th>
				<td colspan="3">
					<textarea id="editor" name="content" class="editor">${news.content}</textarea>
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
