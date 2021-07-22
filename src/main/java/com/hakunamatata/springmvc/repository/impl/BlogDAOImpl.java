package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.repository.BlogDAO;
import com.hakunamatata.springmvc.repository.DAO;
/**
 * @author Hai Van
 *
 */

@Repository
public class BlogDAOImpl implements BlogDAO {
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(Blog vo) {
		// TODO Auto-generated method stub
		session.insert("Blog.insert", vo);		
	}

	@Override
	public void update(Blog vo) {
		// TODO Auto-generated method stub
		session.update("Blog.update", vo);
	}

	@Override
	public void delete(Blog vo) {
		// TODO Auto-generated method stub
		session.delete("Blog.delete", vo);
	}

	@Override
	public Blog get(Blog vo) {
		// TODO Auto-generated method stub
		return (Blog)session.selectOne("Blog.selectOne", vo);
	}

	@Override
	public List<Blog> list(Blog vo) {
		return session.selectList("Blog.selectList", vo);
	}

	@Override
	public List<Blog> getBlogLimit() {
		// TODO Auto-generated method stub
		return session.selectList("Blog.getBlogLimit");
	}

}
