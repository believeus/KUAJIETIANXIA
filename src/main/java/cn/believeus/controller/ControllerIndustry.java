package cn.believeus.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		int size=6;
		// 查看集团产业
		@SuppressWarnings("unchecked")
		List<Industry> Industrys = (List<Industry>) baseService.findObjectList(Industry.class, size);
		request.setAttribute("industrys", Industrys);
		return "/WEB-INF/front/industryList.jsp";
	}
}
