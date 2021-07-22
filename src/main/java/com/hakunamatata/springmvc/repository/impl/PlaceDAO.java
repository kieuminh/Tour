package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.repository.PlaceInterface;
/**
 * @author BaoBB
 *
 */
@Repository("placeDAO")
public class PlaceDAO implements PlaceInterface<Place>{
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(Place vo) {
		session.insert("Place.insert",vo);
	}

	@Override
	public void update(Place vo) {
		session.update("Place.update",vo);
	}

	@Override
	public void delete(Place vo) {
		session.delete("Place.delete",vo);
	}

	@Override
	public Place get(Place vo) {
		return session.selectOne("Place.selectOne",vo);
	}

	@Override
	public List<Place> list(Place vo) {
		return session.selectList("Place.selectList",vo);
	}

	@Override
	public List<Province> listProvince(Province vo) {
		return session.selectList("Province.selectList",vo);
	}



	
	
}
