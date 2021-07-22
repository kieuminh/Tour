package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.Ticket;

public interface TicketService extends ServiceInterface<Ticket>{
	List<Ticket> listTicketByBookId(int id);
	void updateState(int book_id);
}
