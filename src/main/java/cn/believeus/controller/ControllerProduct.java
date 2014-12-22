package cn.believeus.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.believeus.model.FriendLink;
import cn.believeus.model.Partners;
import cn.believeus.model.Product;
import cn.believeus.service.BaseService;

@Controller
public class ControllerProduct {
	
	@Resource
	private BaseService baseService;
	/** 产品列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/kjtxproduct")
	public String productList(HttpServletRequest request,Integer partnerId) {
		Partners partners=(Partners)baseService.findObject(Partners.class, partnerId);
		List<Product> products = partners.getProducts();
		for (Product product : products) {
			product.setDescption(product.getDescption().replaceAll("<[^>]+>", ""));
		}
		request.setAttribute("products", products);
		request.setAttribute("partners", partners);
		//友情链接
		List<FriendLink> links = (List<FriendLink>) baseService.findObjectList(FriendLink.class);
		request.setAttribute("links", links);
		request.setAttribute("lsize", links.size());
		return "/WEB-INF/front/productList.jsp";
	}
	@RequestMapping("/productDetail")
	public String productView(HttpServletRequest request,Integer productId){
		Product product=(Product)baseService.findObject(Product.class, productId);
		request.setAttribute("product", product);
		//友情链接
		List<FriendLink> links = (List<FriendLink>) baseService.findObjectList(FriendLink.class);
		request.setAttribute("links", links);
		request.setAttribute("lsize", links.size());
		return "/WEB-INF/front/product.jsp";
	}
}
