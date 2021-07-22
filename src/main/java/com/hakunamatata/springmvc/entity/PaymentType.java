package com.hakunamatata.springmvc.entity;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class PaymentType {
	
	private int id;
	private String type;
	
	@Override
	public String toString() {
		return "PaymentType [id=" + id + ", type=" + type + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
