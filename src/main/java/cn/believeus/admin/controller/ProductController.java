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
import cn.believeus.model.Information;
import cn.believeus.model.Partners;
import cn.believeus.model.Product;
import cn.believeus.service.BaseService;

@Controller
public class ProductController {
	
	private static final Log log=LogFactory.getLog(ProductController.class);
	
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;
	
	@Resource
	private BaseService baseService;

	/**
	 * 公司产品列表
	 * @return
	 */
	@RequiresPermissions("product:view")
	@RequestMapping(value="/admin/product/list")
	public String list(HttpServletRequest request){
		String pageNumber = request.getParameter("pageNumber");
		// 如果为空，则设置为1
		if (StringUtils.isEmpty(pageNumber)) {
			pageNumber="1";
		}
		Pageable pageable=new Pageable(Integer.valueOf(pageNumber),20);
		String hql="From Product news order by news.editTime desc";
		Page<?> page = baseService.findObjectList(hql, pageable);
		request.setAttribute("products", page.getContent());
		request.setAttribute("size",page.getTotal());
		// 分页
		PaginationUtil.pagination(request,page.getPageNumber(),page.getTotalPages(), 0);

		return "/WEB-INF/back/product/list.jsp";
	}
	
	/**
	 * 公司产品添加
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/admin/product/add")
	public String add(HttpServletRequest request){
		List<Partners> partners = (List<Partners>) baseService.findObjectList(Partners.class);
		request.setAttribute("partners", partners);
		return "/WEB-INF/back/product/add.jsp";
	} 
	
	/**
	 * 公司产品保存
	 * @return
	 * */
	@RequiresPermissions("product:create")
	@RequestMapping(value="/admin/product/save")
	public String save(Product product,HttpServletRequest request){
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
			product.setImgpath(storepath);
		}
		String partnersId = request.getParameter("partnerId");
		Partners partners = (Partners) baseService.findObject(Partners.class, Integer.parseInt(partnersId));
		product.setPartners(partners);
		baseService.saveOrUpdata(product);
		return "redirect:/admin/product/list.jhtml";
	}
	/**
	 * 公司产品修改
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequiresPermissions("product:update")
	@RequestMapping(value="/admin/product/edit")
	public String edit(Integer id, HttpServletRequest request){
		List<Partners> partners = (List<Partners>) baseService.findObjectList(Partners.class);
		request.setAttribute("partners", partners);
		Product product = (Product) baseService.findObject(Product.class, id);
		request.setAttribute("product", product);
		return "/WEB-INF/back/product/edit.jsp";
	}
	
	/**
	 * 公司产品删除
	 * @return
	 */
	@RequiresPermissions("product:delete")
	@RequestMapping(value="/admin/product/delete")
	public @ResponseBody String cultureDel(Integer[] ids){
		List<Integer> list = Arrays.asList(ids); 
		baseService.delete(Product.class, list);
		return "{\"type\":\"success\"}";
	}
}