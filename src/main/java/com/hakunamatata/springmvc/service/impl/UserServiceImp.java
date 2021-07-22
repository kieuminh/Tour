package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.repository.UserDAO;
import com.hakunamatata.springmvc.service.UserService;
/**
 * @author Hai Van
 *
 */

@Service
//@Transactional
public class UserServiceImp implements UserService{
	
	@Autowired
	private UserDAO	userDao;

	@Override
	public void insert(UserTour vo) {
		userDao.insert(vo);
	}

	@Override
	public void update(UserTour vo) {
		userDao.update(vo);
	}

	@Override
	public void delete(UserTour vo) {
		userDao.delete(vo);
	}

	@Override
	public UserTour get(UserTour vo) {
		return userDao.get(vo);
	}

	@Override
	public List<UserTour> list(UserTour vo) {
		return userDao.list(vo);
	}

	@Override
	public List<UserRole> listRole(UserRole vo) {
		return userDao.listRole(vo);
	}

	@Override
	public UserTour login(UserTour vo) {
		return userDao.login(vo);
	}

	@Override
	public UserTour checkUserName(UserTour vo) {
		// TODO Auto-generated method stub
		return userDao.checkUserName(vo);
	}

}
