package com.hakunamatata.springmvc.entity;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class TourDiscount {
	
	@Override
	public String toString() {
		return "TourDiscount [id=" + id + ", tour=" + tour + ", discount=" + discount + "]";
	}

	private int id;
	
	private Tour tour;
	private Discount discount;
	
	
	
	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public Discount getDiscount() {
		return discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}
