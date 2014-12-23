package cn.believeus.app.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import mydfs.storage.server.MydfsTrackerServer;

import org.junit.Assert;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.believeus.model.app.TmobileUser;
import cn.believeus.service.BaseService;
import cn.believeus.util.PropertiesHelp;


@Controller
public class ControllerActivity {
	@Resource
	private BaseService baseService;
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	/**
	 * 活动报名
	 * @return
	 */
	@RequestMapping("/app/activity")
	public String activity(HttpServletRequest request){
		Integer accessCount = Integer.parseInt(PropertiesHelp.getValueByKey("project.properties", "accessCount"));
		++accessCount;
		PropertiesHelp.setValueByKey("/project.properties", "accessCount", accessCount+"");
		Long size = baseService.findSize(TmobileUser.class);
		request.setAttribute("size", size);
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
	public @ResponseBody String activityReg(HttpServletRequest request,TmobileUser mobileUser){
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
					mobileUser.setImgpath(storepath);
				} catch (IOException e) {
					e.printStackTrace();
				}
				baseService.merge(mobileUser);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
		
	}
	/**
	 * 查看信息
	 * @return
	 */
	@RequestMapping("/app/activityUsers")
	public String activityUsers(HttpServletRequest request){
		List<TmobileUser> users = (List<TmobileUser>) baseService.findObjectList(TmobileUser.class);
		request.setAttribute("users", users);
		request.setAttribute("size", users.size());
		return "/WEB-INF/app/front/activityUsers.jsp";
	}

}
