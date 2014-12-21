package cn.believeus.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.believeus.PaginationUtil.Page;
import cn.believeus.PaginationUtil.Pageable;
import cn.believeus.PaginationUtil.PaginationUtil;
import cn.believeus.model.FriendLink;
import cn.believeus.model.Industry;
import cn.believeus.service.BaseService;

@Controller
public class ControllerIndustry {
	@Resource
	private BaseService baseService;
	/**
	 * 集团产业
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/industryList")
	public String list(HttpServletRequest request) {
		// 查看集团产业
		
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		Page<?> page = baseService.findObjectList(Industry.class, pageable);
		request.setAttribute("page", page);
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);
		//友情链接
		List<FriendLink> links = (List<FriendLink>) baseService.findObjectList(FriendLink.class);
		request.setAttribute("links", links);
		request.setAttribute("lsize", links.size());
		return "/WEB-INF/front/industryList.jsp";
	}
}
