package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.entity.UserTour;


public interface UserDAO extends DAO<UserTour>{
	List<UserRole> listRole(UserRole vo);
	UserTour login(UserTour vo);
	UserTour checkUserName(UserTour vo);
}
