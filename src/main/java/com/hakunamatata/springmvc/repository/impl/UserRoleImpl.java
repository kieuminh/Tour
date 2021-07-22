package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.repository.UserRoleDAO;
@Repository
public class UserRoleImpl implements UserRoleDAO {
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public void insert(UserRole vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(UserRole vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(UserRole vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public UserRole get(UserRole vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserRole> list(UserRole vo) {
		
		return session.selectList("Role.selectList", null);
	}

}
