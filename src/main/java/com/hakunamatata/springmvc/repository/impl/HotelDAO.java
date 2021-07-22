package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.repository.DAO;
/**
 * @author BaoBB
 *
 */
@Repository("hotelDAO")
public class HotelDAO implements DAO<Hotel> {
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Hotel vo) {
		session.insert("Hotel.insert",vo);
		
	}

	@Override
	public void update(Hotel vo) {
		session.update("Hotel.update",vo);
		
	}

	@Override
	public void delete(Hotel vo) {
		session.delete("Hotel.delete",vo);
		
	}

	@Override
	public Hotel get(Hotel vo) {
		return session.selectOne("Hotel.selectOne",vo);
	}

	@Override
	public List<Hotel> list(Hotel vo) {
		return session.selectList("Hotel.selectList",vo);
	}

}
