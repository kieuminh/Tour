package com.hakunamatata.springmvc.entity;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class CatTour {
	
	private int id;
	private String name;
	
	
	@Override
	public String toString() {
		return "CatTour [id=" + id + ", name=" + name + "]";
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
	
	
}
