package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.repository.impl.HotelDAO;
import com.hakunamatata.springmvc.service.ServiceInterface;

/**
 * @author BaoBB
 *
 */
@Service("hotelService")
public class HotelService implements ServiceInterface<Hotel>{
	@Autowired
	private HotelDAO hotelDAO; 
	@Override
	public void insert(Hotel vo) {
		hotelDAO.insert(vo);
	}

	@Override
	public void update(Hotel vo) {
		hotelDAO.update(vo);
	}

	@Override
	public void delete(Hotel vo) {
		hotelDAO.delete(vo);
	}

	@Override
	public Hotel get(Hotel vo) {
		return hotelDAO.get(vo);
	}

	@Override
	public List<Hotel> list(Hotel vo) {
		return hotelDAO.list(vo);
	}

}
