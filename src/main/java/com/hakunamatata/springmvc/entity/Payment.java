package com.hakunamatata.springmvc.entity;

import java.math.BigDecimal;
import java.util.Date;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Payment {
	
	@Override
	public String toString() {
		return "Payment [id=" + id + ", quantity=" + quantity + ", totalprice=" + totalprice + ", pdate=" + pdate
				+ ", book=" + book + ", payment_type=" + payment_type + "]";
	}
	private int id;
	private int quantity;
	private BigDecimal totalprice;
	private Date pdate;
	
	private Book book;
	private PaymentType payment_type;
	
	
	
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public PaymentType getPayment_type() {
		return payment_type;
	}
	public void setPayment_type(PaymentType payment_type) {
		this.payment_type = payment_type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public BigDecimal getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(BigDecimal totalprice) {
		this.totalprice = totalprice;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	
	
}
