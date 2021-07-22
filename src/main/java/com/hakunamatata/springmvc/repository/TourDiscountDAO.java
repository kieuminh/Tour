
package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.TourDiscount;

/**
 * @author Manh
 *
 */
public interface TourDiscountDAO extends DAO<TourDiscount>{
	void insert(List<TourDiscount> list);
	void delete(List<TourDiscount> list);
}
