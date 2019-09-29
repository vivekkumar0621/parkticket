package com.bean;

public class UserBean {

	private String email;
	private String password;
	private String name;
	private String date;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public UserBean()
	{
		
	}
	
	public UserBean(String email,String password,String date,String name)
	{
		super();
		this.email = email;
		this.password = password;
		this.date=date;
		this.name=name;
	}
	
	
	public UserBean(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
