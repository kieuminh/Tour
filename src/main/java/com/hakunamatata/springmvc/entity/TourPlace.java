package com.hakunamatata.springmvc.entity;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class TourPlace {
	
	private int id;
	
	private Place place;
	private Tour tour;
	


	@Override
	public String toString() {
		return "TourPlace [id=" + id + ", place=" + place + ", tour=" + tour + "]";
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
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
	
	
}
