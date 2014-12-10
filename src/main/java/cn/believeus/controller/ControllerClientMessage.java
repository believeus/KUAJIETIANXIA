package cn.believeus.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import cn.believeus.model.Tmessage;
import cn.believeus.service.BaseService;

@Controller
public class ControllerClientMessage {

	@Resource
	private BaseService baseService;
	@RenderMapping(value="/leaveMessage")
	public @ResponseBody String leaveMsg(Tmessage message){
		String result="";
		try {
			baseService.merge(message);
			result="留言发送成功";
		} catch (Exception e) {
			result="留言发送失败";
		}
		return result;
	}
}
