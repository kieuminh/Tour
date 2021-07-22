package com.hakunamatata.springmvc.repository.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.LikeBlog;
import com.hakunamatata.springmvc.repository.LikeBlogDAO;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
@Repository
public class LikeBlogDAOImpl implements LikeBlogDAO{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(LikeBlog vo) {
		// TODO Auto-generated method stub
		session.insert("LikeBlog.insert", vo);
	}

	@Override
	public void update(LikeBlog vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(LikeBlog vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public LikeBlog get(LikeBlog vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LikeBlog> list(LikeBlog vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void UpdateLike(Map<Object, Object> vo) {
		// TODO Auto-generated method stub
		session.update("LikeBlog.updateBlog", vo);
	}

}
