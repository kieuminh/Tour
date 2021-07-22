package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.TourDiscount;
import com.hakunamatata.springmvc.repository.TourDiscountDAO;
import com.hakunamatata.springmvc.service.TourDiscountService;
@Repository
public class TourDiscountServiceImpl implements TourDiscountService {
	@Autowired
	private TourDiscountDAO dao;
	@Override
	public void insert(TourDiscount vo) {
		dao.insert(vo);
	}

	@Override
	public void update(TourDiscount vo) {
		dao.update(vo);
	}

	@Override
	public void delete(TourDiscount vo) {
		

	}

	@Override
	public TourDiscount get(TourDiscount vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TourDiscount> list(TourDiscount vo) {
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

	@Override
	public void insert(List<TourDiscount> list) {
		dao.insert(list);
		
	}

	@Override
	public void delete(List<TourDiscount> list) {
		
		dao.delete(list);
	}

}
