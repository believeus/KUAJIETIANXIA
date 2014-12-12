package cn.believeus.admin.controller;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.believeus.model.EnterpriseInfo;
import cn.believeus.service.BaseService;

@Controller
public class EnterpriseInfoController {
	@Resource
	private BaseService baseService;

	/**
	 * 查看企业信息
	 * @return
	 */
	@RequestMapping(value="/admin/companyView")
	public String companyView(HttpServletRequest request){
		EnterpriseInfo enterpriseInfo = (EnterpriseInfo)baseService.findObject(EnterpriseInfo.class, 1);
		if (enterpriseInfo==null&&enterpriseInfo==null) {
			enterpriseInfo=new EnterpriseInfo();
			enterpriseInfo.setTel("027-65650999");
			enterpriseInfo.setWebsite("http://www.kuajietianxia.com");
			enterpriseInfo.setEmail("hbydcf@126.com");
			enterpriseInfo.setAddress("武汉市江汉区民权路长江大厦25楼");
			baseService.saveOrUpdata(enterpriseInfo);
		}
		request.setAttribute("enterpriseInfo", enterpriseInfo);
		return "/WEB-INF/back/enterpriseInfo/companyMsg.jsp";
	}
	
	/**
	 * 企业信息修改
	 * @return
	 */
	@RequiresPermissions("companyMsg:update")
	@RequestMapping(value="/admin/companyEdit")
	public String companyEdit(HttpServletRequest request){
		EnterpriseInfo enterpriseInfo = (EnterpriseInfo)baseService.findObject(EnterpriseInfo.class, 1);
		request.setAttribute("enterpriseInfo", enterpriseInfo);
		return "/WEB-INF/back/enterpriseInfo/edit.jsp";
	}
	
	/**
	 * 企业信息修改
	 * @return
	 */
	@RequiresPermissions("companyMsg:update")
	@RequestMapping(value="/admin/companyUpdate")
	public String companyUpdate(EnterpriseInfo enterpriseInfo,HttpServletRequest request){
		baseService.saveOrUpdata(enterpriseInfo);
		request.setAttribute("enterpriseInfo", enterpriseInfo);
		return "/WEB-INF/back/enterpriseInfo/companyMsg.jsp";
	}
}
