/**
 * @author Manh
 * */
package com.hakunamatata.springmvc.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hakunamatata.springmvc.entity.Book;
import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.entity.Tour;
import com.hakunamatata.springmvc.entity.UserTour;
import com.hakunamatata.springmvc.service.BookService;
import com.hakunamatata.springmvc.service.TicketService;
import com.hakunamatata.springmvc.service.TourService;
import com.hakunamatata.springmvc.service.UserService;
import com.hakunamatata.springmvc.service.impl.UserServiceImp;

@Controller
@RequestMapping("booking")
public class BookingClientController {
	@Autowired
	private TourService tourservice;
	@Autowired
	private  BookService bookservice;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private UserServiceImp userServiceImp;
	
	@GetMapping("")
	public String book(@RequestParam(value = "id") int id_tour ,HttpServletRequest request, Model model, Locale locale) {
		Tour tour = new Tour();
		tour.setId(id_tour);
		HttpSession session = request.getSession();
		Integer userId = (Integer)session.getAttribute("id");
		UserTour vo = new UserTour();
		vo.setId(userId.intValue());	
		UserTour userr=	userServiceImp.get(vo);
		model.addAttribute("user",userr);
		Tour tourGet = tourservice.get(tour);
		model.addAttribute("tour", tourGet);

		return "public/booking";
	}
	
	@PostMapping("")
	//@ResponseBody
	public String booking(Book book,
		@RequestParam(value = "child_nho_amount") int child_nho_amount,
		@RequestParam(value = "child_amount") int child_amount,
		@RequestParam(value = "aldult_amount") int aldult_amount,
		@RequestParam(value = "tour_id") int tour_id,
		@RequestParam(value = "user_id") int user_id,
		@RequestParam(value = "soluong") int soluong,
		@RequestParam(value = "tour_payment_type") int tour_payment_type,
		HttpServletRequest request,
		Model model,Locale locale
		,RedirectAttributes redirectAttributes) {
		Tour tour = new Tour();
		tour.setId(tour_id);
		book.setTour(tour);
		UserTour user = new UserTour();
		user.setId(user_id);
		book.setUsertour(user);
		bookservice.insert(book);
		Book bookIdMax = bookservice.getIdMax();
		List<Ticket> listTiket = new ArrayList<Ticket>();
		for(int i = 0; i<soluong;i++) {
			Ticket ticket = new Ticket();
			String name = request.getParameter("name.[" + i +"]");
			String email = request.getParameter("email.[" + i +"]");
			String phone = request.getParameter("phone.[" + i +"]");
			boolean state = false;
			String unitprice = request.getParameter("unitprice.[" + i + "]");
			BigDecimal unitpriceB = new BigDecimal(unitprice);
			ticket.setName(name);
			ticket.setEmail(email);
			ticket.setPhone(phone);
			ticket.setState(state);
			ticket.setUnitprice(unitpriceB);
			ticket.setBook(bookIdMax);
			ticketService.insert(ticket);
			listTiket.add(ticket);
		}

	
		redirectAttributes.addAttribute("tour_payment_type", tour_payment_type);
		redirectAttributes.addAttribute("book_id", bookservice.getIdMax().getId());
		redirectAttributes.addAttribute("tour_id", tour_id);
		redirectAttributes.addAttribute("aldult_amount", aldult_amount);
		redirectAttributes.addAttribute("child_amount", child_amount);
		redirectAttributes.addAttribute("child_nho_amount", child_nho_amount);
		return "redirect:/payment/";
	}
	
}
