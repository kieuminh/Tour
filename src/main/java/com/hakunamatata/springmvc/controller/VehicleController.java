/**
 * @author Manh
 * 
 * */

package com.hakunamatata.springmvc.controller;

import java.util.List;
import java.util.Locale;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hakunamatata.springmvc.entity.Vehicle;
import com.hakunamatata.springmvc.service.VehicleService;
import com.hakunamatata.springmvc.service.impl.VehicleServiceImpl;

@Controller
@RequestMapping("admin/vehicle")
public class VehicleController {
	@Autowired
	private VehicleService service;
	
	@RequestMapping(value = {"","/"},method = RequestMethod.GET)
	public String list(Model model,Locale locale) {
		
		List<Vehicle> list = service.list(null);
		model.addAttribute("list",list);
		return "admin/vehicle/list";
	}
	
	@RequestMapping(value = "/edit",method = RequestMethod.GET)
	public String view(Model model,Locale locale,Vehicle vehicle) {
		
		Vehicle vo =	service.get(vehicle);
		model.addAttribute("vehicle",vo);
		return "admin/vehicle/edit";
	}
	
	@RequestMapping(value = {"/edit"},method = RequestMethod.POST)
	public String edit(Model model,Locale locale,Vehicle vehicle) {
		System.out.println(vehicle.toString());
		service.update(vehicle);
		
		return "redirect:/admin/vehicle";
	}
	@RequestMapping(value = {"/new"},method = RequestMethod.GET)
	public String write(Model model,Locale locale) {
		
		
		return "admin/vehicle/new";
	}
	@RequestMapping(value = {"/new"},method = RequestMethod.POST)
	public String insert( Model model,Locale locale,Vehicle vehicle) {
	
		service.insert(vehicle);
//		System.out.println(vehicle.toString());
		return "redirect:/admin/vehicle";
	}
	
	@RequestMapping(value = {"/delete"},method = RequestMethod.GET)
	public String delete(Vehicle vehicle,Model model,Locale locale) {
		service.delete(vehicle);
		
		return "redirect:/admin/vehicle";
	}
}
