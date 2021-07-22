package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.Ticket;

public interface TicketDAO extends DAO<Ticket>{
	List<Ticket> listTicketByBookId(int id);
	void updateState(int book_id);
}
