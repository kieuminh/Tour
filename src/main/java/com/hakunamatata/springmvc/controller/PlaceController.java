package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.Place;
import com.hakunamatata.springmvc.entity.Province;
import com.hakunamatata.springmvc.service.impl.PlaceService;

/**
 * @author BaoBB
 *
 */
@Controller
@RequestMapping("admin/place")
public class PlaceController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Place> list = placeService.list(null);
		model.addAttribute("placeList",list);
		return "admin/place/list";// /WEB_INF/views/article/home.jsp
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Place vo = new Place();
		vo.setId(id.intValue());
		placeService.delete(vo);
		return "redirect:/admin/place/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {
		List<Province> list = placeService.listProvince(null);
		model.addAttribute("provinceList",list);
		return "admin/place/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "province1",required = false) int province_id, MultipartFile uploadfile,
			Place vo, Locale locale, Model model) {
		Province province = new Province();
		province.setId(province_id);
		vo.setProvince(province);
		
		//doing upload file
		
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadPlace"));
			// realPath
			try {
				uploadfile.transferTo(
						new File(realPath + File.separator
									+fileName)
				);
				vo.setImage(fileName);
				placeService.insert(vo);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}	
//		placeService.insert(vo);
		return "redirect:/admin/place/";

	}
	
	
	

	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id, Locale locale, Model model) {
		Place vo = new Place();
		vo.setId(id.intValue());
		Place place = placeService.get(vo);
		model.addAttribute("placelOne",place);
		List<Province> list = placeService.listProvince(null);
		model.addAttribute("provinceList",list);
		return "admin/place/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value = "province1") int province_id,
			@RequestParam(value="image1") String image, MultipartFile uploadfile, Place vo, Locale locale, Model model) {
		Province province = new Province();
		province.setId(province_id);
		vo.setProvince(province);
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadPlace"));
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
		placeService.update(vo);
		return "redirect:/admin/place/";

	}
}
