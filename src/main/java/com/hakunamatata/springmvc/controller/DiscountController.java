package com.hakunamatata.springmvc.controller;

import java.sql.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Discount;
import com.hakunamatata.springmvc.service.ServiceInterface;

/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("admin/discount")
public class DiscountController {
	@Autowired
	private ServiceInterface<Discount> discountService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Discount> list = discountService.list(null);
		model.addAttribute("discountList",list);
		return "admin/discount/list";// /WEB_INF/views/article/home.jsp
	}

	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {
		
		return "admin/discount/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value="start_day1") Date start, @RequestParam("end_day1") Date end, Discount vo, Locale locale, Model model) {
		System.out.print(start);
		System.out.print(end);
		vo.setStart_day(start);
		vo.setEnd_day(end);
		discountService.insert(vo);		
		return "redirect:/admin/discount/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Discount vo = new Discount();
		vo.setId(id.intValue());
		Discount discount = discountService.get(vo);
		model.addAttribute("discountOne",discount);
		System.out.println(discount);
		return "admin/discount/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value="start_day1") Date start, @RequestParam(value="end_day1") Date end, Discount vo, Locale locale, Model model) {
		vo.setStart_day(start);
		vo.setEnd_day(end);
		discountService.update(vo);		
		return "redirect:/admin/discount/";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Discount vo = new Discount();
		vo.setId(id.intValue());
		discountService.delete(vo);
		return "redirect:/admin/discount/";
	}
}
