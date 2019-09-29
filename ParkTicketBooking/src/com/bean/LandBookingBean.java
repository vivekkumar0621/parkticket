package com.bean;

public class LandBookingBean {
	private String email=null;
	private int adult=0;
	private int child=0;
	

	public LandBookingBean() {
	}
	
	public LandBookingBean(String email, int adult, int child) {
		super();
		this.email = email;
		this.adult = adult;
		this.child = child;
	}
	

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	
	
	
}
