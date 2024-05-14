<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Registrations</title>
</head>
<body>
	<h2>All registrations</h2>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<%
			ResultSet result = (ResultSet)request.getAttribute("res");
		while(result.next()){%>
		<tr>
			<td><%=result.getString(1) %></td>
			<td><%=result.getString(2) %></td>
			<td><%=result.getString(3) %></td>
			<td><%=result.getString(4) %></td>
			<td><a href="delete?email=<%=result.getString(3)%>">Delete</td>
			<td><a href="update?email=<%=result.getString(3)%>&mobile=<%=result.getString(4)%>">Update</td>
		</tr>
		<%}%>
	</table>
</body>
</html>