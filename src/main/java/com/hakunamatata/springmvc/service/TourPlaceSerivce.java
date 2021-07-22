package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.TourPlace;

/**
 * @author Manh
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface TourPlaceSerivce extends ServiceInterface<TourPlace>{
	void insert(List<TourPlace> list);
	void delete(List<TourPlace> list);
	List<Place> getPlace(TourPlace vo);
}
