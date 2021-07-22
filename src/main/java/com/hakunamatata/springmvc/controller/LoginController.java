package com.hakunamatata.springmvc.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.impl.UserServiceImp;


/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private UserServiceImp userServiceImp;
	

	@RequestMapping(value = {"/",""}, method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale, Model model) {
		request.getSession().invalidate();
		return "public/login";
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String login(@RequestParam(value="URL") String reurl, 
			@RequestParam(value="username") String username, 
			@RequestParam(value="passwd") String passwd, HttpServletRequest request, UserTour vo, Locale locale, Model model) {
		HttpSession session = request.getSession();	
		vo.setUsername(username);
		vo.setPasswd(passwd);
		UserTour user = userServiceImp.login(vo);
		int role = 0;	
		String url = "redirect:/login/";	
		if(user!=null){
			role = user.getUser_role().getId();
			session.setAttribute("id", user.getId());
			session.setAttribute("avatar", user.getAvatar());
			session.setAttribute("username", user.getUsername());
			vo.setPasswd("");
		}
		if(user!=null && role == 1) {
			request.getSession().setAttribute("admin", user);
			session.setAttribute("auth", "ADMIN");
			url = (reurl.isEmpty()||reurl.contains("admin"))?
					"/admin/dashboard":"redirect:"+reurl.substring(request.getContextPath().length());;
		}
		if(user!=null && role == 2) {
			request.getSession().setAttribute("user", user);
			session.setAttribute("auth", "USER");
			url = (reurl.isEmpty()||reurl.contains("admin"))?
					"redirect:/":"redirect:"+reurl.substring(request.getContextPath().length());;
		}
		return url;		
	}
}
