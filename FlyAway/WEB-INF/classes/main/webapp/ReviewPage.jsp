<%@page import="com.model.FlightDetails"%>
<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
td {
  padding: 5px;
  color: rgb(150,150,0);
}
</style>
<meta charset="ISO-8859-1">
<title>Review Details</title>
</head>
<body>
	<br><br>
	<center><h2>Review All the details and Click On Confirm to Book Tickets</h2></center>
	<br><hr><br><br>
	<%
	User u = (User) request.getAttribute("u");
	%>
	<%
	FlightDetails fd = (FlightDetails) request.getAttribute("fd");
	%>

	<center>
		<div style="float: left; margin-left:25%;">
			<h2>Your Details</h2>
			<table>
				<tr>
					<td align="right">Full Name:</td>
					<td><input type="text" name="fullname"
						value="<%=u.getUserFullName()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Email:</td>
					<td><input type="email" name="email"
						value="<%=u.getUserEmail()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">username:</td>
					<td><input type="text" name="username"
						value="<%=u.getUsername()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Age:</td>
					<td><input type="number" name="age" value="<%=u.getAge()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Aadhar No:</td>
					<td><input type="text" name="aadhar"
						value="<%=u.getUserAadhar()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Country:</td>
					<td><input type="text" name="country"
						value="<%=u.getCountry()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>Seat Request</td>
					<td><input type="number" name="Total_Persons" value="<%=request.getParameter("Total_Persons")%>" readonly="readonly"></td>
				</tr>
			</table>
		</div>
		<div style="float: right; margin-right:25%;">
			<h2>Flight Details</h2>
			<table>
				<tr>
					<td align="right">Airline Name :</td>
					<td><input type="text" name="AirLine_Name" value="<%=fd.getAirLine_Name()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Flight Number :</td>
					<td><input type="text" name="Flight_Number" value="<%=fd.getFlight_Number()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Source City :</td>
					<td><input type="text" name="Source_City" value="<%=fd.getSource_City()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Destination City :</td>
					<td><input type="text" name="Destination_City" value="<%=fd.getDestination_City()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Date of Travel:</td>
					<td><input type="date" name="Date_of_Travel" value="<%=fd.getDate_of_Travel()%>" readonly="readonly"> </td>
				</tr>
				<tr>
					<td align="right">Departure Time :</td>
					<td><input type="datetime-local"
						name="Departure_time_from_source" value="<%=fd.getDeparture_time_from_source()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Arrival Time :</td>
					<td><input type="datetime-local"
						name="Arrival_time_at_destination" value="<%=fd.getArrival_time_at_Destination()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Class</td>
					<td><input type="text" name="clases" value="<%=fd.getClases()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Total Seats :</td>
					<td><input type="number" name="Total_Seats" value="<%=fd.getTotal_Seats()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Booked Seats :</td>
					<td><input type="number" name="Booked_Seats" value="<%=fd.getBooked_Seats()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Available Seats :</td>
					<td><input type="number" name="Seat_Availability" value="<%=fd.getSeat_Availability()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Ticket Price</td>
					<td><input type="number" name="Ticket_Price" value="<%=fd.getTicket_Price()%>" readonly="readonly"></td>
				</tr>
			</table>
		</div>
	</center>
	<center>
	<div style="margin-top: 32%;">
		<form action="Payment.jsp" method="post">
			<input type="submit" value="Confirm" style="height:30px; width:100px; background:rgb(0,220,0); cursor: pointer;">
		</form>
	</div>
	</center>
	<%session.setAttribute("u", u);
	session.setAttribute("fd", fd);
	session.setAttribute("Total_Persons", request.getParameter("Total_Persons"));%>
</body>
</html>