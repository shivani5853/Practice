package com.bridgelabz.loginregistrationOne;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class InsertQuery {
	public static void main(String[] args) {
		Connection con = null;
		String user = "root";
		String password = "root";
		try {
			System.out.println(user);
			System.out.println(password);
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Class loaded & Registered");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/book", user, password);
			System.out.println("Connection Established with Databasde");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from book.authors");

			while (rs.next()) {
				System.out.println(" "+rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));
			}
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