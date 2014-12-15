<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"content="width=device-width, initial-scale=1"/>
<title>跨界天下-首页</title>
<link rel="stylesheet" href="/static/public/css/fonts.css" />
<link rel="stylesheet" href="/static/public/css/style.css" />
<link rel="stylesheet" href="/static/public/css/fwslider.css" />
<link rel="stylesheet" href="/static/public/css/jquery.bxslider.css" />
<link rel="stylesheet" href="/static/public/css/zalki_hover_img.css" />
<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/static/public/js/jquery.validate.js"></script>
<script type="text/javascript" src="/static/public/js/common.js"></script>
<script type="text/javascript" src="/static/public/js/input.js"></script>
<script type="text/javascript" src='/static/public/js/me.js'></script>
<script src="/static/public/js/kjtx/jquery.bxslider.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.bxslider').bxSlider({
			 auto: true,
				 autoControls: true,
			 minSlides: 4,
			 maxSlides: 4,
			 slideWidth:450,
			 slideMargin: 10
		});
	});
</script>
<!---smoth-scrlling---->
<script type="text/javascript">
	$(document).ready(function(){
		/* $('a[href^="#"]').on('click',function (e) {
		    e.preventDefault();
		    var target = this.hash,
		    $target = $(target);
		    $('html, body').stop().animate({
		        'scrollTop': $target.offset().top
		    }, 1000, 'swing', function () {
		        window.location.hash = target;
		    });
		}); */
	});
</script>
<!---//smoth-scrlling---->
<!----start-top-nav-script---->
<script type="text/javascript" src="/static/public/js/kjtx/flexy-menu.js"></script>
<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400,type: "horizontal",align: "right"});});</script>
<!----//End-top-nav-script---->
<!--start slider -->
<link rel="stylesheet" href="/static/public/css/fwslider.css" media="all" />
<script src="/static/public/js/kjtx/jquery-ui.min.js"></script>
<script src="/static/public/js/kjtx/css3-mediaqueries.js"></script>
<script src="/static/public/js/kjtx/fwslider.js"></script>
<!--end slider -->
<!---calender-style---->
<link rel="stylesheet" href="/static/public/css/jquery-ui.css" />
<!---//calender-style---->
<style type="text/css">
	a:hover{text-decoration:underline;color: #C20C0C;}
	.carousel li{
		width: 261px !important;
	}
	.caption-info-head {
	    height: 45px;
	    line-height:45px;
	}
</style>
</head>

<body>
 	<!----start-wrap---->
		<jsp:include page="/WEB-INF/include/header.jsp" />
		<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		           <!--  <div class="slide"> 
	                    <img src="/static/public/images/dingsheng.jpg" alt=""/>
		            </div> -->
		            <div class="slide">
		                <img src="/static/public/images/ding.jpg" alt=""/>
		            </div>
		            <div class="slide">
		                <img src="/static/public/images/yuzhou.jpg" alt=""/>
		            </div>
		            <div class="slide">
		                <img src="/static/public/images/banner1.jpg" alt=""/>
		            </div>
		            <div class="slide">
		                <img src="/static/public/images/banner2.jpg" alt=""/>
		            </div>
		            <div class="slide">
		                <img src="/static/public/images/banner3.jpg" alt=""/>
		            </div>
		        </div>
		        <div class="timers"> </div>
		        <div class="slidePrev"><span> </span></div>
		        <div class="slideNext"><span> </span></div>
		    </div>
		    <!--/slider -->
		</div>
		<!----start-offers---->
		<div class="offers">
			<div class="offers-head">
				<h3>跨界天下</h3>
				<p>物华天宝 荆楚雄风</p>
			</div>
			<!-- start content_slider -->
			<!-- FlexSlider -->
			 <!-- jQuery -->
			  <link rel="stylesheet" href="/static/public/css/flexslider.css" type="text/css" media="screen" />
			  <!-- FlexSlider -->
			  <script defer src="/static/public/js/kjtx/jquery.flexslider.js"></script>
			  <script type="text/javascript">
			    $(function(){
			      SyntaxHighlighter.all();
			    });
			    $(window).load(function(){
			      $('.flexslider').flexslider({
			        animation: "slide",
			        animationLoop: true,
			        itemWidth:250,
			        itemMargin: 5,
			        start: function(slider){
			          $('body').removeClass('loading');
			        }
			      });
			    });
			  </script>
			<!-- Place somewhere in the <body> of your page -->
				 <section class="slider">
		        <div class="flexslider carousel">
		          <ul class="slides">
		            <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/huanghelou.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">黄鹤楼&天下江上第一楼</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/huanghelou2.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">昔人已乘黄鹤去，此地空余黄鹤楼。</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/changjiangdaqiao.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">长江大桥&万里长江第一桥</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/changjiangdaqiao2.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head" style="line-height:20px;">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">风墙动，龟蛇静，起宏图。</a><br/><a href="#">一桥飞架南北，天堑变通途。</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		            <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/qingchuanqiao.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">晴川桥&万绿丛中一点红</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/qingchuanqiu2.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">晴川沥沥汉阳树，芳草萋萋鹦鹉洲。</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/huanghelou.png" />
		  	    	    <!----place-caption-info---->
		  	    	   <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">昔人已乘黄鹤去，此地空余黄鹤楼。</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/qingchuanqiu2.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">晴川沥沥汉阳树，芳草萋萋鹦鹉洲。</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		             <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/qingchuanqiao.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">晴川桥&万绿丛中一点红</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    	 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/changjiangdaqiao.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head" style="line-height:20px;">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">风墙动，龟蛇静，起宏图。</a><br/><a href="#">一桥飞架南北，天堑变通途。</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/changjiangdaqiao2.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">长江大桥&万里长江第一桥</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		  	    		 <li onclick="location.href='#';">
		  	    	    <img src="/static/public/images/qingchuanqiao.png" />
		  	    	    <!----place-caption-info---->
		  	    	    <div class="caption-info">
		  	    	    	 <div class="caption-info-head">
		  	    	    	 	<div class="caption-info-head-left">
			  	    	    	 	<h4><a href="#">晴川桥&万绿丛中一点红</a></h4>
			  	    	    	 	<!-- <span>Bonus Extras!</span> -->
		  	    	    	 	</div>
		  	    	    	 	<div class="caption-info-head-right">
		  	    	    	 		<span> </span>
		  	    	    	 	</div>
		  	    	    	 	<div class="clear"> </div>
		  	    	    	 </div>
		  	    	    </div>
		  	    	     <!----//place-caption-info---->
		  	    		</li>
		          </ul>
		        </div>
		      </section>
              <!-- //End content_slider -->
		</div>
		<!----//End-offers---->
		<!---start-holiday-types---->
			<div class="holiday-types">
				<div class="wrap">
					<div class="holiday-type-head">
						<h3>集团产业</h3>
						<span>跨界天下海纳百川，厚德载物!</span><br />
						<span>跨界天下抱诚守着，随喜乐退!</span>
					</div>
					<div class="holiday-type-grids">
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon1"> </span>
							<a href="#">生物产业</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon2"> </span>
							<a href="#">信息产品</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon3"> </span>
							<a href="#">投资产业</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon4"> </span>
							<a href="#">餐饮产业</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon5"> </span>
							<a href="#">俱乐部产业</a>
						</div>
						<div class="holiday-type-grid" onclick="location.href='#';">
							<span class="icon6"> </span>
							<a href="#">正在招商</a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				</div>
		<!---//End-holiday-types---->
		<!----//End-images-slider---->
		<!----start-clients---->
		<div class="clients">
			<div class="client-head">
				<h3>集团资讯</h3>
				<span>海阔凭鱼跃 天空任鸟飞</span>
			</div>
			<div class="client-grids">
				<ul class="bxslider">
				  <li>
				  	<p>乐退是个新生词汇，意思是说早点退休享受人生。有备而退，富足而退，健康而退，快乐而退。为自己、为家人筹划合理的养老计划。关注老年群体，建立属于中国老年人的上网社区，公益性网站，呼吁社会力量参与中国养老事业。</p>
				  	<a href="#">关于乐退</a>
				  	<span>关于乐退 <a href="#" style="display:inline;font-weight: normal;font-size: 1.1em;">显示更多&gt;&gt;</a></span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>在征求意见稿中拟要求证券期货经营机构对于“非标资产”的投资必须设立专项资产管理计划，而此项业务开展的前提是设立独立的子公司来开展业务。于基金而言，因为都是通过基金子公司开展该项业务，因此无需为此而烦恼。</p>
				  	<a href="#">集团快讯</a>
				  	<span>集团快讯 <a href="#" style="display:inline;font-weight: normal;font-size: 1.1em;">显示更多&gt;&gt;</a></span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>在征求意见稿中拟要求证券期货经营机构对于“非标资产”的投资必须设立专项资产管理计划，而此项业务开展的前提是设立独立的子公司来开展业务。于基金而言，因为都是通过基金子公司开展该项业务，因此无需为此而烦恼。</p>
				  	<a href="#">高层动态</a>
				  	<span>高层动态 <a href="#" style="display:inline;font-weight: normal;font-size: 1.1em;">显示更多&gt;&gt;</a></span>
				  	<label> </label>
				  </li>
				  <li>
				  	<p>一份针对机构私募资管的管理办法正在内部征求意见中，而这意味着以证监会大机构部成立为标志的、功能统一监管转型正式起步，此外，它还会给目前占据券商资管业务半壁江山的定向资管业务带来改变。</p>
				  	<a href="#">相关公告</a>
				  	<span>相关公告 <a href="#" style="display:inline;font-weight: normal;font-size: 1.1em;">显示更多&gt;&gt;</a></span>
				  	<label> </label>
				  </li>
				   <li>
				  	<p>乐退是个新生词汇，意思是说早点退休享受人生。有备而退，富足而退，健康而退，快乐而退。为自己、为家人筹划合理的养老计划。关注老年群体，建立属于中国老年人的上网社区，公益性网站，呼吁社会力量参与中国养老事业。</p>
				  	<a href="#">关于乐退</a>
				  	<span>关于乐退 <a href="#" style="display:inline;font-weight: normal;font-size: 1.1em;">显示更多&gt;&gt;</a></span>
				  	<label> </label>
				  </li>
				</ul>
			</div>
		</div>
		<!----//End-clients---->
		<!----start-footer---->
		<div class="footer">
			<div class="footer-content">
				<div class="client-head">
					<h3>合作伙伴</h3>
					<span>众志成城 联合梦想</span>
				</div>
				<div class="partners-list-parent">
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
					<div class="partners-list" style="margin-right:0;">
						<a href="#">
							<img src="/static/public/images/E8BA-1E00-42A3.png" height="170"/>
						</a>
					</div>
				</div>
				<!-- <div class="footer-content-left">
					<p class="content-left-title">跨界天下</p>
					<img src="/static/public/images/footerImg.png" />
				</div> -->
				<!-- <p class="content-left-title" style="margin-bottom:50px;text-align:center;">
					<span style="border-bottom: 2px solid #fff;display: block; margin: 0 auto;width: 150px;">在线咨询</span>
				</p>
				<div class="footer-content-middle" style="margin-top:0;">
					<p style="font-size: 21px;color: #fff;">恭候您的垂询</p>
					<p>咨询电话：027-65650999</p>
					<p>邮箱：hbydcf@126.com</p>
					<p>网址：www.eyinde.com</p>
					<p>地址：武汉市江汉区民权路长江大厦25楼</p>
				</div>
				<div class="footer-content-right">
					<form action="#" method="post">
						<table>
							<tr>
								<td><span>姓名</span></td>
								<td><span>Email</span></td>
							</tr>
							<tr>
								<td><input type="text" name="username" style="width:385px;height:34px;font-size:15px;border:1px solid #1d1d1d;background:#BCBCBC;margin-right: 75px;"/></td>
								<td><input type="text" name="email" style="width:385px;height:34px;font-size:15px;border:1px solid #1d1d1d;background:#BCBCBC;"/></td>
							</tr>
							<tr>
								<td colspan="2"><span>标题</span></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="text" name="title" style="width:850px;height:34px;font-size:15px;border:1px solid #1d1d1d;background:#BCBCBC;"/>
								</td>
							</tr>
							<tr>
								<td colspan="2"><span>内容</span></td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea name="content" style="width:850px;height:102px;resize:none;font-size:15px;border:1px solid #1d1d1d;background:#BCBCBC;"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align:right;">
									<input type="submit" value="提交" class="subBtn" style="margin:30px 80px 30px 0;"/>
									<input type="reset" value="重填" class="subBtn" />
								</td>
							</tr>
						</table>
					</form>
				</div> -->
			</div>
		</div>
		<jsp:include page="/WEB-INF/include/footer.jsp" />
		<!----//End-footer---->
		<style type="text/css">
			.flex-viewport{
				width: 1685px;
				margin:0 auto;
			}
			.slides img {
			    height: 210px;
			}
			.bx-viewport{
				height:160px !important;
			}
			.active li a{
				color:#dedede !important;
			}
			.active li a:hover{
				color:#8E2C2D !important;
			}
		</style>
</body>
</html>
