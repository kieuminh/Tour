package com.hakunamatata.springmvc.controller;

import java.util.HashMap;
import java.util.List;

import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.VehicleService;
import com.hakunamatata.springmvc.service.impl.DepartmentService;
import com.hakunamatata.springmvc.service.impl.DiscountService;
import com.hakunamatata.springmvc.service.impl.HotelService;
import com.hakunamatata.springmvc.service.impl.PlaceService;


/**
 * @author Kiều Tuấn Minh
 * request.getHeader("REFERER"); 
 *
 */
@Controller
@RequestMapping("/about")
//doing
public class AboutClientController {
	
	@GetMapping({"", "/"})
	public String view(Model model, Locale locale) {
		return "public/about";
	}
}
