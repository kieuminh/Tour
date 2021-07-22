package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.repository.impl.DiscountDAO;
import com.hakunamatata.springmvc.service.ServiceInterface;
/**
 * @author BaoBB
 *
 */
@Service("discountService")
public class DiscountService implements ServiceInterface<Discount>{
	@Autowired
	private DiscountDAO	discountDAO;
	@Override
	public void insert(Discount vo) {
		discountDAO.insert(vo);	
	}

	@Override
	public void update(Discount vo) {
		discountDAO.update(vo);
	}

	@Override
	public void delete(Discount vo) {
		discountDAO.delete(vo);
	}

	@Override
	public Discount get(Discount vo) {
		return discountDAO.get(vo);
	}

	@Override
	public List<Discount> list(Discount vo) {
		return discountDAO.list(vo);
	}

}
