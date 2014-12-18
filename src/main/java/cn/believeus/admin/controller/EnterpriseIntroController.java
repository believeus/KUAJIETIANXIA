package cn.believeus.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import mydfs.storage.server.MydfsTrackerServer;
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
import cn.believeus.model.EnterpriseIntro;
import cn.believeus.service.BaseService;

@Controller
public class EnterpriseIntroController {
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 集团简介
	 * @return
	 */
	@RequiresPermissions("introduction:view")
	@RequestMapping(value="/admin/introduction/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From EnterpriseIntro news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("enterpriseIntros", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);
		List<EnterpriseIntro> enterpriseIntros = new ArrayList<EnterpriseIntro>();
		if(page.getContent().size()==0){
			
		}else {
			request.setAttribute("enterpriseIntros", page.getContent());
		}

		return "/WEB-INF/back/introduction/list.jsp";
	}
	
	/**
	 * 集团简介添加
	 * @return
	 */
	@RequestMapping(value="/admin/introduction/add")
	public String add(){
		return "/WEB-INF/back/introduction/add.jsp";
	} 
	
	/**
	 * 集团简介保存
	 * @return
	 * */
	@RequiresPermissions("introduction:create")
	@RequestMapping(value="/admin/introduction/save")
	public String save(EnterpriseIntro enterpriseIntro,HttpServletRequest request){
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
			enterpriseIntro.setPath(storepath);
		}
		baseService.saveOrUpdata(enterpriseIntro);
		return "redirect:/admin/introduction/list.jhtml";
	}
	/**
	 * 集团简介修改
	 * @return
	 */
	@RequiresPermissions("introduction:update")
	@RequestMapping(value="/admin/introduction/edit")
	public String edit(Integer id, HttpServletRequest request){
		EnterpriseIntro enterpriseIntro = (EnterpriseIntro) baseService.findObject(EnterpriseIntro.class, id);
		request.setAttribute("enterpriseIntro", enterpriseIntro);
		return "/WEB-INF/back/introduction/edit.jsp";
	}
	
	/**
	 * 集团简介删除
	 * @return
	 */
	@RequiresPermissions("introduction:delete")
	@RequestMapping(value="/admin/introduction/delete")
	public @ResponseBody String cultureDel(Integer[] ids){
		List<Integer> list = Arrays.asList(ids); 
		baseService.delete(EnterpriseIntro.class, list);
		return "{\"type\":\"success\"}";
	}
}