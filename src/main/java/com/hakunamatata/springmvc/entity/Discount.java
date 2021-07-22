package com.hakunamatata.springmvc.entity;

import java.util.Date;


/**
 * @author Huynh Thi Tuyet Ngoc
 * @author BaoBB
 *
 */
public class Discount {
	
	private int id;
	private String name;
	private int scope;
	private Date start_day;
	private Date end_day;
	
	
	@Override
	public String toString() {
		return "Discount [id=" + id + ", name=" + name + ", scope=" + scope + ", start_day=" + start_day + ", end_day="
				+ end_day + "]";
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
	public int getScope() {
		return scope;
	}
	public void setScope(int scope) {
		this.scope = scope;
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
	
}
