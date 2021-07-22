package com.hakunamatata.springmvc.entity;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Tour {
	public Tour() {
		// TODO Auto-generated constructor stub
	}
	private int id;
	private String name;
	private BigDecimal price;
	private int min_amount;
	private int max_amount;
	private Date start_day;
	private Date end_day;
	public Tour(int id, String name, BigDecimal price, int min_amount, int max_amount, Date start_day, Date end_day,
			String content, String note, String image, Department department, CatTour cattour, Hotel hotel,
			Vehicle vehicle, List<Place> place, List<Discount> discount, List<TourPlace> tourplace,
			List<TourDiscount> tourdiscount) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.min_amount = min_amount;
		this.max_amount = max_amount;
		this.start_day = start_day;
		this.end_day = end_day;
		this.content = content;
		this.note = note;
		this.image = image;
		this.department = department;
		this.cattour = cattour;
		this.hotel = hotel;
		this.vehicle = vehicle;
		this.place = place;
		this.discount = discount;
		this.tourplace = tourplace;
		this.tourdiscount = tourdiscount;
	}
	@Override
	public String toString() {
		return "Tour [id=" + id + ", name=" + name + ", price=" + price + ", min_amount=" + min_amount + ", max_amount="
				+ max_amount + ", start_day=" + start_day + ", end_day=" + end_day + ", content=" + content + ", note="
				+ note + ", image=" + image + ", department=" + department + ", cattour=" + cattour + ", hotel=" + hotel
				+ ", vehicle=" + vehicle + ", place=" + place + ", discount=" + discount + ", tourplace=" + tourplace
				+ ", tourdiscount=" + tourdiscount + "]";
	}
	private String content;
	private String note;
	private String image; 
	
	private Department department;
	private CatTour cattour;
	private Hotel hotel;
	private Vehicle vehicle;
	
	private List<Place> place;
	private List<Discount> discount;
	public List<TourPlace> getTourplace() {
		return tourplace;
	}
	public void setTourplace(List<TourPlace> tourplace) {
		this.tourplace = tourplace;
	}
	public List<TourDiscount> getTourdiscount() {
		return tourdiscount;
	}
	public void setTourdiscount(List<TourDiscount> tourdiscount) {
		this.tourdiscount = tourdiscount;
	}
	private List<TourPlace> tourplace;
	private List<TourDiscount> tourdiscount;
	
	public List<Place> getPlace() {
		return place;
	}
	public void setPlace(List<Place> place) {
		this.place = place;
	}
	public List<Discount> getDiscount() {
		return discount;
	}
	public void setDiscount(List<Discount> discount) {
		this.discount = discount;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public Vehicle getVehicle() {
		return vehicle;
	}
	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public CatTour getCattour() {
		return cattour;
	}
	public void setCattour(CatTour cattour) {
		this.cattour = cattour;
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
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getMin_amount() {
		return min_amount;
	}
	public void setMin_amount(int min_amount) {
		this.min_amount = min_amount;
	}
	public int getMax_amount() {
		return max_amount;
	}
	public void setMax_amount(int max_amount) {
		this.max_amount = max_amount;
	}
	public Date getStart_day() {
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
	public Date getEnd_day() {
		return end_day;
	}
	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
}
