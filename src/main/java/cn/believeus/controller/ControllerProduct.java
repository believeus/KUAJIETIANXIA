package cn.believeus.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		request.setAttribute("products", products);
		request.setAttribute("partners", partners);
		return "/WEB-INF/front/productList.jsp";
	}
	@RequestMapping("/productDetail")
	public String productView(HttpServletRequest request,Integer productId){
		Product product=(Product)baseService.findObject(Product.class, productId);
		request.setAttribute("product", product);
		return "/WEB-INF/front/product.jsp";
	}
}
