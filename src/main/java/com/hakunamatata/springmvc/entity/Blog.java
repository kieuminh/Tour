package com.hakunamatata.springmvc.entity;

import java.util.Date;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public class Blog {
	
	private int id;
	private String title;
	private String wname;
	private String content;
	private Date wdate;
	private int like_amount;
	private boolean state;
	private String image;
	
	
	
	@Override
	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", wname=" + wname + ", content=" + content + ", wdate=" + wdate
				+ ", like_amount=" + like_amount + ", state=" + state + ", image=" + image + "]";
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public int getLike_amount() {
		return like_amount;
	}
	public void setLike_amount(int like_amount) {
		this.like_amount = like_amount;
	}
	public boolean isState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	
	
}
