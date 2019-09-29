package com.bean;

public class TicketBean {
	private String ticket=null;
	private String email=null;
	private int adult=0;
	private int child=0;
	private String date=null;
	private String land=null;
	private String ride=null;
	
	public TicketBean() {
	}

	public TicketBean(String ticket, String email, int adult, int child, String date, String land, String ride) {
		super();
		this.ticket = ticket;
		this.email = email;
		this.adult = adult;
		this.child = child;
		this.date = date;
		this.land = land;
		this.ride = ride;
	}

	public String getTicket() {
		return ticket;
	}

	public void setTicket(String ticket) {
		this.ticket = ticket;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getLand() {
		return land;
	}

	public void setLand(String land) {
		this.land = land;
	}

	public String getRide() {
		return ride;
	}

	public void setRide(String ride) {
		this.ride = ride;
	}
	
		
}
