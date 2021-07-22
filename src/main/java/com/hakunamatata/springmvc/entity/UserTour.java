package com.hakunamatata.springmvc.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;


/**
 * @author Huynh Thi Tuyet Ngoc
 * 			Van:@Jsongnore
 *
 */
public class UserTour {
	
	private int id;
	private String username;
	private String passwd;
	private String cusname;
	private String phone;
	private Date birthday;
	private String address;
	private String email;
	private String avatar;
	private int state;
	

	private UserRole user_role;
	
	
	

	@Override
	public String toString() {
		return "UserTour [id=" + id + ", username=" + username + ", passwd=" + passwd + ", cusname=" + cusname
				+ ", phone=" + phone + ", birthday=" + birthday + ", address=" + address + ", email=" + email
				+ ", avatar=" + avatar + ", state=" + state + ", user_role=" + user_role + "]";
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public UserRole getUser_role() {
		return user_role;
	}
	public void setUser_role(UserRole user_role) {
		this.user_role = user_role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasswd() {
		return passwd;
	}
	@JsonIgnore
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getCusname() {
		return cusname;
	}
	public void setCusname(String cusname) {
		this.cusname = cusname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}	
		
}
