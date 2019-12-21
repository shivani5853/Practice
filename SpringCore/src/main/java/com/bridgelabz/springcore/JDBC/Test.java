package com.bridgelabz.springcore.JDBC;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx=new ClassPathXmlApplicationContext("Spring.xml");
		EmployeeDao emp=(EmployeeDao) ctx.getBean("employee");
		Employee empl=new Employee();
		empl.setId(2);
		empl.setName("Akash");
		empl.setNum(70779025);
		emp.add(empl);
	}
}
