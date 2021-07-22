package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.TourPlace;

/**
 * @author Manh
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface TourPlaceDAO extends DAO<TourPlace>{
	void insert(List<TourPlace> list);
	void delete(List<TourPlace> list);
	List<Place> getPlace(TourPlace vo);
}
