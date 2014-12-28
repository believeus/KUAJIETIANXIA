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
	<title>编辑合作伙伴 - Powered By believeus</title>
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
				industry:"required",
				introduction: "required",
				content: "required",
				industryName:"required"
			}
		});
		$("#companyTye").val("${partners.companyTye }");
		$("#industryName").val("${partners.industry.id }");
	});
	
	</script>
  </head>
  
  <body>
     <div class="path">
		<a href="/admin/manager.jhtml" target="_parent">首页</a> &raquo; 编辑合作伙伴
	</div>
	<form id="inputForm" action="/admin/partners/save.jhtml" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${partners.id }"/>
		<input type="hidden" name="logo" value="${partners.logo}"/>
		<input type="hidden" name="img1" value="${partners.img1 }">
		<input type="hidden" name="img2" value="${partners.img2 }">
		<input type="hidden" name="img3" value="${partners.img3 }">
		<table class="input">
			<tr>
				<th>排名：</th>
				<td><input type="text" class="text" name="num" value="${partners.num }"/></td>
			</tr>
			<tr>
				<th>
					所属产业:
				</th>
				<td>
					<select name="industryName" id="industryName">
						<option value="">--请选择--</option>
						<c:forEach items="${industries }" var="industry">
							<option value="${industry.id }" <c:if test="${industry.id eq(partners.industry.id) }">selected="selected"</c:if>  >${industry.name }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>
					名称:
				</th>
				<td>
					<input type="text" name="name" class="text"  value="${partners.name}"/>
				</td>
			</tr>
				<tr>
				<th>
					公司地址:
				</th>
				<td>
					<input type="text" name="address" class="text" value="${partners.address}"/>
				</td>
			</tr>
			<tr>
				<th>
					公司法人:
				</th>
				<td>
					<input type="text" name="legalMan" class="text" value="${partners.legalMan}"/>
				</td>
			</tr>
			<tr>
				<th>
					注册资本:
				</th>
				<td>
					<input type="text" name="regCapital" class="text" value="${partners.regCapital}"/>&nbsp;&nbsp;万元
				</td>
			</tr>
			<tr>
				<th>
					公司类型:
				</th>
				<td>
					<select name="companyTye" id="companyTye">
						<option value="">--请选择--</option>
						<option value="有限责任公司">有限责任公司</option>
						<option value="股份有限公司">股份有限公司</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>
					经营范围:
				</th>
				<td>
					<textarea rows="5" cols="50" name="bizScope" >${partners.bizScope}</textarea>
				</td>
			</tr>
			<tr id="pathTr">
				<th>
					<span class="requiredField">*</span>公司logo:
				</th>
				<td colspan="3">
					<div>
						<span style="float:left">
							<div id="preview_wrapper">    
						        <div id="preview_fake" >    
						            <img id="preview" onload="onPreviewLoad(this,190,120)" src="/${partners.logo}"/>
						        </div>    
						    </div>    
						    <br/>    
						    <input id="upload_img" type="file" name="logo-a" onchange="filename0.value=this.value;onUploadImgChange(this,190,120,'preview','preview_fake','preview_size_fake');"/>  
						    <input type="hidden" id="filename0" name="filename0">
						    <br/>    
						    <img id="preview_size_fake"/> 
						</span>
					</div>
				</td>
			</tr>
			<tr>
				<th>
					公司相关图片:
				</th>
				<td colspan="3">
					<div>
						<span style="float:left">
							<div id="preview_wrapper">    
						        <div id="preview_fake1" >
						        	<c:choose>
						        		<c:when test="${partners.img1 ne null }">
						        		  <img id="preview1" onload="onPreviewLoad(this,190,120)" src="/${partners.img1}?w=200&h=200"/>
						        		</c:when>
						        		<c:otherwise>
						        		  <img id="preview1" onload="onPreviewLoad(this,190,120)" src="/static/public/images/bg.png"/>
						        		</c:otherwise>
						        	</c:choose>    
						        </div>    
						    </div>    
						    <br/>    
						    <input id="upload_img" type="file" name="img-a" onchange="filename0.value=this.value;onUploadImgChange(this,190,120,'preview1','preview_fake1','preview_size_fake1');"/>  
						    <input type="hidden" id="filename0" name="filename0">
						    <br/>    
						    <img id="preview_size_fake1"/> 
						</span>
					</div>
					<div>
						<span style="float:left">
							<div id="preview_wrapper">    
						        <div id="preview_fake2" > 
						        	<c:choose>
						        		<c:when test="${partners.img2 ne null }">
						        			<img id="preview2" onload="onPreviewLoad(this,190,120)" src="/${partners.img2 }?w=200&h=200"/>
						        		</c:when>
						        		<c:otherwise>
						            		<img id="preview2" onload="onPreviewLoad(this,190,120)" src="/static/public/images/bg.png"/>
						        		</c:otherwise>
						        	</c:choose>   
						        </div>    
						    </div>    
						    <br/>    
						    <input id="upload_img" type="file" name="img-b" onchange="filename0.value=this.value;onUploadImgChange(this,190,120,'preview2','preview_fake2','preview_size_fake2');"/>  
						    <input type="hidden" id="filename0" name="filename0">
						    <br/>    
						    <img id="preview_size_fake2"/> 
						</span>
					</div>
					<div>
						<span style="float:left">
							<div id="preview_wrapper">    
						        <div id="preview_fake3" >  
						        	<c:choose>
						        		<c:when test="${partners.img3 ne null }">
						        			<img id="preview2" onload="onPreviewLoad(this,190,120)" src="/${partners.img3}?w=200&h=200"/>
						        		</c:when>
						        		<c:otherwise>
						        		   <img id="preview3" onload="onPreviewLoad(this,190,120)" src="/static/public/images/bg.png"/>
						        		</c:otherwise>
						        	</c:choose>  
						          
						        </div>    
						    </div>    
						    <br/>    
						    <input id="upload_img" type="file" name="img-c" onchange="filename0.value=this.value;onUploadImgChange(this,190,120,'preview3','preview_fake3','preview_size_fake3');"/>  
						    <input type="hidden" id="filename0" name="filename0">
						    <br/>    
						    <img id="preview_size_fake3"/> 
						</span>
					</div>
				</td>
			</tr>
			<tr id="contentTr">
				<th>
					介绍:
				</th>
				<td colspan="3">
					<textarea id="editor" name="introduction" class="editor">${partners.introduction}</textarea>
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
