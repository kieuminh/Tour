package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.ServiceInterface;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
@Controller
@RequestMapping("/blog")
public class BlogClientController {
	
	@Autowired
	private BlogService blogService;
	
	@GetMapping({"", "/"})
	public String view(Model model, Locale locale) {
		
		List<Blog> list = blogService.list(null);
		model.addAttribute("list", list);
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);

		return "public/blog";
	}
}
