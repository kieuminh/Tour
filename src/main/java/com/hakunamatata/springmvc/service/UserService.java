package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.entity.UserTour;

public interface UserService extends ServiceInterface<UserTour>{
	List<UserRole> listRole(UserRole vo);
	UserTour login(UserTour vo);
	UserTour checkUserName(UserTour vo);
}
