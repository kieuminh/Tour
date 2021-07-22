
/**
 * @author Manh
 *
 */
package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.CatTour;
import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.TourDiscount;
import com.hakunamatata.springmvc.entity.TourPlace;
import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.service.TourDiscountService;
import com.hakunamatata.springmvc.service.TourPlaceSerivce;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.VehicleService;
import com.hakunamatata.springmvc.service.impl.DepartmentService;
import com.hakunamatata.springmvc.service.impl.DiscountService;
import com.hakunamatata.springmvc.service.impl.HotelService;
import com.hakunamatata.springmvc.service.impl.PlaceService;
import com.mysql.cj.log.Log;

@Controller
@RequestMapping("admin/tour")
//doing
public class TourController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	private TourService service;
	@Autowired
	private PlaceService placeService;
	@Autowired
	private DiscountService discountService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private HotelService hotelService;
	@Autowired
	private VehicleService vehcleService;
	@Autowired
	private TourPlaceSerivce tourPlaceService;
	@Autowired
	private TourDiscountService tourDiscountService;

	@GetMapping(value = { "", "/" })
//	@ResponseBody
	public String list(Model model, Locale locale) {
		List<Tour> list = service.list(null);

		model.addAttribute("listTour", list);

		return "admin/tour/list";
//		 return new ResponseEntity<List<Tour>>(list, HttpStatus.OK);
	}

	@GetMapping(value = "/new")
	public String write(Model model, Locale locale) {
		List<Province> listProvinces = placeService.listProvince(null);
		List<Place> Places = placeService.list(null);
		List<Discount> discounts = discountService.list(null);
		List<Department> departments = departmentService.list(null);
		List<CatTour> catTours = service.getCattour();
		List<Hotel> hotels = hotelService.list(null);
		List<Vehicle> vehicles = vehcleService.list(null);
		//List<TourPlace> listTourPlace = tourPlaceService.list(null);
//		System.out.println(listTourPlace);
		model.addAttribute("listProvince", listProvinces);
		model.addAttribute("listPlaces", Places);
		model.addAttribute("listDiscount", discounts);
		model.addAttribute("listDispartment", departments);
		model.addAttribute("listCatTours", catTours);
		model.addAttribute("listHotels", hotels);
		model.addAttribute("listVehicles", vehicles);

		return "admin/tour/new";

	}

	@PostMapping("/new")
	public  String insert(Tour tour, @RequestParam(value = "startday1") Date start_day1,
			@RequestParam(value = "endday1") Date end_day1, @RequestParam(value = "location_go") int location_go,
			@RequestParam(value = "carttour_id") int carttour_id, @RequestParam(value = "hotel_id") int hotel_id,
			@RequestParam(value = "vehicle_id") int vehicle_id, @RequestParam(value = "discount_id") int[] discount_ids,
			@RequestParam(value = "place_id") int[] place_ids, MultipartFile imageTour, Model model, Locale locale) {

		tour.setStart_day(start_day1);

		tour.setEnd_day(end_day1);
		Department department = new Department();
		department.setId(location_go);
		tour.setDepartment(department);
		CatTour catTour = new CatTour();
		catTour.setId(carttour_id);
		tour.setCattour(catTour);
		Hotel hotel = new Hotel();
		hotel.setId(hotel_id);
		tour.setHotel(hotel);
		Vehicle vehicle = new Vehicle();
		vehicle.setId(vehicle_id);
		tour.setVehicle(vehicle);

		if (!imageTour.isEmpty()) {
			String fileName = imageTour.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadTour"));

			try {
				imageTour.transferTo(new File(realPath + File.separator + fileName));
				System.out.println(realPath + File.separator + fileName);
				tour.setImage(fileName);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		service.insert(tour);
		Tour tourMax = service.getTourId();
		List<Discount> lisDiscounts = null;
		List<TourDiscount> listTourDiscounts = null;
		if (discount_ids != null) {
			lisDiscounts = new ArrayList<Discount>();
			listTourDiscounts = new ArrayList<TourDiscount>();
			for (int id : discount_ids) {
				Discount discount = new Discount();
				TourDiscount tourDiscount = new TourDiscount();
				discount.setId(id);

				tourDiscount.setTour(tourMax);
				tourDiscount.setDiscount(discount);
				lisDiscounts.add(discount);
				listTourDiscounts.add(tourDiscount);

			}
			tour.setDiscount(lisDiscounts);
			tour.setTourdiscount(listTourDiscounts);
		}

		List<Place> lisPlaces = null;
		List<TourPlace> listTourPlaces = null;
		if (place_ids != null) {
			lisPlaces = new ArrayList<Place>();
			listTourPlaces = new ArrayList<TourPlace>();
			for (int id : place_ids) {
				Place Place = new Place();
				TourPlace tourPlace = new TourPlace();
				Place.setId(id);

				tourPlace.setTour(tourMax);
				tourPlace.setPlace(Place);
				lisPlaces.add(Place);
				System.out.println(tourPlace);
				listTourPlaces.add(tourPlace);

			}
//			System.out.println(listTourPlaces);
			tour.setPlace(lisPlaces);
			tour.setTourplace(listTourPlaces);

		}
		tourPlaceService.insert(tour.getTourplace());
		tourDiscountService.insert(tour.getTourdiscount());

		return "redirect:/admin/tour";
//		 return new ResponseEntity<Tour>(tour, HttpStatus.OK);
	}

	@GetMapping(value = "/edit")
	public String edit(Tour tour, Model model, Locale locale) {
		List<Province> listProvinces = placeService.listProvince(null);
		List<Place> Places = placeService.list(null);
		List<Discount> discounts = discountService.list(null);
		List<Department> departments = departmentService.list(null);
		List<CatTour> catTours = service.getCattour();
		List<Hotel> hotels = hotelService.list(null);
		List<Vehicle> vehicles = vehcleService.list(null);
		List<TourPlace> listTourPlace = tourPlaceService.list(null);
		Tour tours = service.get(tour);
//		System.out.println(listTourPlace);
		model.addAttribute("tour", tours);
		model.addAttribute("listProvince", listProvinces);
		model.addAttribute("listPlaces", Places);
		model.addAttribute("listDiscount", discounts);
		model.addAttribute("listDispartment", departments);
		model.addAttribute("listCatTours", catTours);
		model.addAttribute("listHotels", hotels);
		model.addAttribute("listVehicles", vehicles);
		
//		System.out.println(tour);

		return "admin/tour/edit";
//		 return new ResponseEntity<Tour>(tours, HttpStatus.OK);

	}

	@PostMapping(value = "/edit")
	public String update(Tour tour, @RequestParam(value = "startday1") Date start_day1,
			@RequestParam(value = "endday1") Date end_day1, @RequestParam(value = "location_go") int location_go,
			@RequestParam(value = "carttour_id") int carttour_id, @RequestParam(value = "hotel_id") int hotel_id,
			@RequestParam(value = "vehicle_id") int vehicle_id, @RequestParam(value = "discount_id") int[] discount_ids,
			@RequestParam(value = "place_id") int[] place_ids, @RequestParam(value = "imageUpdate") String imageUpdate,
			MultipartFile imageTour, Model model, Locale locale) {
		
		Tour tours = service.get(tour);
		//delete mutile row many to many
		tourDiscountService.delete(tours.getTourdiscount());
		tourPlaceService.delete(tours.getTourplace());
		Tour tourUpdate = new Tour();
		tourUpdate.setId(tours.getId());
		List<Discount> lisDiscounts = null;
		List<TourDiscount> listTourDiscounts = null;
		if (discount_ids != null) {
			lisDiscounts = new ArrayList<Discount>();
			listTourDiscounts = new ArrayList<TourDiscount>();
			for (int id : discount_ids) {
				Discount discount = new Discount();
				TourDiscount tourDiscount = new TourDiscount();
				discount.setId(id);

				tourDiscount.setTour(tourUpdate);
				tourDiscount.setDiscount(discount);
				lisDiscounts.add(discount);
//				System.out.println(tourDiscount);	
				listTourDiscounts.add(tourDiscount);
				
			}
			tour.setDiscount(lisDiscounts);
			tour.setTourdiscount(listTourDiscounts);
		}

		List<Place> lisPlaces = null;
		List<TourPlace> listTourPlaces = null;
		if (place_ids != null) {
			lisPlaces = new ArrayList<Place>();
			listTourPlaces = new ArrayList<TourPlace>();
			for (int id : place_ids) {
				Place Place = new Place();
				TourPlace tourPlace = new TourPlace();
				Place.setId(id);
//				System.out.println(Place);
				tourPlace.setTour(tourUpdate);
				tourPlace.setPlace(Place);
				lisPlaces.add(Place);
//					System.out.println(tourPlace);
				listTourPlaces.add(tourPlace);

			}
			tour.setPlace(lisPlaces);
			tour.setTourplace(listTourPlaces);

		}

	
		
		
		tour.setStart_day(start_day1);
		tour.setEnd_day(end_day1);
		Department department = new Department();
		department.setId(location_go);
		tour.setDepartment(department);
		CatTour catTour = new CatTour();
		catTour.setId(carttour_id);
		tour.setCattour(catTour);
		Hotel hotel = new Hotel();
		hotel.setId(hotel_id);
		tour.setHotel(hotel);
		Vehicle vehicle = new Vehicle();
		vehicle.setId(vehicle_id);
		tour.setVehicle(vehicle);
		
		
		
		
		if (imageTour != null) {
			if (!imageTour.isEmpty()) {
				String fileName = imageTour.getOriginalFilename();
				String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadTour"));

				try {
					imageTour.transferTo(new File(realPath + File.separator + fileName));
					System.out.println(realPath + File.separator + fileName);
					tour.setImage(fileName);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		} else {
//			System.out.println(imageUpdate);
			tour.setImage(imageUpdate);
		}
		service.update(tour);
		tourPlaceService.insert(tour.getTourplace());
		tourDiscountService.insert(tour.getTourdiscount());
 	
		return "redirect:/admin/tour";
//		return new ResponseEntity<Tour>(tour, HttpStatus.OK);
	}
	
	@GetMapping(value = "/delete")
	public String delete(Tour tour,Locale locale) {
		Tour tours = service.get(tour);
		//delete mutile row many to many
		if(tour.getTourdiscount() != null) {			
			tourDiscountService.delete(tours.getTourdiscount());
		}
		
		if(tour.getTourplace() != null) {			
			tourPlaceService.delete(tours.getTourplace());
		}
		
		service.delete(tours);
		return "redirect:/admin/tour";
	}

}
