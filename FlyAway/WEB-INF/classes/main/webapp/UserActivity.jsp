<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>
			Welcome to AirLine Reservation System
			<%=request.getParameter("username")%></h2>
			<br>
			<br>
			<hr>
			<h3>Plan Your Journey With Us</h3>
			<hr>
			<br>
			<br>
		<form action="UserController" method="post">
			<table>
				<tr>
					<td><input type="hidden" value="<%=(int)request.getAttribute("uid")%>" name="uid"></td>
				</tr>
				<tr>
					<td align="right">Source City : </td>
					<td><input type="text" name="Source_City"></td>
				</tr>
				<tr>
					<td align="right">Destination City : </td>
					<td><input type="text" name="Destination_City"></td>
				</tr>
				<tr>
					<td align="right">Date Of Travel : </td>
					<td><input type="date" name="Date_of_Travel"></td>
				</tr>
				<tr>
					<td align="right">Total Persons : </td>
					<td><input type="number" name="Total_Persons"></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" name="userLogin" value="Search">
						<input type="reset" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>