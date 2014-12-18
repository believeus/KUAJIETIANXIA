package cn.believeus.init;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import cn.believeus.model.EnterpriseIntro;
import cn.believeus.service.BaseService;

@Component
public class InitIntros implements ApplicationListener<ApplicationEvent> {

	@Resource
	private BaseService baseService;
	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		if(event instanceof ContextRefreshedEvent){
			List<?> objectList = baseService.findObjectList(EnterpriseIntro.class);
			if(objectList==null||objectList.isEmpty()){
				EnterpriseIntro ei1 = new EnterpriseIntro();
				ei1.setType("集团简介");
				ei1.setTitle("史上首个拨浪鼓藏品。");
				ei1.setPath("/static/public/images/honor_1.png");
				ei1.setContent("新华网北京12月16日电 据新华社“新华视点”微信报道，习近平总书记近日在江苏调研时强调，要“协调推进全面建成小康社会、全面深化改革、全面推进依法治国、全面从严治党，推动改革开放和社会主义现代化建设迈上新台阶。”");
				baseService.saveOrUpdata(ei1);
				EnterpriseIntro ei2 = new EnterpriseIntro();
				ei2.setType("总裁致辞");
				ei2.setTitle("史上首个拨浪鼓藏品。");
				ei2.setPath("/static/public/images/honor_1.png");
				ei2.setContent("新华网北京12月16日电 据新华社“新华视点”微信报道，习近平总书记近日在江苏调研时强调，要“协调推进全面建成小康社会、全面深化改革、全面推进依法治国、全面从严治党，推动改革开放和社会主义现代化建设迈上新台阶。”");
				baseService.saveOrUpdata(ei2);
				EnterpriseIntro ei3 = new EnterpriseIntro();
				ei3.setType("发展历程");
				ei3.setTitle("史上首个拨浪鼓藏品。");
				ei3.setPath("/static/public/images/honor_1.png");
				ei3.setContent("新华网北京12月16日电 据新华社“新华视点”微信报道，习近平总书记近日在江苏调研时强调，要“协调推进全面建成小康社会、全面深化改革、全面推进依法治国、全面从严治党，推动改革开放和社会主义现代化建设迈上新台阶。”");
				baseService.saveOrUpdata(ei3);
				EnterpriseIntro ei4 = new EnterpriseIntro();
				ei4.setType("组织架构");
				ei4.setTitle("史上首个拨浪鼓藏品。");
				ei4.setPath("/static/public/images/honor_1.png");
				ei4.setContent("新华网北京12月16日电 据新华社“新华视点”微信报道，习近平总书记近日在江苏调研时强调，要“协调推进全面建成小康社会、全面深化改革、全面推进依法治国、全面从严治党，推动改革开放和社会主义现代化建设迈上新台阶。”");
				baseService.saveOrUpdata(ei4);
			}
		}
	}

}
