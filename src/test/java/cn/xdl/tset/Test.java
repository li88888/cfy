package cn.xdl.tset;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.xdl.dao.KnowledgeDao;

public class Test {

	public static void main(String[] args) {

		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext.xml");
		KnowledgeDao bean = app.getBean("kd",KnowledgeDao.class);
		System.out.println(bean);
		System.out.println(bean.findAll());
	} 

}
