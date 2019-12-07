package com.bridgelabz.loginregistrationOne.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bridgelabz.loginregistrationOne.model.PersonDetails;

public class UserDetailsRepository {
	static PreparedStatement pstmt = null;
	static ResultSet rs = null;
	public static Connection dbConnection() throws ClassNotFoundException, SQLException {
		Connection con = null;
		String user = "root";
		String password = "root";

		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver Class loaded & Registered");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", user, password);
		
		return con;
	}
	
	public static String edit(PersonDetails person) throws ClassNotFoundException, SQLException {
		String query = "UPDATE table login.Registation set FirstName=?,LastName=?,Emailid=?,PhoneNo=? WHERE UserId=?";
		pstmt = dbConnection().prepareStatement(query);
		pstmt.setString(1,person.getFirstName());
		pstmt.setString(2,person.getLastname());
		pstmt.setString(3,person.getEmailId());
		pstmt.setString(4,person.getPhoneNumber());
		pstmt.setString(5,person.getUserName());
		
		int n = pstmt.executeUpdate();
		if(n!=0)
		{
			return "Sucess";
		}
		else
		{
			return "Something went wrong!!!";
		}
	}
	
	public static PersonDetails getOneUserDetails(String userid) throws ClassNotFoundException, SQLException {
		String query = "SELECT * FROM login.Registation WHERE UserId=?";
		pstmt = dbConnection().prepareStatement(query);
		pstmt.setString(1, userid);
		PersonDetails details=null;
		
		rs = pstmt.executeQuery();
		if(rs.next()) {
			details = new PersonDetails();
			details.setFirstName(rs.getString("FirstName"));
			details.setLastname(rs.getString("LastName"));
			details.setEmailId(rs.getString("Emailid"));
			details.setPhoneNumber(rs.getString("PhoneNo"));
			details.setUserName(rs.getString("UserId"));
			return details;
		}
		return null;
	}
}
