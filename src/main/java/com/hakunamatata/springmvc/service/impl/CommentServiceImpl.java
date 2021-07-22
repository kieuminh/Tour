package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Comment;
import com.hakunamatata.springmvc.repository.CommentDAO;
import com.hakunamatata.springmvc.service.CommentService;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDAO dao;

	@Override
	public void insert(Comment vo) {
		// TODO Auto-generated method stub
		dao.insert(vo);
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
		return dao.list(vo);
	}

	@Override
	public List<Comment> listComment(Comment vo) {
		// TODO Auto-generated method stub
		return dao.listComment(vo);
	}

	@Override
	public List<Comment> listUserByBlogComment(int vo) {
		// TODO Auto-generated method stub
		return dao.listUserByBlogComment(vo);
	}

}
