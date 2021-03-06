<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(function(){
		var href = window.location.pathname;
		//alert(href);
		$(".right a").each(function(){
			if(href == $(this).attr("href")){
				$(this).parent().parent().find("li").removeClass("active");
				$(this).parent().addClass("active");
			}
		});
		if("/zixunContent.jhtml" == href){
			$(".right a").each(function(){
				$(this).parent().parent().find("li").removeClass("active");
			});
			$("#zixun").addClass("active");
		}
		if("/industryPartners.jhtml" == href || "/kjtxabstract.jhtml" == href || "/kjtxproduct.jhtml" == href || "/productDetail.jhtml" ==href){
			$(".right a").each(function(){
				$(this).parent().parent().find("li").removeClass("active");
			});
			$("#chanye").addClass("active");
		}
		if("/cultureInfo.jhtml" == href){
			$(".right a").each(function(){
				$(this).parent().parent().find("li").removeClass("active");
			});
			$("#wenhua").addClass("active");
		}
	});
</script>
<!----start-top-header----->
<div class="top-header" id="header">
	<div class="wrap">
	<div class="top-header-left" style="color: #fff;font-size: 13px;line-height: 40px;">
		<!-- 欢迎您来到跨界天下！ -->
	</div>
	<div class="top-header-right" style="color: #fff;font-size: 13px;line-height: 40px;margin-right: 25px;padding-right:20px;">
		<span style="font-family:microsoft yahei;">
			<i class="phone-tel"></i>
			Call Us Now：400-8888-6666
		</span>
		<!-- <ul>
			<li><a class="face" href="#"><span> </span></a></li>
			<li><a class="twit" href="#"><span> </span></a></li>
			<li><a class="thum" href="#"><span> </span></a></li>
			<li><a class="pin" href="#"><span> </span></a></li>
			<div class="clear"> </div>
		</ul> -->
	</div>
	<div class="clear"> </div>
</div>
</div>
<!----//End-top-header----->
<!---start-header---->
<div class="header">
	<div class="wrap">
	<!--- start-logo---->
	<div class="logo" style="margin-top: 0px; z-index: 99;">
		<a href="/"><img src="/static/public/images/logo_h.png" height="106" title="跨界天下" /></a>
	</div>
	<!--- //End-logo---->
	<!--- start-top-nav---->
	<div class="top-nav">
			<ul class="flexy-menu thick orange">
				<li class="active"><a href="/">跨界天下</a></li>
				<li><a href="/introduction.jhtml">集团介绍</a>
					<ul>
						<li><a href="/introduction.jhtml">集团简介</a></li>
						<li><a href="/introduction.jhtml">总裁致辞</a></li>
						<li><a href="/introduction.jhtml">发展历程</a></li>
						<li><a href="/introduction.jhtml">组织架构</a></li>
					</ul>
				</li>
				<li><a href="/honor.jhtml">资质荣誉</a></li>
				<li id="zixun"><a href="/zixunList.jhtml">集团资讯</a>
					<ul>
						<li><a href="/zixunList.jhtml?type=0#0">综合资讯</a></li>
						<li><a href="/zixunList.jhtml?type=1#1">集团快讯</a></li>
						<li><a href="/zixunList.jhtml?type=2#2">高层动态</a></li>
						<li><a href="/zixunList.jhtml?type=3#3">集团公告</a></li>
					</ul>
				</li>
				<li id="chanye"><a href="/industryList.jhtml">集团产业</a>
					<ul>
						<li><a href="/industryList.jhtml">生物产业</a></li>
						<li><a href="/industryList.jhtml">信息产业</a></li>
						<li><a href="/industryList.jhtml">投资产业</a></li>
						<li><a href="/industryList.jhtml">餐饮产业</a></li>
						<li><a href="/industryList.jhtml">俱乐部产业</a></li>
					</ul>
				</li>
				<li id="wenhua"><a href="/cultureList.jhtml">集团文化</a>
				<li><a href="/straddling.jhtml">招商合作</a>
				<li><a href="#">会员中心</a>
				</li>
				<li><a href="/contactus.jhtml">联系我们</a>
					<ul>
						<li><a href="#">邮件咨询</a></li>
						<li><a href="#">客服咨询</a></li>
						<li><a href="#">售后咨询</a></li>
					</ul>
				</li>
				<li><a href="/kjtxsearch.jhtml">站内搜索</a>
			</ul>
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<!-- <a href="/kjtxsearch.jhtml" title="站内搜索">
						<img alt="站内搜索" src="/static/public/images/search-icon.png" width="32" height="32">
					</a> -->
					<!-- <form>
						<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search"> </span>
					</form> --> 	
				</div>
			</div>
			<!----search-scripts---->
			<script src="/static/public/js/kjtx/modernizr.custom.js"></script>
			<script src="/static/public/js/kjtx/classie.js"></script>
			<!-- <script src="/static/public/js/kjtx/uisearch.js"></script> -->
			<script>
				//new UISearch( document.getElementById( 'sb-search' ) );
			</script>
			<!----//search-scripts---->
	</div>
	<!--- //End-top-nav---->
	<div class="clear"> </div>
</div>
<!---//End-header---->
</div>
