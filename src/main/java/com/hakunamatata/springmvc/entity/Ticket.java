package com.hakunamatata.springmvc.entity;


import java.math.BigDecimal;
import java.util.Date;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Ticket {
	
	private int id;
	private String name;
	private String email;
	private String ticket_code;
	private String phone;
	private boolean state;
	private Date giveDate;
	private BigDecimal unitprice;
	
	private Book book;
	
	
	
	
	@Override
	public String toString() {
		return "Ticket [id=" + id + ", name=" + name + ", email=" + email + ", ticket_code=" + ticket_code + ", phone="
				+ phone + ", state=" + state + ", giveDate=" + giveDate + ", unitprice=" + unitprice + ", book=" + book
				+ "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTicket_code() {
		return ticket_code;
	}
	public void setTicket_code(String ticket_code) {
		this.ticket_code = ticket_code;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	public Date getGiveDate() {
		return giveDate;
	}
	public void setGiveDate(Date giveDate) {
		this.giveDate = giveDate;
	}
	public BigDecimal getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(BigDecimal unitprice) {
		this.unitprice = unitprice;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	
	
}
