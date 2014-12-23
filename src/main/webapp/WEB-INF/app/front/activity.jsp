<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-活动报名</title>
    <meta charset="utf-8">
    <meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
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
		    top: 5px;
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
		    background: none repeat scroll 0 0 #2d3236;
		    border: 1px solid #131518;
		    border-radius: 4px;
		    color: #fff;
		    display: block;
		    height: 28px;
		    line-height: 28px;
		    margin-top: 8px;
		    padding: 0 10px;
		    text-align: center;
		}
		.top_title {
		    color: #fff;
		    font-size: 18px;
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
	</style>
  </head>
  
  <body>
    <header class="top box_shadow_1 clearfix">
		<div class="top_btnL fl"><a onclick="history.go(-1);" href="javascript:void(0);">返回</a></div>
	    <div class="top_btnR2 fr"><a onclick="location.href='/app/activityRegView.jhtml'" href="javascript:void(0);">报名</a></div>
	    <p class="top_title">跨界天下-活动报名</p>
	</header>
   	<div class="a-main">
   		<div class="a-main-title">
   			跨界天下品牌发布暨院线电影《那十年》启动盛典
   		</div>
   		<div class="a-visitNum">
   			访问数：0 &nbsp;&nbsp;&nbsp;投票数：0 &nbsp;&nbsp;&nbsp;报名数：${size }
   		</div>
   		<div class="a-main-img">
			<img src="/static/public/images/k_logo.jpg" width="100%"/>
   		</div>
   		<div class="a-main-word">
   			<img src="/static/public/images/ex_icon1.png" class="word-img"/>
   			活动时间：2014年12月28日 18:00
   		</div>
   		<div class="a-main-word">
   			<img src="/static/public/images/ex_icon2.png" class="word-img"/>
   			费用：凭邀请函免费
   		</div>
   		<div class="a-main-word">
   			<img src="/static/public/images/ex_icon5.png" class="word-img"/>
   			地点：湖北省武汉市武昌区积玉桥万达威斯汀酒店
   		</div>
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
			<p class="p1" style="margin-bottom:30px;">星光璀璨 邀您共享！ </p>
			
			<p class="p1">八方齐聚，共襄盛举。</p>
			<p class="p1" style="margin-bottom:30px;">诚邀阁下拨冗莅临！</p>
			
			<p class="p1">本次活动凭邀请函入场，欢迎致电咨询。</p>
			<p class="p1">刘媛：13098823668</p>
			<p class="p1">周丹：18672911319</p>
			<p class="p1">陈明：18607103667</p>
   		</div>
   		<a onclick="location.href='/app/activityRegView.jhtml'" href="javascript:void(0);" class="ex_btn">我要报名（已有0人报名）</a>
   		<a href="javascript:void(0);" onclick="location.href='/app/activityUsers.jhtml'" class="btn_general btn3">查看已报名人员信息</a>
   		
   		<div class="footer2 gradient_7 box_shadow_1">
		    <a onclick="location.href='/activity.jhtml'" href="javascript:void(0);"><div class="footer2_left fl">首页</div></a>
		     <div class="fr">
		        <a onclick="location.href='/activityReg.jhtml'" href="javascript:void(0);">
		            <div class="footer2_right fl">
		            	<div class="footer2_right_2">报名</div>
		            </div>
		        </a>
		        <a onclick="window.location.reload();" href="javascript:void(0);"><div class="footer2_right fl"><div class="footer2_right_2">刷新</div></div></a>
		     </div>
		</div>
		
   		<div class="a-main-word" style="text-align:center;background:#ECECEC;font-size: 15px;">
   			&copy;跨界天下
   		</div>
   	</div>
  </body>
</html>
