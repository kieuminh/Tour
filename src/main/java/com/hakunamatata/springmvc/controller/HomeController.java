package com.hakunamatata.springmvc.controller;


import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.CommentService;
import com.hakunamatata.springmvc.service.TourService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private TourService service;
	@Autowired
	private BlogService blogService;
	@Autowired
	private CommentService commentService;
	
	@SuppressWarnings("null")
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {		
		
		List<Tour> list = service.getListTourLimit();
		model.addAttribute("list", list);
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);
		
		
		List<Tour> listTourByDiscount = service.getListTourByDiscount();
		model.addAttribute("listTourByDiscount", listTourByDiscount);
		
		return "public/index";
	}
	
}
