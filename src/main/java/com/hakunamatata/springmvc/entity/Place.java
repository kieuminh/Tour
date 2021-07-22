package com.hakunamatata.springmvc.entity;


/**
 * @author Huynh Thi Tuyet Ngoc
/**
 * @author BaoBB
 *
 */
public class Place {
	
	private int id;
	private String name;
	private String address;
	private String image;
	private String description;

	
	private Province province;
	
	public String toString() {
		return "Place [id=" + id + ", name=" + name + ", address=" + address + ", image=" + image + ", description="
				+ description + ", province=" + province + "]";
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
}
