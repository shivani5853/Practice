package com.bridgelabz.loginregistrationOne.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelabz.loginregistrationOne.model.Login;

@WebServlet("/login")
public class loginServlet extends HttpServlet {

	public Login login = new Login();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String userName = req.getParameter("userName");
		String password = req.getParameter("Password");

		login.setUserName(userName);
		login.setPassword(password);

		String userNameOne = login.getUserName();
		String passwordOne = login.getPassword();

		System.out.println(userNameOne + " " + passwordOne);
		if (userNameOne.equalsIgnoreCase("") || passwordOne.equalsIgnoreCase("")) {
			RequestDispatcher requestDis = req.getRequestDispatcher("/login.jsp");
			requestDis.include(req, resp);
		} else {
			RequestDispatcher requestDis = req.getRequestDispatcher("/Home.jsp");
			requestDis.forward(req, resp);
		}
	}
}
