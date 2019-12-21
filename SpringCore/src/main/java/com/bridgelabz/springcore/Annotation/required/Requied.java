package com.bridgelabz.springcore.Annotation.required;

import org.springframework.beans.factory.annotation.Required;

public class Requied {
	private String Name;
	private int age;
	private int phoneno;
	
	@Required
	public void setName(String name) {
		Name = name;
	}

	public String getName() {
		return Name;
	}

	public int getAge() {
		return age;
	}

	public int getPhoneno() {
		return phoneno;
	}

	@Required
	public void setAge(int age) {
		this.age = age;
	}

	@Required
	public void setPhoneno(int phoneno) {
		this.phoneno = phoneno;
	}

	
}
