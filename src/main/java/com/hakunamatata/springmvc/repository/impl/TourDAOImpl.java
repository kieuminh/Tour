package com.hakunamatata.springmvc.repository.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.repository.TourDAO;
/**
 * @author Manh
 * @author Huynh Thi Tuyet Ngoc
 *
 */
@Repository
public class TourDAOImpl implements TourDAO{
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void insert(Tour vo) {
		session.insert("Tour.insert", vo);
	
		
	}

	@Override
	public void update(Tour vo) {
		session.update("Tour.update",vo);
		
	}

	@Override
	public void delete(Tour vo) {
		session.update("Tour.delete",vo);
		
	}

	@Override
	public Tour get(Tour vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Tour.selectOne",vo);
	}

	@Override
	public List<Tour> list(Tour vo) {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getList", null);
	}

	@Override
	public List<CatTour> getCattour() {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getListCart",null);
	}

	@Override
	public Tour getIdTour() {
		// TODO Auto-generated method stub
		return session.selectOne("Tour.selectTourId",null);
	}


	@Override
	public List<Tour> getSearchTourByTest(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getSearchTourByTest", map);
	}

	@Override
	public List<Tour> getListTourLimit() {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getListTourLimit");
	}

	@Override
	public List<Tour> getListTourReal() {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getListTourReal");
	}

	@Override
	public List<Tour> getListTourByDiscount() {
		// TODO Auto-generated method stub
		return session.selectList("Tour.getListTourByDiscount");
	}
	
	



}
