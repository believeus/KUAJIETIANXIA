<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-活动信息填写</title>
    <meta charset="utf-8">
    <meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<link href="/static/public/css/at.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		.a-msg{
			background: none repeat scroll 0 0 #000;
		    border-radius: 5px;
		    color: #fff;
		    font-size: 20px;
		    height: 100px;
		    left: 50%;
		    line-height: 100px;
		    margin-left: -100px;
		    margin-top: -50px;
		    opacity: 0.9;
		    position: fixed;
		    text-align: center;
		    top: 50%;
		    width: 200px;
		}
	</style>
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		function FpicUp(){
			//alert("图片上传成功");
			$(".apply_add2_1_1").text("图片上传成功");
			$(".apply_add2_1_1").css({"color":"#8EC400","font-weight":"bold"});
		}
	</script>
  </head>
   <script type="text/javascript">
    $(function(){
    	 
      $("#apply_add_on1").click(function(){
	      if($("#username").val()==""){
	    	  $("#msg").text("请输入姓名");
	    	  $("#msg").css("display","block");
	    	  $("#msg").delay(1500).fadeOut("fast");
	    	  return false;
	      }else if($("#phone").val()==""){
	    	  $("#msg").text("请输入手机号");
	    	  $("#msg").css("display","block");
	    	  $("#msg").delay(1500).fadeOut("fast");
	    	  return false;
	      }else if(!$("#phone").val().match(/^1[3|4|5|8][0-9]\d{4,8}$/)){
	    	  $("#msg").text("请正确输入手机号");
	    	  $("#msg").css("display","block");
	    	  $("#msg").delay(1500).fadeOut("fast");
	    	  return false;
		  }else if($("#weixin").val()==""){
	    	  $("#msg").text("请输入微信号");
	    	  $("#msg").css("display","block");
	    	  $("#msg").delay(1500).fadeOut("fast");
	    	  return false;
	      }else{
	    	  $("#inputForm").submit();
	      }
      });
    });
   
   
   </script>
  <body>
    <header class="top box_shadow_1 clearfix">
		<div class="top_btnL fl"><a onclick="history.go(-1);" href="javascript:void(0);">返回</a></div>
	    <div class="top_btnR2 fr"></div>
	    <p class="top_title">填写信息</p>
	</header>
	<div class="height45"></div>
	<div class="warp apply_warp">
		<p class="explain">发布违法、反动内容或冒用他人、组织名义发布，将依据记录提交公安机关处理，请不要涉及敏感政治话题</p>
	    <form action="/app/activityReg.jhtml" method="post" id="inputForm"  enctype="multipart/form-data">
		    <div class="apply_add2"><input type="text" placeholder="真实姓名（必填）" required="" maxlength="10" name="username" id="username" class="txt1"></div>
		    <div class="apply_add2"><input type="text" placeholder="手机，非常重要，唯一身份析别（必填）" required="" maxlength="11" name="phone" id="phone" class="txt1 "></div>
		    <div class="apply_add2"><input type="text" placeholder="微信，唯一互联网联系方式（必填）" required="" maxlength="30" name="webxinCode" id="weixin" class="txt1"></div>
	        <div class="apply_add2">
				  <div class="apply_add2_1 clearfix">
				   <div id="apply_up1" class="apply_up1 fl">
				     <div class="apply_up1_1"><input type="file" onchange="FpicUp();" name="picfile" class="apply_up_k" id="apply_up_k">
				      <input type="hidden" value="1" name="sessionid">
				      <input type="submit" name="itemUpload" value="上传" id="apply_up_on" class="apply_up_on">
				   </div>
				  </div>
			 <div class="apply_add2_1_1 fl">图片上传(可不填)</div>
			</div>
	        </div>
		    <input type="hidden" name="picUrl1" id="picUrl1"><input type="hidden" name="picSite1" id="picSite1">
		 	<div class="apply_add2">
		 		<input type="text" value="" placeholder="参赛视频，可粘贴“优酷视频”网址（可不填）" required="" maxlength="150" name="vedioURL" id="matmv" class="txt1"></div>
		    <div class="apply_add2">
		    	<input type="text" placeholder="参赛口号（可不填）" required="" maxlength="30" name="motto" id="motto" class="txt1">
		    	<input type="hidden" value="38" name="aid" id="aid"><input type="hidden" value="" name="netid" id="netid">
		    	<input type="hidden" value="yes" name="wxsite" id="wxsite">
		    </div>
			<div class="apply_add2">
				<input type="text" placeholder="备注，附加说明（可不填）" required="" maxlength="20" name="note" id="description" class="txt1">
			</div>
		    <a  href="javascript:void(0); " id="apply_add_on1" class="btn_mobile1 apply_sub">提 交</a>
	    </form>
	</div>
	<div id="net_re" class="net_re"></div>
	<a onclick="" href="javascript:void(0);"><div class="ex_copy">&copy;跨界天下</div></a>
	<div id="foot">
		<div class="height45"></div>
		<div class="footer2 gradient_7 box_shadow_1" style="display: block;">
		    <a onclick="history.go(-1);" href="javascript:void(0);"><div class="footer2_left fl">返回</div></a>
	     <div class="fr">
       		<a onclick="window.location.reload();" href="javascript:void(0);">
       			<div class="footer2_right fl">
       				<div class="footer2_right_2">刷新</div>
   				</div>
			</a>
	     </div>
		</div>
	</div>
	<div id="msg" class="a-msg" style="display:none;"></div>
  </body>
</html>
