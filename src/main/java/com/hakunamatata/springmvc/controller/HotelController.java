package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
//import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.Hotel;
import com.hakunamatata.springmvc.service.ServiceInterface;
import com.hakunamatata.springmvc.utils.GetPathUtil;

/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("admin/hotel")
public class HotelController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	private ServiceInterface<Hotel> hotelService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Hotel> list = hotelService.list(null);
		model.addAttribute("hotelList",list);
		return "admin/hotel/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Hotel vo = new Hotel();
		vo.setId(id.intValue());
		hotelService.delete(vo);
		return "redirect:/admin/hotel/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {		
		return "admin/hotel/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(MultipartFile uploadfile, Hotel vo, Locale locale, Model model) {
		/*
		 * doing file upload*/
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
//			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadHotel"));
			GetPathUtil paths = new GetPathUtil();
			// realPath
			try {
				uploadfile.transferTo(
						new File(paths.getRuntimePath()+"\\uploads\\image-hotel\\"
									+fileName)
				);
				vo.setImage(fileName);
//				hotelService.insert(vo);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}	
//		
		System.out.println(vo);
		hotelService.insert(vo);
		return "redirect:/admin/hotel/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id, Locale locale, Model model) {
		Hotel vo = new Hotel();
		vo.setId(id.intValue());
		Hotel hotel = hotelService.get(vo);
		model.addAttribute("hotelOne",hotel);
		return "admin/hotel/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value="image1") String image, MultipartFile uploadfile, Hotel vo, Locale locale, Model model) {
		String fileName = uploadfile.getOriginalFilename();
		String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadHotel"));
		if(!uploadfile.isEmpty()) {
			// realPath
			try {
				uploadfile.transferTo(
						new File(realPath + File.separator
									+fileName)
				);
				vo.setImage(fileName);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			vo.setImage(image);
		}	
		hotelService.update(vo);
		return "redirect:/admin/hotel/";
	}
	
}
