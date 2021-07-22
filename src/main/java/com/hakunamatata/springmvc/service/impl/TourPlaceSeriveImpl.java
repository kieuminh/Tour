package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.TourPlace;
import com.hakunamatata.springmvc.repository.TourPlaceDAO;
import com.hakunamatata.springmvc.service.TourPlaceSerivce;

/**
 * @author Manh
 * @author Huynh Thi Tuyet Ngoc
 *
 */

@Service
public class TourPlaceSeriveImpl implements TourPlaceSerivce {
	@Autowired
	private TourPlaceDAO dao;
	@Override
	public void insert(TourPlace vo) {
		dao.insert(vo);

	}

	@Override
	public void update(TourPlace vo) {
		dao.update(vo);

	}

	@Override
	public void delete(TourPlace vo) {
		

	}

	@Override
	public TourPlace get(TourPlace vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TourPlace> list(TourPlace vo) {
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

	@Override
	public void insert(List<TourPlace> list) {
		 dao.insert(list);
		
	}

	@Override
	public void delete(List<TourPlace> list) {
		dao.delete(list);
		
	}

	@Override
	public List<Place> getPlace(TourPlace vo) {
		// TODO Auto-generated method stub
		return dao.getPlace(vo);
	}

}
