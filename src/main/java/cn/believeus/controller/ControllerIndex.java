package cn.believeus.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	@RequestMapping(value = "/index")
	public String index(HttpServletRequest request) {
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
