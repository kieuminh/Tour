package com.hakunamatata.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
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

import com.hakunamatata.springmvc.entity.UserRole;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.UserRoleService;
import com.hakunamatata.springmvc.service.UserService;

/**
 * @author Hai Van
 *
 */
@Controller
@RequestMapping("admin/user")
public class UserController {
	@Autowired
	ServletContext servletContext;
	@Autowired
	private UserService userService;
	@Autowired
	private UserRoleService roleService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		List<UserTour> list = userService.list(null);
		model.addAttribute("userList", list);
//		System.out.println(list);
		return "admin/user/list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "id") Integer id, Locale locale, Model model) {
		UserTour vo = new UserTour();
		vo.setId(id.intValue());
		userService.delete(vo);
		return "redirect:/admin/user/";
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String regis(Locale locale, Model model) {
		List<UserRole> listRole = roleService.list(null);
//		System.out.println(listRole);
		model.addAttribute("listRole", listRole);
		return "admin/user/new";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "birthday") Date date, MultipartFile uploadfile, UserTour vo, Locale locale,
			Model model) {
		vo.setBirthday(date);
		System.out.println(vo);
		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadUser"));
			// realPath
			try {
				uploadfile.transferTo(new File(realPath + File.separator + fileName));
				vo.setAvatar(fileName);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		userService.insert(vo);
		return "redirect:/admin/user/";
	}

	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String insert(@RequestParam(value = "birthdays") Date birthday, @RequestParam(value = "role_user") int role,
			MultipartFile upload_avarta, UserTour vo, Locale locale, Model model) {
		vo.setBirthday(birthday);
//		System.out.println(vo);
		UserRole userRole = new UserRole();
		userRole.setId(role);
		vo.setUser_role(userRole);
//		System.out.println(upload_avarta);
		if (!upload_avarta.isEmpty()) {
			String fileName = upload_avarta.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadUser"));
			// realPath
			try {
				upload_avarta.transferTo(new File(realPath + File.separator + fileName));
				vo.setAvatar(fileName);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		userService.insert(vo);
		return "redirect:/admin/user/";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(@RequestParam(value = "id") Integer id, Locale locale, Model model) {
		List<UserRole> listRole = roleService.list(null);
//		System.out.println(listRole);
		model.addAttribute("listRole", listRole);
		UserTour vo = new UserTour();
		vo.setId(id);
		UserTour user = userService.get(vo);
		model.addAttribute("userOne", user);
		return "admin/user/edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String update(@RequestParam(value = "avarta_cu") String image, @RequestParam(value = "birthdays") Date date,
			 @RequestParam(value = "role_user") int role,
			MultipartFile upload_avarta, UserTour vo, Locale locale, Model model) {
		vo.setBirthday(date);
		UserRole userRole = new UserRole();
		userRole.setId(role);
		vo.setUser_role(userRole);
//		System.out.println("edit");
		if (!upload_avarta.isEmpty()) {
			// realPath
			String fileName = upload_avarta.getOriginalFilename();
			String realPath = servletContext.getRealPath(servletContext.getInitParameter("urloadUser"));

			try {
				upload_avarta.transferTo(new File(realPath + File.separator + fileName));
				vo.setAvatar(fileName);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			vo.setAvatar(image);
		}
		userService.update(vo);
		return "redirect:/admin/user/";
	}
}
