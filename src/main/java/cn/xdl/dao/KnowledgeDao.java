package cn.xdl.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.xdl.bean.Knowledge;
@Service("kd")
public interface KnowledgeDao {
	
	List<Knowledge> findAll(int y);

}
