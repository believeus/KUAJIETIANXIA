package cn.believeus.init;

import javax.annotation.Resource;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import cn.believeus.model.app.Tvariables;
import cn.believeus.service.BaseService;

@Component
public class InitVariables implements ApplicationListener<ApplicationEvent> {

	@Resource
	private BaseService baseService;
	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		if(event instanceof ContextRefreshedEvent){
			Tvariables variables = (Tvariables) baseService.findObject(Tvariables.class, "name", "accessCount");
			if(variables==null){
				variables=new Tvariables();
				variables.setName("accessCount");
				variables.setValue("0");
				baseService.merge(variables);
			}
			variables = (Tvariables) baseService.findObject(Tvariables.class, "name", "password");
			if(variables==null){
				variables=new Tvariables();
				variables.setName("password");
				variables.setValue("000000");
				baseService.merge(variables);
			}
			
		}
	}

}
