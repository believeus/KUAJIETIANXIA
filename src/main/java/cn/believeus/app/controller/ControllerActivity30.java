package cn.believeus.app.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import mydfs.storage.server.MydfsTrackerServer;

import org.junit.Assert;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.believeus.PaginationUtil.Page;
import cn.believeus.PaginationUtil.Pageable;
import cn.believeus.PaginationUtil.PaginationUtil;
import cn.believeus.model.Partners;
import cn.believeus.model.Tnews;
import cn.believeus.model.app.TUser;
import cn.believeus.service.BaseService;


@Controller
public class ControllerActivity30 {
	@Resource
	private BaseService baseService;
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	/**
	 * 活动报名
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/app/activity")
	public String activity(HttpServletRequest request){
		Long size = baseService.findSize(TUser.class);
		request.setAttribute("size", size);
		String hql="from TUser user order by user.createTime desc ";
		List<TUser> users = (List<TUser>) baseService.findObjectList(hql,10);
		request.setAttribute("users", users);
		return "/WEB-INF/app/front/activity.jsp";
	}
	/**
	 * 信息填寫页面
	 * @return
	 */
	@RequestMapping("/app/activityRegView")
	public String activityRegView(HttpServletRequest request){
		return "/WEB-INF/app/front/activityRegist.jsp";
	}
	
	// 用户注册
	@RequestMapping("/app/activityReg")
	public  String activityReg(HttpServletRequest request,TUser mobileUser){
		try {
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			String storepath = "";
			Map<String, MultipartFile> files = multipartRequest.getFileMap();
			for (MultipartFile file : files.values()) {
				InputStream inputStream;
				try {
					inputStream = file.getInputStream();
					if(inputStream.available()==0){
						continue;
					}
					Assert.assertNotNull("upload file InputStream is null", inputStream);
					String originName=file.getOriginalFilename();
					String extention = originName.substring(originName.lastIndexOf(".") + 1);
					storepath = mydfsTrackerServer.upload(inputStream, extention);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			mobileUser.setCreateTime(System.currentTimeMillis());
			baseService.merge(mobileUser);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/app/activity.jhtml";
	}
	/**
	 * 查看信息
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/app/activityUsers")
	public String activityUsers(HttpServletRequest request){
		List<TUser> users = (List<TUser>) baseService.findObjectList(TUser.class);
		request.setAttribute("users", users);
		request.setAttribute("size", users.size());
		return "/WEB-INF/app/front/activityUsers.jsp";
	}
	
	@RequestMapping("/app/ajaxPhone")
	public @ResponseBody String ajaxPhone(String phone){
		TUser user = (TUser)baseService.findObject(TUser.class, "phone", phone);
		if (user!=null) {
			return "exist";
		}else {
			return "unexist";
		}
	}
	@RequestMapping("/app/ajaxWeiXin")
	public @ResponseBody String ajaxWeiXin(String weixin){
		TUser user = (TUser)baseService.findObject(TUser.class, "webxinCode", weixin);
		if (user!=null) {
			return "exist";
		}else {
			return "unexist";
		}
	}
	
	@RequestMapping("/app/index")
	public String index(){
		return "/WEB-INF/app/front/index.jsp";
	}
	
	@RequestMapping("/app/intro")
	public String intro(){
		return "/WEB-INF/app/front/intro.jsp";
	}
	
	@RequestMapping("/app/news")
	public String news(HttpServletRequest request){
		/*String hql = "from Tnews news order by news.editTime desc";
		List<Tnews> newsList = (List<Tnews>)baseService.findObjectList(hql);
		request.setAttribute("newsList", newsList);*/
		
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),10);
		String hql="From Tnews news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("news", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request, page.getPageNumber(),page.getTotalPages(), 0);
		
		return "/WEB-INF/app/front/news.jsp";
	}
	
	@RequestMapping("/app/newsInfo")
	public String newsInfo(Integer id,HttpServletRequest request){
		Tnews news = (Tnews)baseService.findObject(Tnews.class, id);
		request.setAttribute("news", news);
		return "/WEB-INF/app/front/newsInfo.jsp";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/app/enterprise")
	public String enterprise(HttpServletRequest request){
		String hql="from Partners p order by p.num desc ";
		List<Partners> partnersList = (List<Partners>)baseService.findObjectList(hql);
		request.setAttribute("partnersList", partnersList);
		return "/WEB-INF/app/front/enterprise.jsp";
	}
	
	@RequestMapping("/app/enterpriseInfo")
	public String enterpriseInfo(Integer id,HttpServletRequest request){
		Partners partners = (Partners)baseService.findObject(Partners.class, id);
		request.setAttribute("partners", partners);
		return "/WEB-INF/app/front/enterpriseInfo.jsp";
	}
	/**
	 * 引导页
	 * @return
	 */
	@RequestMapping("/app/flashPage")
	public String flashPage(HttpServletRequest request){
		return "/WEB-INF/app/front/flash_page.jsp";
	}
	
	@RequestMapping("/app/products")
	public String products(){
		return "/WEB-INF/app/front/products.jsp";
	}
	@RequestMapping("/app/productInfo")
	public String productInfo(){
		return "/WEB-INF/app/front/productInfo.jsp";
	}
	@RequestMapping("/app/productInfo2")
	public String productInfo2(){
		return "/WEB-INF/app/front/productInfo2.jsp";
	}

}
