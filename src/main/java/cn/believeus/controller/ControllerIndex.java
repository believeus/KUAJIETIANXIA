package cn.believeus.controller;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.believeus.PaginationUtil.Page;
import cn.believeus.PaginationUtil.Pageable;
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
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/honor")
	public String honor(HttpServletRequest request) {
		List<Honor> honors = (List<Honor>) baseService.findObjectList(Honor.class);
		for (Honor honor : honors) {
			System.out.println(new Date(honor.getEditTime()));
		}
		request.setAttribute("honors", honors);
		return "/WEB-INF/front/honor.jsp";
	}
	/**
	 * 招商合作
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/straddling")
	public String straddling(HttpServletRequest request) {
		List<Partners> partners = (List<Partners>) baseService.findObjectList(Partners.class);
		request.setAttribute("partners", partners);
		return "/WEB-INF/front/straddling.jsp";
	}
	
	/**
	 * 集团资讯
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/zixunList")
	public String zixun(HttpServletRequest request ,Integer type) {
		if(type==null){
			type=0;
		}
		List<Tnews> news = (List<Tnews>) baseService.findObjectList(Tnews.class,"type",type);
		request.setAttribute("news", news);
		return "/WEB-INF/front/zixunList.jsp";
	}
	/**
	 * 集团介绍
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/introduction")
	public String introduction(HttpServletRequest request) {
		List<EnterpriseIntro> eis = (List<EnterpriseIntro>) baseService.findObjectList(EnterpriseIntro.class);
		request.setAttribute("enterpriseIntros", eis);
		return "/WEB-INF/front/introduction.jsp";
	}
	/**
	 * 集团资讯
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/zixunContent")
	public String zixunContent(HttpServletRequest request,Integer id) {
		Tnews news=(Tnews)baseService.findObject(Tnews.class, id);
		request.setAttribute("news", news);
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
		request.setAttribute("industry", industry);
		request.setAttribute("partners", partners);
		return "/WEB-INF/front/industryPartners.jsp";
	}
	/**
	 * 客户留言
	 * */
	@RequestMapping("/clientLeaveMsg")
	public @ResponseBody String leaveMsg(Tmessage message,HttpServletRequest request){
		String result="";
		try {
			baseService.merge(message);
			result="留言发送成功";
		} catch (Exception e) {
			result="留言发送失败";
		}
		return result;
	}
	 /** 联系我们
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/contactus")
	public String contactus(HttpServletRequest request) {
		String hql="from EnterpriseInfo";
		EnterpriseInfo enterpriseInfo=(EnterpriseInfo)baseService.findObject(hql);
		request.setAttribute("enterpriseInfo", enterpriseInfo);
		return "/WEB-INF/front/contactus.jsp";
	}
	/** 公司简介
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/kjtxabstract")
	public String kjtxabstract(HttpServletRequest request,int id) {
		Partners partners=(Partners)baseService.findObject(Partners.class, id);
		request.setAttribute("partners", partners);
		return "/WEB-INF/front/abstract.jsp"; 
	}
//	/** 产品列表
//	 * @param request
//	 * @return
//	 */
//	@RequestMapping(value = "/kjtxproduct")
//	public String product(HttpServletRequest request,Integer partnerId) {
//		Partners partners=(Partners)baseService.findObject(Partners.class, partnerId);
//		List<Product> products = partners.getProducts();
//		request.setAttribute("products", products);
//		request.setAttribute("partners", partners);
//		return "/WEB-INF/front/productList.jsp";
//	}
	/**
	 * 集团文化
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cultureList")
	public String product(HttpServletRequest request) {
		List<Culture> cultures = (List<Culture>) baseService.findObjectList(Culture.class);
		request.setAttribute("cultures", cultures);
		return "/WEB-INF/front/cultureList.jsp";
	}
	
	/** 站内搜索
	 * @param request
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/kjtxsearch")
	public String searchView(HttpServletRequest request) {
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		String hql="from Tnews news";
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		Page<?> page = (Page<?>) baseService.findObjectList(hql, pageable);
		request.setAttribute("page", page);
		for (Tnews news: (List<Tnews>)page.getContent()) {
			news.setContent(news.getContent().replaceAll("<[^>]+>", ""));
		}
		request.setAttribute("news", page.getContent());
		return "/WEB-INF/front/searchNews.jsp";
	}

	/**
	 * 查询公司，新闻，产品
	 * */
	@RequestMapping("/search")
	public String search(String keywords,String item,HttpServletRequest request){
		String hql="";
		String url="";
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		if(item.equals("news")){
			hql="from Tnews news";
			if(!StringUtils.isEmpty(keywords)){
				hql+=" where news.title like '%"+keywords+"%' or news.content like '%"+keywords+"%'";
				url="/WEB-INF/front/searchNews.jsp";
			}
		}
		else if (item.equals("product")){
			hql="from Product product";
			if(!StringUtils.isEmpty(keywords)){
				hql+=" where product.name like '%"+keywords+"%'";
			}
			url="/WEB-INF/front/searchProduct.jsp";
		}
		else if(item.equals("company")) {
			hql="from Partners partners";
			if(!StringUtils.isEmpty(keywords)){
				hql+=" where partners.name like '%"+keywords+"%'";
			}
			url="/WEB-INF/front/searchPartners.jsp";
		}
		Page<?> page = (Page<?>) baseService.findObjectList(hql, pageable);
		request.setAttribute("page", page);
		return url;
	}
}
