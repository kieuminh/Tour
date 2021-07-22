package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.TourPlace;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.TourPlaceSerivce;
import com.hakunamatata.springmvc.service.TourService;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */

@Controller
@RequestMapping("/tourdetail")
public class TourDetailController {
	
	@Autowired
	private TourService service;
	
	@Autowired
	private TourPlaceSerivce tourPlaceService;
	
	@Autowired
	private BlogService blogService;

	@GetMapping({"", "/"})
	public String view(Model model, Locale locale, @RequestParam("id") int id) {
		
		Tour tour = new Tour();
		tour.setId(id);
		
		TourPlace tourplace = new  TourPlace();
		tourplace.setTour(tour);
		
		Tour getTour = service.get(tour);
		model.addAttribute("getTour", getTour);
		System.out.println(getTour);
		
		List<Tour> list = service.list(null);
		model.addAttribute("list",list);
		System.out.println(list);
		
		List<Place> listPlace = tourPlaceService.getPlace(tourplace);
		model.addAttribute("listPlace",listPlace);
		System.out.println(listPlace);
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);
		
		return "public/tourdetail";
	}
}
