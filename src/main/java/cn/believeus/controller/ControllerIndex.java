package cn.believeus.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.believeus.model.*;
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
		request.setAttribute("bannerSize", banners.size());
		//集团文化
		List<Culture> cultures = (List<Culture>) baseService.findObjectList(Culture.class);
		request.setAttribute("cultures", cultures);
		request.setAttribute("cSize", cultures.size());
		//集团产业
		List<Industry> industries = (List<Industry>) baseService.findObjectList(Industry.class);
		request.setAttribute("industries", industries);
		request.setAttribute("iSize", industries.size());
		//集团资讯
		List<Information> informations = (List<Information>) baseService.findObjectList(Information.class);
		for (Information information : informations) {
			String content = information.getContent().replaceAll("<[^>]+>", "");
			information.setContent(content);
		}
		request.setAttribute("informations", informations);
		request.setAttribute("inSize", informations.size());
		//合作伙伴
		List<Partners> partners = (List<Partners>) baseService.findObjectList(Partners.class);
		request.setAttribute("partners", partners);
		request.setAttribute("pSize", partners.size());
		
		return "/WEB-INF/front/index.jsp";
	}
	
	/**
	 * 集团产业
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/destinations")
	public String list(HttpServletRequest request) {
		int size=6;
		// 查看集团产业
		@SuppressWarnings("unchecked")
		List<Industry> Industrys = (List<Industry>) baseService.findObjectList(Industry.class, size);
		request.setAttribute("industrys", Industrys);
		return "/WEB-INF/front/destinations.jsp";
	}
	/**
	 * 集团产业-公司列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/destinationsContent")
	public String content(HttpServletRequest request) {
		
		return "/WEB-INF/front/destinations_content.jsp";
	}
	
	/**
	 * 荣誉资质
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/honor")
	public String honor(HttpServletRequest request) {
		
		return "/WEB-INF/front/honor.jsp";
	}
	/**
	 * 招商合作
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/straddling")
	public String straddling(HttpServletRequest request) {
		
		return "/WEB-INF/front/straddling.jsp";
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
	 * 集团介绍
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/introduction")
	public String introduction(HttpServletRequest request) {
		return "/WEB-INF/front/introduction.jsp";
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
	
	/**
	 * 集团产业的相关公司
	 * 
	*/
	@RequestMapping("/industryPartners.jhtml")
	public String showIndustryList(HttpServletRequest request,Integer industryId){
		//获得产业
		Industry industry=(Industry)baseService.findObject(Industry.class, industryId);
		// 从产业中获取合作伙伴
		List<Partners> partners=null;
		if(industry!=null){
			partners = industry.getPartners();
		}
		request.setAttribute("partners", partners);
		return "/WEB-INF/front/industryPartners.jsp";
	}
	 /** 联系我们
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/contactus")
	public String contactus(HttpServletRequest request) {
		return "/WEB-INF/front/contactus.jsp";
	}
	/** 公司简介
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/kjtxabstract")
	public String kjtxabstract(HttpServletRequest request) {
		return "/WEB-INF/front/abstract.jsp";
	}
	/** 产品列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/kjtxproduct")
	public String product(HttpServletRequest request) {
		return "/WEB-INF/front/product.jsp";
	}

}
