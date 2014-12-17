package cn.believeus.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import mydfs.storage.server.MydfsTrackerServer;

import org.junit.Assert;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.believeus.PaginationUtil.Page;
import cn.believeus.PaginationUtil.Pageable;
import cn.believeus.PaginationUtil.PaginationUtil;
import cn.believeus.model.FriendLink;
import cn.believeus.service.BaseService;

@Controller
public class FriendLinkController {
	@Resource
	private BaseService baseService;
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	@RequestMapping("/admin/friendLink/list")
	public String friendLinkList(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		Page<?> page = baseService.findObjectList(FriendLink.class, pageable);
		request.setAttribute("friendLinks", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);
		return "/WEB-INF/back/friendLink/list.jsp";
	}
	@RequestMapping("/admin/friendLink/addView")
	public String addView(){
		return "/WEB-INF/back/friendLink/add.jsp";
	}
	@RequestMapping("/admin/friendLink/save")
	public String friendLinkSave(HttpServletRequest request,FriendLink friendLink){
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
			friendLink.setLogo(storepath);
		}
		baseService.saveOrUpdata(friendLink);
		return "redirect:/admin/friendLink/list.jhtml";
	}
	@RequestMapping("/admin/friendLink/editView")
	public String friendLinkEditView(HttpServletRequest request,int id){
		FriendLink friendLink=(FriendLink)baseService.findObject(FriendLink.class, id);
		request.setAttribute("friendLink", friendLink);
		return "/WEB-INF/back/friendLink/edit.jsp";
	}
	@RequestMapping("/admin/friendLink/delete")
	public String friendLinkDelete(int id){
		baseService.delete(FriendLink.class, id);
		return "redirect:/admin/friendLink/list.jhtml";
	}
	
	
}
