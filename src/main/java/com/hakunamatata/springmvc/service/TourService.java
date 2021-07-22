package com.hakunamatata.springmvc.service;

import java.util.List;
import java.util.Map;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Tour;

/**
 * @author Manh
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface TourService extends ServiceInterface<Tour>{
	List<CatTour> getCattour();
	Tour getTourId();
	List<Tour> getSearchTourByTest(Map<Object, Object> map);
	List<Tour> getListTourLimit();
	List<Tour> getListTourReal();
	List<Tour> getListTourByDiscount();
}
