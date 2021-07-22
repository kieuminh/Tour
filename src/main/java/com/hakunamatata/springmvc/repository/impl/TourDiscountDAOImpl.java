package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.TourDiscount;
import com.hakunamatata.springmvc.repository.TourDiscountDAO;
/**
 * @author Manh
 *
 */
@Repository
public class TourDiscountDAOImpl implements TourDiscountDAO {
	@Autowired 
	private SqlSessionTemplate session;
	@Override
	public void insert(TourDiscount vo) {
		session.insert("TourDiscount.insert",vo);

	}

	@Override
	public void update(TourDiscount vo) {
		session.insert("TourDiscount.update",vo);

	}

	@Override
	public void delete(TourDiscount vo) {
		

	}

	@Override
	public TourDiscount get(TourDiscount vo) {
		// TODO Auto-generated method stub
		return session.selectOne("TourDiscount.get", vo);
	}

	@Override
	public List<TourDiscount> list(TourDiscount vo) {
		// TODO Auto-generated method stub
		return session.selectList("TourDiscount.list",null);
	}

	@Override
	public void insert(List<TourDiscount> list) {
		
		session.insert("TourDiscount.insert",list);
	}

	@Override
	public void delete(List<TourDiscount> list) {
		
		session.insert("TourDiscount.delete",list);
		
	}



}
