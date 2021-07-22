package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.repository.BlogDAO;
import com.hakunamatata.springmvc.repository.impl.BlogDAOImpl;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.ServiceInterface;
/**
 * @author Hai Van
 *
 */

@Service
//@Transactional
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDAO	blogDao;

	@Override
	public void insert(Blog vo) {
		blogDao.insert(vo);
	}

	@Override
	public void update(Blog vo) {
		blogDao.update(vo);
	}

	@Override
	public void delete(Blog vo) {
		blogDao.delete(vo);
	}

	@Override
	public Blog get(Blog vo) {
		return blogDao.get(vo);
	}

	@Override
	public List<Blog> list(Blog vo) {
		return blogDao.list(vo);
	}

	@Override
	public List<Blog> getBlogLimit() {
		// TODO Auto-generated method stub
		return blogDao.getBlogLimit();
	}

}
