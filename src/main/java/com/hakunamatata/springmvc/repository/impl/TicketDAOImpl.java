package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Ticket;
import com.hakunamatata.springmvc.repository.TicketDAO;
@Repository
public class TicketDAOImpl implements TicketDAO {
	@Autowired 
	private SqlSessionTemplate session;
	@Override
	public void insert(Ticket vo) {
		session.insert("Ticket.insert",vo);
		
	}

	@Override
	public void update(Ticket vo) {
		session.update("Ticket.update",vo);
		
	}

	@Override
	public void delete(Ticket vo) {
		session.delete("Ticket.delete",vo);
		
	}

	@Override
	public Ticket get(Ticket vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Ticket.selectOne",vo);
	}

	@Override
	public List<Ticket> list(Ticket vo) {
		// TODO Auto-generated method stub
		return session.selectList("Ticket.selectAll",null);
	}

	@Override
	public List<Ticket> listTicketByBookId(int id) {
		// TODO Auto-generated method stub
		return session.selectList("Ticket.selectByBookId",id);
	}

	@Override
	public void updateState(int book_id) {
		session.update("Ticket.updateState",book_id);
		
	}



}
