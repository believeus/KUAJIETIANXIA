package cn.believeus.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.believeus.model.Banner;
import cn.believeus.model.Culture;
import cn.believeus.model.Industry;
import cn.believeus.model.Information;
import cn.believeus.model.Partners;
import cn.believeus.service.BaseService;

/**
 * 首页面
 * */
@Controller
public class ControllerIndex {
	
	@Resource
	private BaseService baseService;

	/**
	 * 
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/index")
	public String index(HttpServletRequest request) {
		//banner
		List<Banner> banners = (List<Banner>) baseService.findObjectList(Banner.class);
		request.setAttribute("banners", banners);
		//集团文化
		List<Culture> cultures = (List<Culture>) baseService.findObjectList(Culture.class);
		request.setAttribute("cultures", cultures);
		//集团产业
		List<Industry> industries = (List<Industry>) baseService.findObjectList(Industry.class);
		request.setAttribute("industries", industries);
		//集团资讯
		List<Information> informations = (List<Information>) baseService.findObjectList(Information.class);
		request.setAttribute("informations", informations);
		//合作伙伴
		List<Partners> partners = (List<Partners>) baseService.findObjectList(Partners.class);
		request.setAttribute("partners", partners);
		
		return "/WEB-INF/front/index.jsp";
	}
	
	/**
	 * 集团产业
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/destinations")
	public String list(HttpServletRequest request) {
		return "/WEB-INF/front/destinations.jsp";
	}
	
	/**
	 * 集团资讯
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/zixunList")
	public String zixun(HttpServletRequest request) {
		return "/WEB-INF/front/zixunList.jsp";
	}
	/**
	 * 集团资讯
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/zixunContent")
	public String zixunContent(HttpServletRequest request) {
		return "/WEB-INF/front/zixunContent.jsp";
	}
	

}
