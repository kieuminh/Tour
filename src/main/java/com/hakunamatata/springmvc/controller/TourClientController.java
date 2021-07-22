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

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.VehicleService;
import com.hakunamatata.springmvc.service.impl.DepartmentService;
import com.hakunamatata.springmvc.service.impl.DiscountService;
import com.hakunamatata.springmvc.service.impl.HotelService;
import com.hakunamatata.springmvc.service.impl.PlaceService;


/**
 * @author Huynh Thi Tuyet Ngoc
 * request.getHeader("REFERER"); 
 *
 */
@Controller
@RequestMapping("/tour")
//doing
public class TourClientController {
	
	@Autowired
	private TourService service;
	
	@Autowired
	private PlaceService placeService;
	
	@Autowired 
	private DiscountService discountService;
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired 
	private VehicleService vehcleService;
	
	@Autowired
	private DepartmentService departmentService;
	
	@Autowired
	private BlogService blogService;
	
	@GetMapping(value={"","/"})
	public String view(Model model, Locale locale) {
		List<Province> listProvinces = placeService.listProvince(null);
		model.addAttribute("listProvince", listProvinces);
		
		List<Discount> discounts = discountService.list(null);
		model.addAttribute("listDiscount", discounts);
		
		List<CatTour> catTours = service.getCattour();
		model.addAttribute("listCatTours", catTours);
		
		List<Hotel> hotels = hotelService.list(null);
		model.addAttribute("listHotels", hotels);
		
		List<Vehicle> vehicles = vehcleService.list(null);
		model.addAttribute("listVehicles", vehicles);
		
		List<Department> departments = departmentService.list(null);
		model.addAttribute("listDepartment", departments);
		
		List<Tour> listTourTest = service.getListTourReal();
		model.addAttribute("listTourTest", listTourTest);
		
		List<Blog> listBlog = blogService.getBlogLimit();
		model.addAttribute("listBlog", listBlog);

		return "public/tour";
	}
	
	@PostMapping(value={"","/"})
	public String search(Model model, Locale locale, @RequestParam(name="department") int departmentId,
			@RequestParam(name="cattour") int cattour, @RequestParam(name="desnitation") int desId,
			@RequestParam(name="ngaykhoihanh", required = false) String startday,
			@RequestParam(name="timgiatu", required = false) int giatu,
			@RequestParam(name="timgiaden", required = false) int giaden,
			@RequestParam(name="hotel") int hotelId, @RequestParam(name="vehicle") int vehicleId) throws Exception {
		
		view(model, locale);
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("vehicle_id", vehicleId);
		map.put("cattour_id", cattour);
		map.put("department_id", departmentId);
		map.put("hotel_id", hotelId);
		map.put("pro_id", desId);
		map.put("price1", giatu);
		map.put("price2", giaden);
		map.put("start_day", startday);
		List<Tour> listTourTest = service.getSearchTourByTest(map);
		
		if(listTourTest != null || !listTourTest.isEmpty()) {
			model.addAttribute("listTourTest", listTourTest);
		}

		System.out.println("listTourTest" + listTourTest);
		System.out.println("listTourTest" + listTourTest.size());
		
		return "public/tour";
	}
}
