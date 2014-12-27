<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>跨界天下-战略联盟详情</title>
	<meta content="target-densitydpi=get-target-densitydpi,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,width=device-width, user-scalable=no" name="viewport">
	<meta content="no" name="apple-touch-fullscreen">
	<meta name="format-detection" content="telephone=no">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<link rel="stylesheet" href="/static/public/css/style.css" />
	<script type="text/javascript" src="/static/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			
		});
	</script>
	<style type="text/css">
		body{
			margin:0;padding:0;
		}
		.kjtx-tel{
			background:none repeat scroll 0 0 #000;
			color:#fff;
			font-family: microsoft yahei;
			font-size:16px;
			text-align:center;
			height:40px;
			line-height:40px;
			position:fixed;
			top:0;
			width:100%;
			z-index:999;
		}
		.kjtx-tel a{
			color:#fff;
		}
		.kjtx-header{
			position:fixed;
			bottom:0;
			height:40px;
			background:#000;
			width:100%;
			z-index:999;
		}
		.kjtx-header-list{
			float:left;
			width:25%;
			height:40px;
			line-height:40px;
			text-align: center;
		}
		.kjtx-header-list a{
			font-family: microsoft yahei;
			font-size:16px;
			color:#fff;
		}
		.kjtx-logo{
			text-align: center;
			width:50%;
			margin:40px auto 0;
		}
		.big-img{
			background:#000;
			width:100%;
			height:auto;
			overflow: hidden;
			display:none;
			position:absolute;
			top:0;
			z-index:998;
			/* -webkit-transform: rotate(90deg);/*Safari 4+,Google Chrome 1+ 
			-moz-transform: rotate(90deg);/*Firefox 3.5+
			filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);/*ie*/ */
		}
		.big-img img{
			margin-top:100px;
		}
		.news-list{
			float:left;
			width:50%;
			font-family: microsoft yahei;
			font-size:16px;
			color:#666;
		}
		.news-title{
			text-align: center;
		}
		.content-news{
			text-align: left;margin-bottom: 50px;line-height:20px;text-indent: 20px;padding:0 10px;font-size: 14px;
		}
	</style>
  </head>
  <body>
  	<%-- <jsp:include page="/WEB-INF/include/header.jsp" /> --%>
  		<div class="kjtx-tel">
  			<span style="font-family:microsoft yahei;">
				<i class="phone-tel"></i>
				Call Us Now：<a href="tel://400-6565-0999">400-6565-0999</a>
			</span>
  		</div>
  		<div class="kjtx-logo">
  			<img src="/static/public/images/logo_h.png" width="100%"/>
  		</div>
  		
		<div class="kjtx-news">
			<p class="content-title">公司一</p>
			<p class="news-title">
	    		发稿时间：<span datetime="1419234974257" style="font-weight:normal" class="title-date">2014-12-22</span>&nbsp;&nbsp;&nbsp;
	    		来源：跨界天下
	   		</p>
	   		<div class="content-news">
	   			国庆６５周年前夕，澳门塔石广场上树立起一座三层楼高的“国庆牌楼”。在两旁棕色欧洲古典建筑的映衬下，这座古色古香的中式大红牌楼格外醒目，引来不少澳门市民和游客驻足留念。

　　牌楼楼额红底白字题写着“澳门同胞庆祝中华人民共和国成立六十五周年”和“热烈庆祝澳门回归祖国十五周年”。牌楼顶上，五星红旗迎风飘扬。国旗下“祖国富强、国泰民安、澳门繁荣、百业兴旺”１６个大字，是澳门人对祖国和家园的深情祝福。

　　“祖国好，澳门才会更好。”回归祖国１５年来的发展历程、澳门数百年来经历的风风雨雨，让澳门社会凝聚起了这样的共识，“一国两制”是地窄人 稠、资源贫乏的澳门最大的优势，而始终植根于广大澳门居民血液中的爱国爱澳优良传统，也凝聚升华为整个澳门社会的核心价值，并薪火相传，生生不息。

　　爱国理念代代传承

　　在澳门，“爱国爱澳”“一国两制”理念已深入人心。澳门理工学院一国两制研究中心自２０１１年以来持续进行的多次民意调查显示，“一国两制”和“爱国爱澳”始终稳居澳门社会核心价值观的前三位；超过八成的被调查者为自己是中国公民而自豪。

　　高票当选的澳门特区新一任行政长官崔世安对此深有感触。他说，通过参与这次选举，他更深刻感受到澳门社会几代人凝聚的和谐、包容、理性精神的可贵；进一步领略到弘扬爱国爱澳核心价值的深远意义。“我们要齐心协力将这些澳门优良传统发扬光大，代代承传。”

　　崔世安说，１５年来澳门之所以能取得显著的发展成就，与澳门居民普遍秉持“爱国爱澳”的价值观是密不可分的。“澳门是国家的一分子，要努力将澳门与国家连在一起，才能真正发展好。”

　　澳门的命运始终与祖国内地紧密相连，澳门民众的爱国传统源远流长。开埠数百年来，孤悬海外的澳门从来没有屈服于外来的侵略者，虽然长期华洋共处，但澳门同胞始终以中华文化为主体，与祖国血脉相连从不曾割断。

　　鸦片战争后，国家衰弱，占据澳门的葡萄牙殖民者趁火打劫，武力扩张地界，铲毁居民祖坟，烧杀抢掠，横征暴敛，制造多起血案，激起澳门同胞极大的愤慨。

　　即使是在相对平和的时期，殖民当局也是镇压与怀柔两手交替使用，欺压中国居民的事情屡见不鲜。早年间的葡籍市政稽查经常欺凌小商贩，动辄打骂或没收货物，澳门居民私下都厌恶地称之为“查牌鬼”。

　　不甘心生生世世受人欺侮的澳门人期盼祖国富强，渴望早日回到母亲的怀抱。在旧中国的苦难岁月里，老一辈澳门人不因祖国的贫弱而弃之不顾，积极投身祖国的救亡图存事业，做了中华儿女应做的事，尽了应尽的责任。

　　在关系民族生死存亡的抗日战争中，澳门人爱国爱澳的精神被充分激发，他们组成爱国社团，捐献筹款、派粥赠衣、开办义学，展开了大规模的抗日救亡活动。还有不少澳门青年奔赴前线英勇作战，为国捐躯。

　　在民间收藏家展示的一张１９４５年的月饼价目单上，４句标语至今仍清晰可见：“祖国胜利，世界和平，中秋佳节，赏月狂欢。”哪怕是一张小小的月饼纸，澳门的饼家也不忘共享抗战胜利的狂喜，澳门人的爱国传统令人感佩。

　　１９４９年新中国成立，澳门同胞欢欣鼓舞。澳门中华总商会主席何贤等人发起组织国庆筹委会，用搭建牌楼的方式庆祝国庆。此后每逢国庆节，全澳各区都会自发张灯结彩，并在主要街道搭建国庆牌楼，向澳门民众介绍祖国的发展成就。

　　早期的国庆牌楼是简单的竹棚松枝加花球，发展到后来就成为美轮美奂的艺术精品。这在物质并不充裕的五六十年前并非易事，但每次来自澳门各界的民 间力量总是团结协作，群策群力，为着一份爱国情，用澳门本地特色的艺术样式绘出心中的祖国样貌，也为尚未回归祖国的澳门增添了浓郁的节日气氛。

　　翻阅黑白老照片，天安门造型的国庆牌楼出现的次数最多。在去不了北京的澳门人心中，这就是他们的天安门。每年国庆，全家老小共赏牌楼、拍照留念，成为那个时代澳门人珍贵的共同记忆。这一传统一直延续到上世纪７０年代初，才被新的庆祝国庆方式取代。

　　今年新搭建的国庆牌楼两面，依然按惯例手绘制作了以颂扬国家建设发展成就和澳门回归后繁荣昌盛为主题的图画。曾多次参与国庆牌楼设计制作的澳门 美术协会会长黎鹰表示，此次再建国庆牌楼，就是希望有助老一辈重拾记忆，也让澳门的年轻人加深认识自己的城市，增强爱国爱澳情怀。
	   		</div>
		</div>
		
    	<div class="kjtx-header">
    		<div class="kjtx-header-list">
    			<a href="/app/index.jhtml">首页</a>
   			</div>
    		<div class="kjtx-header-list">
    			<a href="/app/intro.jhtml">集团简介</a>
   			</div>
    		<div class="kjtx-header-list">
    			<a href="/app/news.jhtml">集团资讯</a>
   			</div>
    		<div class="kjtx-header-list">
    			<a href="/app/enterprise.jhtml">战略联盟</a>
   			</div>
    	</div>
  </body>
</html>
