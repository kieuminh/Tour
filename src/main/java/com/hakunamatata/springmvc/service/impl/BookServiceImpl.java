package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Book;
import com.hakunamatata.springmvc.repository.BookDAO;
import com.hakunamatata.springmvc.service.BookService;
/**
 * @author Manh
 *
 */
@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDAO dao;
	@Override
	public void insert(Book vo) {
		dao.insert(vo);

	}

	@Override
	public void update(Book vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Book vo) {
		dao.delete(vo);

	}

	@Override
	public Book get(Book vo) {
		// TODO Auto-generated method stub
		return dao.get(vo);
	}

	@Override
	public List<Book> list(Book vo) {
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

	@Override
	public Book getIdMax() {
		// TODO Auto-generated method stub
		return dao.getIdMax();
	}

}
