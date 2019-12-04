package com.bridgelabz.loginregistrationOne.service.serviceimpl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelabz.loginregistrationOne.model.PersonDetails;

@WebServlet("/loginImpl")
public class LoginImpl extends HttpServlet {
	public  List<PersonDetails> list=new ArrayList<PersonDetails>();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String firstName=req.getParameter("firstName");
		String lastName=req.getParameter("lastName");
		String userName=req.getParameter("userName");
		String password=req.getParameter("password");
		String emailId=req.getParameter("emailId");
		String phoneNumber=req.getParameter("phoneNumber");
		System.out.println(firstName+" "+lastName+" "+userName+" "+password+" "+emailId+" "+phoneNumber);

		
	
	}
}
