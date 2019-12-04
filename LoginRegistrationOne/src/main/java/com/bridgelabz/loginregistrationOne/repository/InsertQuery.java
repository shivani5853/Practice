package com.bridgelabz.loginregistrationOne.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bridgelabz.loginregistrationOne.utility.Utility;

public class InsertQuery {
	public static void main(String[] args) {
		
		Connection con = null;
		PreparedStatement pstmt = null;

		String user = "root";
		String password = "root";

		String query = "insert into login.Registation value(?,?,?,?,?,?)";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Class loaded & Registered");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registation", user, password);
			System.out.println("Connection Established with Databasde");
			pstmt = con.prepareStatement(query);
			System.out.println("Plateform Created");
			pstmt.setInt(1,1);
			
		} catch (Exception e) {
			System.out.println(e);
		}

		finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}