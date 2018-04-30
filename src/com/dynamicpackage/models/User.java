package com.dynamicpackage.models;

public class User {
	private static Integer user_count =1;
	private Integer user_id;
	private String name;
	private String email;
	public User(String name, String email) {
		super();
		this.name = name;
		this.email = email;
		user_count++;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String toString() {
		String ts ="Name : " + this.name;
		return ts;
		
	}

}
