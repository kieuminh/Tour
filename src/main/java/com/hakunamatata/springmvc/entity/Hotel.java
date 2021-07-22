package com.hakunamatata.springmvc.entity;


/**
 * @author Huynh Thi Tuyet Ngoc
 * @author BaoBB
 *
 */
public class Hotel {
	
	private int id;
	private String type;
	private String name;
	private String image;
	private String address;
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public String toString() {
		return "Hotel [id=" + id + ", type=" + type + ", name=" + name + ", image=" + image + ", address=" + address
				+ "]";
	}

}
