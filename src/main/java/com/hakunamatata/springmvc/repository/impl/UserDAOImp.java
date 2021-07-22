package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.repository.UserDAO;

/**
 * @author Hai Van
 *
 */
@Repository
public class UserDAOImp implements UserDAO {
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(UserTour vo) {
		// TODO Auto-generated method stub
		session.insert("UserTour.insert", vo);		
	}

	@Override
	public void update(UserTour vo) {
		// TODO Auto-generated method stub
		System.out.println(vo);
		session.update("UserTour.update", vo);
	}

	@Override
	public void delete(UserTour vo) {
		// TODO Auto-generated method stub
		session.delete("UserTour.delete", vo);
	}

	@Override
	public UserTour get(UserTour vo) {
		// TODO Auto-generated method stub
		return (UserTour)session.selectOne("UserTour.selectOne", vo);
	}

	@Override
	public List<UserTour> list(UserTour vo) {
		// TODO Auto-generated method stub
		return session.selectList("UserTour.selectList", vo);
	}

	@Override
	public List<UserRole> listRole(UserRole vo) {
		// TODO Auto-generated method stub
		return session.selectList("Role.selectList", vo);
	}

	@Override
	public UserTour login(UserTour vo) {
		// TODO Auto-generated method stub
		return session.selectOne("UserTour.login", vo);
	}

	@Override
	public UserTour checkUserName(UserTour vo) {
		// TODO Auto-generated method stub
		return session.selectOne("UserTour.checkUserName", vo);
	}

}
