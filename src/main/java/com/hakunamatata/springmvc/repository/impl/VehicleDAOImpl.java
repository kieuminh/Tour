/**
 * @author Manh
 * 
 * */
package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Vehicle;

import com.hakunamatata.springmvc.repository.VehicleDAO;

@Repository
public class VehicleDAOImpl implements VehicleDAO {
	@Autowired 
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Vehicle vo) {
		session.insert("Vehicle.insert", vo);
		
	}

	@Override
	public void update(Vehicle vo) {
		session.update("Vehicle.update",vo);
		
	}

	@Override
	public void delete(Vehicle vo) {
		session.delete("Vehicle.delete",vo);
		
	}

	@Override
	public Vehicle get(Vehicle vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Vehicle.get", vo);
	}

	@Override
	public List<Vehicle> list(Vehicle vo) {
		// TODO Auto-generated method stub
		return session.selectList("Vehicle.getAll",null);
	}

}
