package cn.believeus.admin.controller;

import java.io.IOException;
import java.io.InputStream;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import cn.believeus.PaginationUtil.Page;
import cn.believeus.PaginationUtil.Pageable;
import cn.believeus.PaginationUtil.PaginationUtil;
import cn.believeus.model.Culture;
import cn.believeus.model.Tnews;
import cn.believeus.service.BaseService;

@Controller
public class CultureController {
	
	private static final Log log=LogFactory.getLog(CultureController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 文化列表
	 * @return
	 */
	@RequiresPermissions("culture:view")
	@RequestMapping(value="/admin/culture/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From Culture news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("cultures", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);

		return "/WEB-INF/back/culture/list.jsp";
	}
	
	/**
	 * 新闻添加
	 * @return
	 */
	@RequestMapping(value="/admin/culture/add")
	public String add(){
		return "/WEB-INF/back/culture/add.jsp";
	} 
	
	/**
	 * 新闻保存
	 * @return
	 * */
	@RequiresPermissions("culture:create")
	@RequestMapping(value="/admin/culture/save")
	public String save(Culture culture,HttpServletRequest request){
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		String storepath = "";
		Map<String, MultipartFile> files = multipartRequest.getFileMap();
		for (MultipartFile file : files.values()) {
			InputStream inputStream;
			try {
				inputStream = file.getInputStream();
				if(inputStream.available()==0){
					break;
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
			culture.setPath(storepath);
		}
		baseService.saveOrUpdata(culture);
		return "redirect:/admin/culture/list.jhtml";
	}
	/**
	 * 文化修改
	 * @return
	 */
	@RequiresPermissions("culture:update")
	@RequestMapping(value="/admin/culture/edit")
	public String edit(Integer id, HttpServletRequest request){
		Culture culture = (Culture) baseService.findObject(Culture.class, id);
		request.setAttribute("culture", culture);
		return "/WEB-INF/back/culture/edit.jsp";
	}
}