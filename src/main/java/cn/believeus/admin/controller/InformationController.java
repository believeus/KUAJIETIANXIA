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
import cn.believeus.model.Culture;
import cn.believeus.model.Information;
import cn.believeus.model.Partners;
import cn.believeus.service.BaseService;

@Controller
public class InformationController {
	
	private static final Log log=LogFactory.getLog(InformationController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 集团资讯列表
	 * @return
	 */
	@RequiresPermissions("information:view")
	@RequestMapping(value="/admin/information/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From Information news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("informations", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);

		return "/WEB-INF/back/information/list.jsp";
	}
	
	/**
	 * 集团资讯添加
	 * @return
	 */
	@RequestMapping(value="/admin/information/add")
	public String add(){
		return "/WEB-INF/back/information/add.jsp";
	} 
	
	/**
	 * 集团资讯保存
	 * @return
	 * */
	@RequiresPermissions("information:create")
	@RequestMapping(value="/admin/information/save")
	public String save(Information information,HttpServletRequest request){
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
			information.setPath(storepath);
		}
		baseService.saveOrUpdata(information);
		return "redirect:/admin/information/list.jhtml";
	}
	/**
	 * 集团资讯修改
	 * @return
	 */
	@RequiresPermissions("information:update")
	@RequestMapping(value="/admin/information/edit")
	public String edit(Integer id, HttpServletRequest request){
		Information information = (Information) baseService.findObject(Information.class, id);
		request.setAttribute("information", information);
		return "/WEB-INF/back/information/edit.jsp";
	}
	
	/**
	 * 集团资讯删除
	 * @return
	 */
	@RequiresPermissions("information:delete")
	@RequestMapping(value="/admin/information/delete")
	public @ResponseBody String cultureDel(Integer[] ids){
		List<Integer> list = Arrays.asList(ids); 
		baseService.delete(Information.class, list);
		return "{\"type\":\"success\"}";
	}
}