package com.hakunamatata.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hakunamatata.springmvc.entity.Book;
import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.service.BookService;
import com.hakunamatata.springmvc.service.TicketService;

@Controller
@RequestMapping("/admin/booking")
public class BookingAdminController {
	@Autowired 
	private BookService bookService;
	@Autowired
	private TicketService ticketService;
	@GetMapping(value = {"","/"})
	public  String list(Model model) {
		List<Book> listBook = bookService.list(null);
		System.out.println(listBook);
		model.addAttribute("listBook",listBook);
//		return	new ResponseEntity<List<Book>>(listBook, HttpStatus.OK);
		return "admin/booking/list";
	}
	
	@GetMapping("ticket")
	public String listTicket(@RequestParam("id") int book_id,Model model) {
		List<Ticket> listTicket = ticketService.listTicketByBookId(book_id);
//		System.out.println(listTicket);
		model.addAttribute("listTicket", listTicket);
		
		return "admin/booking/ticketList";
	}
	@GetMapping("delete")
	public String delete(@RequestParam("id") int book_id) {
		List<Ticket> listTicket = ticketService.listTicketByBookId(book_id);
		System.out.println(listTicket);
		for(Ticket t : listTicket) {
			ticketService.delete(t);
		}
		Book book = new Book();
		book.setId(book_id);
		bookService.delete(book);
		return "redirect:/admin/booking";
	}
	
}
