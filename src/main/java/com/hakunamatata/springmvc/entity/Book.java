package com.hakunamatata.springmvc.entity;

import java.math.BigDecimal;
import java.util.Date;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Book {

	private int id;
	private BigDecimal total_money;
	private int child_amount;
	private int aldult_amount;
	private int child_nho_amount;
	private Date date;
	
	private UserTour usertour;
	private Tour tour;
	
	
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", total_money=" + total_money + ", child_amount=" + child_amount + ", aldult_amount="
				+ aldult_amount + ", child_nho_amount=" + child_nho_amount + ", date=" + date + ", usertour=" + usertour
				+ ", tour=" + tour + "]";
	}
	public UserTour getUsertour() {
		return usertour;
	}
	public void setUsertour(UserTour usertour) {
		this.usertour = usertour;
	}
	public Tour getTour() {
		return tour;
	}
	public void setTour(Tour tour) {
		this.tour = tour;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public BigDecimal getTotal_money() {
		return total_money;
	}
	public void setTotal_money(BigDecimal total_money) {
		this.total_money = total_money;
	}
	public int getChild_amount() {
		return child_amount;
	}
	public void setChild_amount(int child_amount) {
		this.child_amount = child_amount;
	}
	public int getAldult_amount() {
		return aldult_amount;
	}
	public void setAldult_amount(int aldult_amount) {
		this.aldult_amount = aldult_amount;
	}
	public int getChild_nho_amount() {
		return child_nho_amount;
	}
	public void setChild_nho_amount(int child_nho_amount) {
		this.child_nho_amount = child_nho_amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
