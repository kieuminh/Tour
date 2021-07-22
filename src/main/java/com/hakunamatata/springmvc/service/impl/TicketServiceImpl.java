package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.repository.TicketDAO;
import com.hakunamatata.springmvc.service.TicketService;
@Service
public class TicketServiceImpl implements TicketService {
	@Autowired
	private TicketDAO dao;
	@Override
	public void insert(Ticket vo) {
		dao.insert(vo);

	}

	@Override
	public void update(Ticket vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Ticket vo) {
		dao.delete(vo);

	}

	@Override
	public Ticket get(Ticket vo) {
		// TODO Auto-generated method stub
		return dao.get(vo);
	}

	@Override
	public List<Ticket> list(Ticket vo) {
		// TODO Auto-generated method stub
		return dao.list(vo);
	}

	@Override
	public List<Ticket> listTicketByBookId(int id) {
		// TODO Auto-generated method stub
		return dao.listTicketByBookId(id);
	}

	@Override
	public void updateState(int book_id) {
		dao.updateState(book_id);
	}

}
