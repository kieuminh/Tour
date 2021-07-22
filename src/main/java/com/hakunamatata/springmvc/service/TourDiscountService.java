package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.TourDiscount;

/**
 * @author Manh
 *
 */
public interface TourDiscountService extends ServiceInterface<TourDiscount>{
	void insert(List<TourDiscount> list);
	void delete(List<TourDiscount> list);
}
