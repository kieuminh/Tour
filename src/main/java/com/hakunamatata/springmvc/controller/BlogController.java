package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.service.BlogService;
import com.hakunamatata.springmvc.service.ServiceInterface;
import com.hakunamatata.springmvc.utils.GetPathUtil;
/**
 * @author Hai Van
 *
 */
@Controller
@RequestMapping("admin/blog")
public class BlogController {
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(value = {"","/"}, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<Blog> list = blogService.list(null);
		model.addAttribute("blogList",list);
		System.out.println(list);
		return "admin/blog/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Blog vo = new Blog();
		vo.setId(id.intValue());
		blogService.delete(vo);
		return "redirect:/admin/blog/";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {
		return "admin/blog/new";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "wdate1")Date date,MultipartFile uploadfile, Blog vo, Locale locale, Model model) {
		vo.setWdate(date);
		System.out.println(vo);
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			GetPathUtil paths = new GetPathUtil();
			// realPath
			try {
				uploadfile.transferTo(
						new File(paths.getRuntimePath()+"\\uploads\\image-blog\\"
									+fileName)
				);
				vo.setImage(fileName);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		blogService.insert(vo);		
		return "redirect:/admin/blog/";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value="id") Integer id,Locale locale, Model model) {
		Blog vo = new Blog();
		vo.setId(id.intValue());
		Blog blog = blogService.get(vo);
		model.addAttribute("blogOne",blog);
		return "admin/blog/edit";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam(value="image1") String image, @RequestParam(value = "wdate1")Date date,MultipartFile uploadfile, Blog vo, Locale locale, Model model) {
		vo.setWdate(date);
		System.out.println(vo);
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			GetPathUtil paths = new GetPathUtil();
			// realPath
			try {
				uploadfile.transferTo(
						new File(paths.getRuntimePath()+"\\uploads\\image-place\\"
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
		blogService.update(vo);		
		return "redirect:/admin/blog/";
	}
}
