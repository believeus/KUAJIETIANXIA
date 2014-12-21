package cn.believeus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerActivityAddress {
	
	@RequestMapping("/activityAddress")
	public String activityAddressView(){
		return "/WEB-INF/front/activityAddress.jsp";
	}
}
