package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Book;
import com.hakunamatata.springmvc.repository.BookDAO;
/**
 * @author Manh
 *
 */
@Repository
public class BookDAOImpl implements BookDAO {
	
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void insert(Book vo) {
		session.insert("Book.insert",vo);

	}

	@Override
	public void update(Book vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Book vo) {
		session.delete("Book.delete",vo);

	}

	@Override
	public Book get(Book vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Book.selectOne",vo);
	}

	@Override
	public List<Book> list(Book vo) {
		// TODO Auto-generated method stub
		return session.selectList("Book.selectAll",null);
	}

	@Override
	public Book getIdMax() {
		return session.selectOne("Book.selectMax");
	}

}
