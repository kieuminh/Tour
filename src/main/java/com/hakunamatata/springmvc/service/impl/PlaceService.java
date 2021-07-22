package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.repository.impl.PlaceDAO;
import com.hakunamatata.springmvc.service.PlaceServiceInterface;
/**
 * @author BaoBB
 *
 */
@Service("placeService")
public class PlaceService implements PlaceServiceInterface<Place>{
	@Autowired
	private PlaceDAO placeDAO;
	@Override
	public void insert(Place vo) {
		placeDAO.insert(vo);
	}

	@Override
	public void update(Place vo) {
		placeDAO.update(vo);
	}

	@Override
	public void delete(Place vo) {
		placeDAO.delete(vo);
	}

	@Override
	public Place get(Place vo) {
		return placeDAO.get(vo);
	}

	@Override
	public List<Place> list(Place vo) {
		return placeDAO.list(vo);
	}

	@Override
	public List<Province> listProvince(Province vo) {
		return placeDAO.listProvince(vo);
	}

}
