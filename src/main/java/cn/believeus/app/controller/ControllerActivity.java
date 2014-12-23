package cn.believeus.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerActivity {
	/**
	 * 活动报名
	 * @return
	 */
	@RequestMapping("/activity")
	public String activity(HttpServletRequest request){
		return "/WEB-INF/app/front/activity.jsp";
	}
	/**
	 * 信息填寫
	 * @return
	 */
	@RequestMapping("/activityReg")
	public String activityReg(HttpServletRequest request){
		return "/WEB-INF/app/front/activityRegist.jsp";
	}
	/**
	 * 查看信息
	 * @return
	 */
	@RequestMapping("/activityUsers")
	public String activityUsers(HttpServletRequest request){
		return "/WEB-INF/app/front/activityUsers.jsp";
	}

}
