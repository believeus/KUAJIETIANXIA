package cn.believeus.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import cn.believeus.model.app.Tvariables;
import cn.believeus.service.BaseService;


public class StatisticalCountFilter implements Filter {
	 WebApplicationContext springContext = ContextLoader.getCurrentWebApplicationContext(); 
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		BaseService baseService=(BaseService)springContext.getBean("baseService");
		Tvariables variables = (Tvariables) baseService.findObject(Tvariables.class, "name", "accessCount");
		Integer accessCount=Integer.parseInt(variables.getValue());
		variables.setValue(++accessCount+"");
		baseService.saveOrUpdata(variables);
		request.setAttribute("accessCount", accessCount);
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {

	}

}
