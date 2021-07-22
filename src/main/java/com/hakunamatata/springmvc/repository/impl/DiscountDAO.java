package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.repository.DAO;
/**
 * @author BaoBB
 *
 */
@Repository("discountDAO")
public class DiscountDAO implements DAO<Discount> {
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Discount vo) {
		session.insert("Discount.insert",vo);
	}

	@Override
	public void update(Discount vo) {
		session.update("Discount.update",vo);
	}

	@Override
	public void delete(Discount vo) {
		session.delete("Discount.delete",vo);
	}

	@Override
	public Discount get(Discount vo) {
		return session.selectOne("Discount.selectOne", vo);	
	}

	@Override
	public List<Discount> list(Discount vo) {
		return session.selectList("Discount.selectList",vo);
	}



}
