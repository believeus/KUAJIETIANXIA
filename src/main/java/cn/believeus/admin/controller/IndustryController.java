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
import cn.believeus.model.Industry;
import cn.believeus.service.BaseService;

@Controller
public class IndustryController {
	
	private static final Log log=LogFactory.getLog(IndustryController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 产业列表
	 * @return
	 */
	@RequiresPermissions("industry:view")
	@RequestMapping(value="/admin/industry/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From Industry news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("industry", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);

		return "/WEB-INF/back/industry/list.jsp";
	}
	
	/**
	 * 产业添加
	 * @return
	 */
	@RequestMapping(value="/admin/industry/add")
	public String add(){
		return "/WEB-INF/back/industry/add.jsp";
	} 
	
	/**
	 * 产业保存
	 * @return
	 * */
	@RequiresPermissions("industry:create")
	@RequestMapping(value="/admin/industry/save")
	public String save(Industry industry,HttpServletRequest request){
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
			industry.setPath(storepath);
		}
		baseService.saveOrUpdata(industry);
		return "redirect:/admin/industry/list.jhtml";
	}
	/**
	 * 产业修改
	 * @return
	 */
	@RequiresPermissions("industry:update")
	@RequestMapping(value="/admin/industry/edit")
	public String edit(Integer id, HttpServletRequest request){
		Industry industry = (Industry) baseService.findObject(Industry.class, id);
		request.setAttribute("industry", industry);
		return "/WEB-INF/back/industry/edit.jsp";
	}
	
	/**
	 * 产业删除
	 * @return
	 */
	@RequiresPermissions("industry:delete")
	@RequestMapping(value="/admin/industry/delete")
	public @ResponseBody String cultureDel(Integer[] ids){
		List<Integer> list = Arrays.asList(ids); 
		baseService.delete(Industry.class, list);
		return "{\"type\":\"success\"}";
	}
}