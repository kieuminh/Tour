package com.hakunamatata.springmvc.entity;


/**

 * @author Huynh Thi Tuyet Ngoc
 * @author BaoBB
 *
 */
public class Department {
	
	private int id;
	private String tourguide;
	private String address;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTourguide() {
		return tourguide;
	}
	public void setTourguide(String tourguide) {
		this.tourguide = tourguide;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Department [id=" + id + ", tourguide=" + tourguide + ", address=" + address + "]";
	}
	
	
}
