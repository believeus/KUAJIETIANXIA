<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="date" uri="http://www.believeus.cn/jstl/date" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-查看人员资料</title>
    <meta charset="utf-8">
    <meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link href="/static/public/css/at.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/static/public/js/app.js"></script>
  </head>
  
  <body>
    <header class="top box_shadow_1 clearfix">
		<div class="top_btnL fl"><a onclick="history.go(-1);" href="javascript:void(0);">返回</a></div>
	    <div class="top_btnR2 fr"></div>
	    <p class="top_title">填写信息</p>
	</header>
	<div class="height45"></div>
	
	<article class="warp adRe_warp">        
     <div class="remid_list">
	     <div class="remid_mob remid_mob3">
        	<div id="remid_mob1_" class="remid_mob1 clearfix">
                 <p class="re_zsu">总数：${size }人</p>
        	</div>  
	     </div>
	    <c:forEach items="${users }" var="user" varStatus="status">
	        <div class="remid_mob_s_${status.index+1 }">
		        <div id="remid_mob_${status.index+1 }" class="remid_mob">
	        	    <div onclick="apply_user_info('${status.index+1 }')" id="remid_mob1_${status.index+1 }" class="remid_mob1 clearfix">
	        		    <p class="re_name">${user.username }</p>
	                    <p class="re_status"><date:date parttern="yyyy-MM-dd" value="${user.editTime }"></date:date></p>
	                    <p class="re_phone"><a href="tel://${user.phone }">${user.phone }</a></p>
	            	</div>
	                <div class="remid_mob2" style="display: none;">
	            	    <p>单位名称：${user.description }</p>
	            	    <p>微信帐号：${user.webxinCode }</p>
	            	    <div id="remid_${status.index+1 }" class="remid_mob2_user clearfix">
                    	<p class="fl">管理操作：</p>
                        <div class="fl">
                        	<a onclick="location.href='/app/userDelete.jhtml?uid=${user.id}'" href="javascript:void(0);">删除此人</a>
                        </div>
                    </div>
	                </div>
		        </div>
	        </div>
        </c:forEach>
     </div>
	</article>
	
	<div id="net_re" class="net_re"></div>
	<a onclick="" href="javascript:void(0);"><div class="ex_copy">&copy;跨界天下</div></a>
	<div id="foot">
		<div class="height45"></div>
		<div class="footer2 gradient_7 box_shadow_1" style="display: block;">
		    <a onclick="location.href='/app/activity.jhtml'" href="javascript:void(0);"><div class="footer2_left fl">首页</div></a>
		     <div class="fr">
	       		<a onclick="window.location.reload();" href="javascript:void(0);">
	       			<div class="footer2_right fl">
	       				<div class="footer2_right_2">刷新</div>
	   				</div>
				</a>
		     </div>
		</div>
	</div>
  </body>
</html>
