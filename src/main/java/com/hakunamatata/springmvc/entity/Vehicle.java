package com.hakunamatata.springmvc.entity;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Vehicle {
	public Vehicle() {
		// TODO Auto-generated constructor stub
	}
	public Vehicle(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	@Override
	public String toString() {
		return "Vehicle [id=" + id + ", name=" + name + "]";
	}
	private int id;
	private String name;
	
	

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
	
	
}
