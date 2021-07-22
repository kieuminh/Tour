package com.hakunamatata.springmvc.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.LikeBlog;
import com.hakunamatata.springmvc.repository.LikeBlogDAO;
import com.hakunamatata.springmvc.service.LikeBlogService;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
@Service
public class LikeBlogServiceImpl implements LikeBlogService{
	
	@Autowired
	private LikeBlogDAO dao;

	@Override
	public void insert(LikeBlog vo) {
		// TODO Auto-generated method stub
		dao.insert(vo);
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
		dao.UpdateLike(vo);
	}

}
