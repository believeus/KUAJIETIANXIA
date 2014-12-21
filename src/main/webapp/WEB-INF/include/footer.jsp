<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sub-footer">
	<div class="footer-li-link">
		<span class="friend-link-span">友情链接:</span>
		<ul style=" height: 40px; margin-left: auto; margin-right: auto;">
			<c:forEach items="${links }" var="link" varStatus="status">
				<c:if test="${status.index < 15 }">
					<c:if test="${status.index < lsize }">
						<li <c:if test="${(status.index+1)== 15 }">style="border-right: 0;"</c:if> >
							<a href="${link.url }">${link.name }</a>
						</li>
					</c:if>
					<c:if test="${status.index >= lsize }">
						<li <c:if test="${(status.index+1)== lsize }">style="border-right: 0;"</c:if> >
							<a href="${link.url }">${link.name }</a>
						</li>
					</c:if>
				</c:if>
			</c:forEach>
		</ul>
	</div>
	<div class="footer-li">
		<ul style="width: 800px; height: 40px; margin-left: auto; margin-right: auto;">
			<li><a href="/">跨界天下</a></li>
			<li><a href="/introduction.jhtml">集团介绍</a></li>
			<li><a href="/honor.jhtml">资质荣誉</a></li>
			<li><a href="/zixunList.jhtml">集团资讯</a></li>
			<li><a href="/industryList.jhtml">集团产业</a></li>
			<li><a href="/cultureList.jhtml">集团文化</a></li>
			<li><a href="/straddling.jhtml">招商合作</a></li>
			<li><a href="/contactus.jhtml">联系我们</a></li>
			<li style="border-right: 0;"><a href="/kjtxsearch.jhtml">站内搜索</a></li>
		</ul>
	</div>
	<div class="sub-footer-content">
		Copyright &copy; 2014 湖北银德财富创业投资有限公司All Rights Reserved 沪ICP备88888888号-34
	</div>
</div>
