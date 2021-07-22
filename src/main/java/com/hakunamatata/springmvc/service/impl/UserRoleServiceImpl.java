package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.repository.UserRoleDAO;
import com.hakunamatata.springmvc.service.UserRoleService;
@Service
public class UserRoleServiceImpl implements UserRoleService {
	@Autowired
	private UserRoleDAO dao;
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
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

}
