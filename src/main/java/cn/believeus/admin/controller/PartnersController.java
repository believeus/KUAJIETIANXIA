package cn.believeus.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import mydfs.storage.server.MydfsTrackerServer;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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
import cn.believeus.model.Industry;
import cn.believeus.model.Partners;
import cn.believeus.service.BaseService;

@Controller
public class PartnersController {
	
	private static final Log log=LogFactory.getLog(PartnersController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 合作伙伴列表
	 * @return
	 */
	@RequiresPermissions("partners:view")
	@RequestMapping(value="/admin/partners/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From Partners partners order by partners.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("partners", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);

		return "/WEB-INF/back/partners/list.jsp";
	}
	
	/**
	 * 合作伙伴添加
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/admin/partners/add")
	public String add(HttpServletRequest request){
		List<Industry> industries = (List<Industry>) baseService.findObjectList(Industry.class);
		request.setAttribute("industries", industries);
		return "/WEB-INF/back/partners/add.jsp";
	} 
	
	/**
	 * 合作伙伴保存
	 * @return
	 * */
	@RequiresPermissions("partners:create") 
	@RequestMapping(value="/admin/partners/save")
	public String save(Partners partners,HttpServletRequest request){
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
				if(file.getName().equals("logo-a")){
					partners.setLogo(storepath);
				}
				else if(file.getName().equals("img-a")){
					partners.setImg1(storepath);
				}
				else if (file.getName().equals("img-b")) {
					partners.setImg2(storepath);
				}
				else if (file.getName().equals("img-c")) {
					partners.setImg3(storepath);
				}
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String industryName = request.getParameter("industryName");
		Industry industry = (Industry) baseService.findObject(Industry.class, Integer.parseInt(industryName));
		partners.setIndustry(industry);
		baseService.saveOrUpdata(partners);
		return "redirect:/admin/partners/list.jhtml";
	}
	/**
	 * 合作伙伴修改
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequiresPermissions("partners:update")
	@RequestMapping(value="/admin/partners/edit")
	public String edit(Integer id, HttpServletRequest request){
		List<Industry> industries = (List<Industry>) baseService.findObjectList(Industry.class);
		request.setAttribute("industries", industries);
		Partners partners = (Partners) baseService.findObject(Partners.class, id);
		request.setAttribute("partners", partners);
		return "/WEB-INF/back/partners/edit.jsp";
	}
	
	/**
	 * 合作伙伴删除
	 * @return
	 */
	@RequiresPermissions("culture:delete")
	@RequestMapping(value="/admin/partners/delete")
	public @ResponseBody String cultureDel(Integer[] ids){
		List<Integer> list = Arrays.asList(ids); 
		baseService.delete(Partners.class, list);
		return "{\"type\":\"success\"}";
	}
	@RequestMapping(value="/admin/partners/deleteById")
	public  String deleteById(Integer id){
		baseService.delete(Partners.class, id);
		return "redirect:/admin/partners/list.jhtml";
	}
}