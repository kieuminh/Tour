/**
 * @author Manh
 * */
package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.repository.VehicleDAO;
import com.hakunamatata.springmvc.service.VehicleService;
@Service
public class VehicleServiceImpl implements VehicleService {
	@Autowired 
	private VehicleDAO dao;
	@Override
	public void insert(Vehicle vo) {
		dao.insert(vo);
		
	}

	@Override
	public void update(Vehicle vo) {
		dao.update(vo);
		
	}

	@Override
	public void delete(Vehicle vo) {
		dao.delete(vo);
		
	}

	@Override
	public Vehicle get(Vehicle vo) {
		// TODO Auto-generated method stub
		return dao.get(vo);
	}

	@Override
	public List<Vehicle> list(Vehicle vo) {
		// TODO Auto-generated method stub
		return dao.list(null);
	}
	


}
