package com.bridgelabz.springcore.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

public class EmployeeDao implements EmployeeInf {
  
	private DataSource datasource1;

	public void setDatasource1(DataSource datasource1) {
		this.datasource1 = datasource1;
	}

	public void update() {

	}

	public void add(Employee employee) {
		String query = "insert into Employee.Employee(id,name,number) values(?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = datasource1.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, employee.getId());
			pstmt.setString(2, employee.getName());
			pstmt.setInt(3, employee.getNum());

			int rs = pstmt.executeUpdate();

			if (rs != 0) {
				System.out.println("Employee Deatils Save in the database" + employee.getId());
			} else {
				System.out.println("Employee Details are  not save in the database" + employee.getId());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void delete() {

	}

}
