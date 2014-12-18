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
import cn.believeus.model.Honor;
import cn.believeus.service.BaseService;

@Controller
public class HonorController {
	
	private static final Log log=LogFactory.getLog(HonorController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 资质荣誉列表
	 * @return
	 */
	@RequiresPermissions("honor:view")
	@RequestMapping(value="/admin/honor/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From honor news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("honors", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);
		return "/WEB-INF/back/honor/list.jsp";
	}
	
	/**
	 * 资质荣誉添加
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/admin/honor/add")
	public String add(HttpServletRequest request){
		List<Honor> honors = (List<Honor>) baseService.findObjectList(Honor.class);
		request.setAttribute("honors", honors);
		return "/WEB-INF/back/honor/add.jsp";
	} 
	
	/**
	 * 资质荣誉保存
	 * @return
	 * */
	@RequiresPermissions("honor:create")
	@RequestMapping(value="/admin/honor/save")
	public String save(Honor honor,HttpServletRequest request){
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
				storepath += mydfsTrackerServer.upload(inputStream, extention);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		if (!storepath.equals("")) {
			honor.setImgpath(storepath);
		}
		baseService.saveOrUpdata(honor);
		return "redirect:/admin/honor/list.jhtml";
	}
	/**
	 * 资质荣誉修改
	 * @return
	 */
	@RequiresPermissions("honor:update")
	@RequestMapping(value="/admin/honor/edit")
	public String edit(Integer id, HttpServletRequest request){
		Honor honor = (Honor) baseService.findObject(Honor.class, id);
		request.setAttribute("honor", honor);
		return "/WEB-INF/back/honor/edit.jsp";
	}
	
	/**
	 * 资质荣誉删除
	 * @return
	 */
	@RequiresPermissions("honor:delete")
	@RequestMapping(value="/admin/honor/delete")
	public @ResponseBody String cultureDel(Integer[] ids){
		List<Integer> list = Arrays.asList(ids); 
		baseService.delete(Honor.class, list);
		return "{\"type\":\"success\"}";
	}
}