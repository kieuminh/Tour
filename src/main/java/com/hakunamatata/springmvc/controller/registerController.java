package com.hakunamatata.springmvc.controller;

import java.sql.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.impl.UserServiceImp;


/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("register")
public class registerController {
	@Autowired
	private UserServiceImp userServiceImp;
	//private UserService userService;
	

	@RequestMapping(value = {"/",""}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "public/register";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value="day") Date birthday, UserTour vo, Locale locale, Model model) {
		UserRole userRole = new UserRole();
		userRole.setId(2);
		vo.setUser_role(userRole);
		vo.setBirthday(birthday);
		vo.setState(1);
		System.out.print(vo);
		userServiceImp.checkUserName(vo);
		if(userServiceImp.checkUserName(vo)!=null){

			return "redirect:/register";
		}
		userServiceImp.insert(vo);		

		return "redirect:/login";
	}
	
}
