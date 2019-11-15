package cn.xdl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xdl.bean.Knowledge;
import cn.xdl.dao.KnowledgeDao;

@Controller
public class KnowledgeController {

	@Autowired
	private KnowledgeDao kDao;
	@RequestMapping("/home")
	public String find(HttpServletRequest request) {
		int y=0;
		List<Knowledge> data = kDao.findAll(y);
		request.setAttribute("y", 1);
		request.setAttribute("data",data);
		return "home";
	}
	
	
	@RequestMapping("/home1")
	@ResponseBody
	public List<Knowledge>  find1(Integer y,HttpServletRequest request) {
		System.out.println(y);
		
		List<Knowledge> data = kDao.findAll(y);
//		request.setAttribute("y", y);
//		request.setAttribute("data",data);
		System.out.println(data);
		return data;
	}
}
