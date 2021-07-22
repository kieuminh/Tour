package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Comment;
import com.hakunamatata.springmvc.repository.CommentDAO;

@Repository
public class CommentDAOImpl implements CommentDAO{
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(Comment vo) {
		// TODO Auto-generated method stub
		session.insert("Comment.insert", vo);
	}

	@Override
	public void update(Comment vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Comment vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Comment get(Comment vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Comment> list(Comment vo) {
		// TODO Auto-generated method stub
		return session.selectList("Comment.selectList", vo);
	}

	@Override
	public List<Comment> listComment(Comment vo) {
		// TODO Auto-generated method stub
		return session.selectList("Comment.selectListByBlog", vo);
	}

	@Override
	public List<Comment> listUserByBlogComment(int vo) {
		// TODO Auto-generated method stub
		return session.selectList("Comment.selectUserByBlogComment", vo);
	}
	
	

}
