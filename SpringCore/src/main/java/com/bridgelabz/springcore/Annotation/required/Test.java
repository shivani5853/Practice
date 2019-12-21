package com.bridgelabz.springcore.Annotation.required;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("Annotation.xml");
		Requied required=(Requied) ctx.getBean("required");
		System.out.println(required.getName());
		System.out.println(required.getAge());
		System.out.println(required.getPhoneno());
		
	}
}
