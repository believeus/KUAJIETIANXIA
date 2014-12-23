package cn.believeus.app.admin.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.believeus.model.app.TmobileUser;
import cn.believeus.model.app.Tvariables;
import cn.believeus.service.BaseService;

@Controller
public class ActivityAdminController {

	@Resource
	private BaseService baseService;
	@RequestMapping("/app/adminLogin")
	public  @ResponseBody String adminLogin(String password){
		if(!StringUtils.isEmpty(password)){
			Tvariables variables = (Tvariables) baseService.findObject(Tvariables.class, "name", "password");
			if (password.equals(variables.getValue())) {
				return "/app/activityUsers.jhtml";
			}
		}
		return "error";
	}
	
	@RequestMapping("/app/userDelete")
	public String activityDeleteUser(Integer uid){
		baseService.delete(TmobileUser.class, uid);
		return "redirect:/app/activityUsers.jhtml";
	}
}
