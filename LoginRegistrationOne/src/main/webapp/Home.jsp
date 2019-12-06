<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
	<a href="loginPage.jsp" class="btn btn-primary">Add</a>
	<button type="button" class="btn btn-primary">Update</button>
	<button type="button" class="btn btn-primary">Edit</button>
	<a href="Delete.jsp" class="btn btn-primary">Delete</a>
	<a href="index.jsp" class="btn btn-primary">Logout</a>

	<form action="Home" method="post">

		<table class="table table-striped table-dark">
			<thead class="thead-dark">
				<tr>
					<td>FirstName</td>
					<td>LastName</td>
					<td>Emailid</td>
					<td>UserId</td>
					<td>PhoneNo</td>
				</tr>
			</thead>
			<%
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String username = "root";
					String password = "root";
					String query = "select * from login.Registation";
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", username, password);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(query);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("FirstName")%></td>
				<td><%=rs.getString("LastName")%></td>
				<td><%=rs.getString("Emailid")%></td>
				<td><%=rs.getString("UserId")%></td>
				<td><%=rs.getString("PhoneNo")%></td>
			</tr>
			<%
				}
			%>

		</table>
		<%
			rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>

	</form>
</body>
</html>