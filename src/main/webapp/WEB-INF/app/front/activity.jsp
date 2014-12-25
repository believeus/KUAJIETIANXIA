<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>诚邀您参加跨界天下品牌发布暨院线电影《那十年》启动盛典仪式</title>
    <meta charset="utf-8">
    <meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link href="/static/public/css/at.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		body{
			background:#ECECEC;
			font-family: microsoft yahei;
			font-size:14px;
		}
		p{
			margin:10px 0;
		}
		a{
			text-decoration: none;
		}
		.head-title{
			
		}
		.a-main{
			margin: 55px 10px;
		}
		.a-main-title{
			text-align: left;
			font-weight:bold;
			font-size: 16px;
		}
		.a-visitNum{
			font-size:13px;
			color:#666;
			margin:5px 0;
		}
		.a-main-img{
			text-align:center;
			background: #fff;
		    border-radius: 5px;
		}
		.a-main-img img{
		    border-radius: 5px;
		}
		.a-main-word{
			text-align:left;
			background: #fff;
		    border-radius: 5px;
		    margin-top:10px;
		    padding: 10px 5px;
		    font-size:13px;
		}
		.p1{
			line-height: 10px;
		}
		.a-main-img-div{
			width:30%;
			margin:0 auto;
		}
		.word-img{
			position: relative;
		    width: 20px;
		    margin: 0 5px;
		}
		a.btn_general {
		    background-image: -moz-linear-gradient(center top , #f2f2f2, #e7e7e7, #dddddd);
		    border: 1px solid #bdbdbd;
		    border-radius: 4px;
		    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
		    display: block;
		    height: 42px;
		    line-height: 42px;
		    text-align: center;
		    color:#000;
		}
		.btn3 {
		    margin: 10px 0 0;
		}
		/* ********************* */
		.top {
		    background-color: #22272a;
		    height: 45px;
		    left: 0;
		    padding: 1px 0 0;
		    position: fixed;
		    top: -1px;
		    width: 100%;
		    z-index: 99999;
		}
		.box_shadow_1 {
		    box-shadow: 0 1px 8px rgba(0, 0, 0, 0.5);
		}
		.top_btnL, .top_btnR, .top_btnR2 {
		    margin: 0 10px;
		}
		.fl {
		    display: inline;
		    float: left !important;
		}
		.top_btnL a, .top_btnR a {
		    background-position: center center;
		    background-repeat: no-repeat;
		    background-size: 100% 30px;
		    color: #fff;
		    display: block;
		    height: 45px;
		    line-height: 45px;
		    text-align: center;
		    text-shadow: 0 1px 0 #000;
		    width: 45px;
		}
		.top_btnL a {
		    background-image: url(/static/public/images/fu_03.png);
		    padding-left: 4px;
		}
		.top_btnL, .top_btnR, .top_btnR2 {
		    margin: 0 10px;
		}
		.fr {
		    display: inline;
		    float: right !important;
		}
		.top_btnR2 a {
		    background: none repeat scroll 0 0 #932d2b;
		   /*  border: 1px solid #131518; */
		   border: 0;
		    border-radius: 4px;
		    color: #fff;
		    display: block;
		    height: 28px;
		    line-height: 28px;
		    margin-top: 8px;
		    padding: 0 18px;
		    text-align: center;
		    font-weight:bold;
		}
		.top_title {
		    color: #fff;
		    font-size: 16px;
		    line-height: 45px;
		    margin: 0 auto;
		    text-align: center;
		    width: 58%;
		}
		.gradient_7 {
		    background-image: -moz-linear-gradient(center top , #3a434a, #2a3237, #191e22);
		    background-image: -webkit-linear-gradient(top,#3a434a, #2a3237, #191e22);
		}
		.footer2_left {
		    background: url(/static/public/images/fu_03.png) no-repeat scroll 0 0 / 100% 28px rgba(0, 0, 0, 0);
		    color: #fff;
		    height: 28px;
		    line-height: 28px;
		    margin-left: 10px;
		    padding: 0 0 0 7px;
		    text-align: center;
		    text-shadow: 0 1px 0 #000;
		    width: 43px;
		}
		.footer2_left, .footer2_right {
		    margin-top: 9px;
		}
		.footer2 {
		    border-top: 1px solid #3a434a;
		    bottom: 0;
		    color: #fff;
		    font-size: 13px;
		    height: 45px;
		    left: 0;
		    margin-top: -1px;
		    position: fixed;
		    width: 100%;
		    z-index: 97;
		}
		.footer2_right {
		    background-attachment: scroll, scroll;
		    background-clip: border-box, border-box;
		    background-color: rgba(0, 0, 0, 0);
		    /* background-image: url(/static/public/images/footer2R_L.png), url(/static/public/images/footer2R_R.png); */
		    background-origin: padding-box, padding-box;
		    background-position: left 0px, right 0;
		    background-repeat: no-repeat, no-repeat;
		    background-size: 6px 28px;
		    color: #fff;
		    cursor: pointer;
		    height: 28px;
		    line-height: 28px;
		    margin-right: 10px;
		    padding: 0 6px;
		}
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
		#msg2{
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
		    display:none;
		    z-index:99999;
		}
		.user-list{
			width:49%;
			height:35px;
			line-height:35px;
			float:left;
			text-align: center;
			background:#EC2D3C;
			color:#fff;
			margin-bottom: 10px;
			border-radius:4px;
		}
		.a-msg-password{
			background: none repeat scroll 0 0 #000;
		    border-radius: 5px;
		    color: #fff;
		    font-size: 20px;
		    height: 150px;
		    left: 50%;
		    line-height: 100px;
		    margin-left: -150px;
		    margin-top: -75px;
		    opacity: 0.9;
		    position: fixed;
		    text-align: center;
		    top: 50%;
		    width: 300px;
		    background:#CCCCCC;
		    display:none;
		    z-index:9999;
		}
		.bg-pass{
			background:#000;width:100%;height:auto;opacity:0.9;position:absolute;top:0;z-index:999;display:none;
		}
		.subBtn{
			background:#D4040F;
			padding:10px 20px;
			border:1px solid #AAAAAA;
			color:#fff;
		}
		.cBtn{
			background:#E9E9E9;
			padding:10px 20px;
			border:1px solid #AAAAAA;
		}
		.p3{
			color:#942E2C;font-weight: bold;
		}
		.erweima{
			width:49%;
			float:left;
		}
		.erweima img{
			border-radius:4px;
		}
		.b-erweima{
			width:100%;
			position:fixed;
			top:0;
			background:#000;
		}
		.tips{
			background: #fdb913;
		    border-radius: 5px;
		    color: #fff;
		    font-family: SimSun;
		    margin-right: 15px;
		    padding: 5px 10px;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			$(".btn_general").click(function(){
				
			});
			//背景音乐
			/* $("#stop_music").click(function(){
				if($("#emb").attr("src") == "/static/public/jingle_bells.mp3"){
					$("#emb").remove();
				}else{
					location.href="/app/activity.jhtml";
				}
			}); */
			$("#bg-pass").css("height","3223px");
			$("#msg").delay(1500).fadeOut("fast");
			$("#viewUsers").click(function(){
				$("#bg-pass").show();
				$("#msg-password").show();
				//location.href = "/app/activityUsers.jhtml";
			});
			$("#BtnOn6").click(function(){
				$("#bg-pass").hide();
				$("#msg-password").hide();
			});
			$("#BtnOn01").click(function(){
				var url="/app/adminLogin.jhtml?password="+$("#pwd").val();
				$.post(url,function(data){
					if(data=="error"){
						 $("#msg2").text("密码错误");
				    	 $("#msg2").css("display","block");
				    	 $("#msg2").delay(1500).fadeOut("fast");
					}else{
						location.href=data;
					}
				}); 
			});
			$(".b-erweima img").click(function(){
				$(".b-erweima").hide();
			});
			$("#weixin_id").click(function(){
				$(".b-erweima").show();
			});
			var height = window.screen.height;
			$(".b-erweima").css("height",height);
		});
	</script>
  </head>
  
  <body>
    <header class="top box_shadow_1 clearfix">
		<!-- <div class="top_btnL fl"><a onclick="history.go(-1);" href="javascript:void(0);">返回</a></div> -->
	    <!-- <div class="top_btnR2 fr"><a id="stop_music" href="javascript:void(0);">停止背景音乐</a></div> -->
	    <!-- <div class="top_btnR2 fr"><a onclick="location.href='/app/activityRegView.jhtml'" href="javascript:void(0);">签到</a></div> -->
	    <p class="top_title" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">跨界天下品牌发布暨院线电影《那十年》启动盛典邀请函</p>
	</header>
   	<div class="a-main">
   		<div class="a-main-title">
   			跨界天下品牌发布暨院线电影《那十年》启动盛典邀请函
   		</div>
   		<div class="a-visitNum">
   			访问数：${accessCount }<%--  &nbsp;&nbsp;&nbsp;签到数：${size } --%>
   		</div>
   		<div class="a-main-title" style="margin:10px 0;border-radius:5px;text-align:center;">
   			<!-- <span class="tips">诚意邀请</span> -->跨界天下，诚邀您的光临！
   		</div>
   		<div class="a-main-img">
			<img src="/static/public/images/k_logo.jpg" width="100%"/>
   		</div>
		<img src="/static/public/images/y.jpg" width="100%" style="border-radius:4px;margin-top: 10px;">
   		
   		<div class="a-main-word">
   			<p class="p1">这里， 将跨领域之鸿沟</p>
			<p class="p1">这里， 将界定自身之价值</p>
			<p class="p1">这里， 将联和众人之力</p>
			<p class="p1">这里， 将盟定天下大势</p>
			<p class="p1">所以，追求的都是经典，造就的尽是不凡</p>
			<p class="p1" style="margin-bottom:30px;">至此，跨界天下厚积薄发，横空出世。</p>
			
			<p class="p1">尊敬的________先生/女士</p>
			<p class="p1" style="line-height: 20px;">我们诚邀阁下参加2014年12月28晚6点于武汉万达威斯汀酒店举办的跨界天下品牌发布暨院线电影《那十年》启动盛典及剧组主创媒体见面会。</p>
			<p class="p1" style="line-height: 20px;">《那十年》由香港著名音乐人李健达(将徐小凤送上音乐巅峰的殿堂级音乐人)亲自操刀主题曲及背景音乐，神秘大咖乐当幕后推手，姜潮、谈莉娜、易易紫、陈俊文等众多帅男靓女倾情出演。</p>
			<p class="p1" style="line-height: 20px;">活动当晚姜潮、谈莉娜、易易紫、苗皓钧、冼灏英、王韦智、陈俊文等明星将莅临现场。</p>
			<p class="p1">星光璀璨 邀您共享！ </p>
			<p class="p1">八方齐聚，共襄盛举。</p>
			<p class="p1">诚邀阁下拨冗莅临！</p>
		</div>	
			<div class="a-main-word">
	   			<img src="/static/public/images/ex_icon1.png" class="word-img"/>
	   			活动时间：2014年12月28日 18:00
	   		</div>
	   		<!-- <div class="a-main-word">
	   			<img src="/static/public/images/ex_icon2.png" class="word-img"/>
	   			费用：凭邀请函免费
	   		</div> -->
	   		<div class="a-main-word">
	   			<img src="/static/public/images/ex_icon5.png" class="word-img"/>
	   			地点：湖北省武汉市武昌区积玉桥万达威斯汀酒店
	   		</div>
		<div class="a-main-word">	
			<p class="p1">本次活动凭邀请函入场，欢迎致电咨询。</p>
			<p class="p1">周丹：18672911319</p>
			<p class="p1">刘媛：13098823668</p>
			<p class="p1">陈明：18607103667</p>
   		</div>
   		<a onclick="location.href='/app/activityRegView.jhtml'" href="javascript:void(0);" class="ex_btn">我要签到（已有${size }人签到）</a>
   		<!-- <a href="javascript:void(0);" id="viewUsers" class="btn_general btn3">查看已签到人员信息</a> -->
   		
   		<div style="width:100%;height:auto;overflow:hidden;margin-top:10px;">
	   		<%-- <c:forEach items="${users }" var="user" varStatus="status">
	   			<div class="user-list" <c:if test="${(status.index+1)%2==0 }">style="float:right;"</c:if> >${user.username }</div>
	   		</c:forEach> --%>
	   		<img alt="" src="/static/public/images/d.jpg" width="100%" style="border-radius:4px;margin-bottom: 10px;">
	   		<div class="erweima">
	   			<img id="weixin_id" src="/static/public/images/weixin.jpg" width="100%" />
	   			<div style="text-align:center;font-weight: bold;"><span style="color:#942E2C;font-size:17px;">扫一扫</span><br/>关注跨界天下公众号</div>
	   		</div>
	   		<div class="erweima" style="float:right;">
	   			<a href="/activityAddress.jhtml"><img src="/static/public/images/address.png" width="100%" /></a>
	   			<div style="text-align:center;font-weight: bold;"><span style="color:#942E2C;font-size:17px;">点一点</span><br/>查看活动地址</div>
	   		</div>
   		</div>
   		<div style="text-align:center;font-weight: bold;color:#942E2C;">微信公众号：KuaJieTianXia</div>
   		<div class="footer2 gradient_7 box_shadow_1">
		    <a onclick="location.href='/app/activity.jhtml'" href="javascript:void(0);"><div class="footer2_left fl">首页</div></a>
		     <div class="fr">
		        <a onclick="location.href='/app/activityRegView.jhtml'" href="javascript:void(0);"><div class="footer2_right fl"><div class="footer2_right_2" style="background:#932D2B;font-weight:bold;padding: 0 20px;border:0;">签到</div></div></a>
		        <!-- <a onclick="window.location.reload();" href="javascript:void(0);"><div class="footer2_right fl"><div class="footer2_right_2">刷新</div></div></a> -->
		     </div>
		</div>
		<!-- <bgsound loop="true" src="/static/public/jingle_bells.mp3" /> -->
		<!-- <embed id="emb" src="/static/public/jingle_bells.mp3" width=0 height=0 type=audio/mpeg loop="200" autostart="true" controls="pausebutton"></embed> -->
   		<div class="a-main-word" style="text-align:center;background:#ECECEC;font-size: 15px;">
   			&copy;跨界天下
   		</div>
   	</div>
   	<c:if test="${message eq '1' }">
	   	<div id="msg" class="a-msg">
	   		信息提交成功
	   	</div>
   	</c:if>
   	<div id="msg2"></div>
   	<div id="bg-pass" class="bg-pass"></div>
   	<div id="msg-password" style="display:none;z-index:9999;position:absolute;">
		<form action="/app/adminLogin.jhtml" method="post">
	   		<div class="apply_box apply_box2" style="display: block;">
				<p>请输入管理密码</p>
			    <input type="password" maxlength="16" placeholder="输入管理密码" required="" name="pwd" id="pwd">
			    <div class="apply_boxBtn clearfix">
			    	<ul>
			           <li id="BtnOn4" class="sub"><input type="button" value="提交" id="BtnOn01" class="BtnOn1"></li>
			           <li id="BtnOn6" class="reset fr">取消</li>
			        </ul>
			    </div>
			</div>
		</form>
   	</div>
   	<div class="b-erweima" style="display:none;">
   		<img src="/static/public/images/weixin.jpg" width="100%" style="margin-top:50px;"/>
   	</div>
  </body>
</html>
