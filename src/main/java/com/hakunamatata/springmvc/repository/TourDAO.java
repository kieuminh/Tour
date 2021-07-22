package com.hakunamatata.springmvc.repository;

import java.util.List;
import java.util.Map;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;

/**
 * @author Manh
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface TourDAO extends DAO<Tour> {
	List<CatTour> getCattour();
	Tour getIdTour();
	List<Tour> getSearchTourByTest(Map<Object, Object> map);
	List<Tour> getListTourLimit();
	List<Tour> getListTourReal();
	List<Tour> getListTourByDiscount();
}
