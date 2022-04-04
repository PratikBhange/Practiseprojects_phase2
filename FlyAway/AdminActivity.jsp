<%@page import="com.model.FlightDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.dao.FlightDao,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 align="right">
		Welcome
		<%=request.getAttribute("admin")%></h2>
	<div align="right">
		<a href="AdminController?adminLogin=logout">logout</a>
	</div>
	<center>
		<h3>Add Flight Details</h3>
		<hr>
		<form action="FlightController" method="post">
			<table>
				<tr>
					<td align="right">Airline Name :</td>
					<td><input type="text" name="AirLine_Name"></td>
				</tr>
				<tr>
					<td align="right">Flight Number :</td>
					<td><input type="text" name="Flight_Number"></td>
				</tr>
				<tr>
					<td align="right">Source City :</td>
					<td><input type="text" name="Source_City"></td>
				</tr>
				<tr>
					<td align="right">Destination City :</td>
					<td><input type="text" name="Destination_City"></td>
				</tr>
				<tr>
					<td align="right">Date of Travel:</td>
					<td><input type="date" name="Date_of_Travel"></td>
				</tr>
				<tr>
					<td align="right">Departure Time :</td>
					<td><input type="datetime-local" name="Departure_time_from_source"></td>
				</tr>
				<tr>
					<td align="right">Arrival Time :</td>
					<td><input type="datetime-local" name="Arrival_time_at_destination"></td>
				</tr>
				<tr>
					<td align="right">Class</td>
					<td><input type="text" name="clases"></td>
				</tr>
				<tr>
					<td align="right">Total Seats :</td>
					<td><input type="number" name="Total_Seats"></td>
				</tr>
				<tr>
					<td align="right">Booked Seats : </td>
					<td><input type="number" name="Booked_Seats" ></td>
				</tr>
				<tr>
					<td align="right">Available Seats : </td>
					<td><input type="number" name="Seat_Availability"></td>
				</tr>
				<tr>
					<td align="right">Ticket Price</td>
					<td><input type="number" name="Ticket_Price"></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="Add" name="b1">
						<input type="submit" value="Display"name="b1">
						<input type="submit" value="Delete" name="b1">
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<h2>All Flights</h2>
		<hr>
		<table border="1">
			<thead>
			<tr>
				<th>AirLine Name</th>
				<th>Flight Number</th>
				<th>Source City</th>
				<th>Destination City</th>
				<th>Schedule On</th>
				<th>Departure Time</th>
				<th>Arrival Time</th>
				<th>Total Seats</th>
				<th>Booked Seats</th>
				<th>Seats Available</th>
				<th>Class</th>
				<th>Ticket Price</th>
			</tr>
			</thead>
			<tbody>
		  <%ArrayList<FlightDetails> flist = new FlightDao().displayAllFlight();		
			for(FlightDetails fd:flist)
			{%>
			<tr>
				<td align="center"><%=fd.getAirLine_Name() %></td>
				<td align="center"><%=fd.getFlight_Number() %></td>
				<td align="center"><%=fd.getSource_City() %></td>
				<td align="center"><%=fd.getDestination_City() %></td>
				<td align="center"><%=fd.getDate_of_Travel() %></td>
				<td align="center"><%=fd.getDeparture_time_from_source() %></td>
				<td align="center"><%=fd.getArrival_time_at_Destination() %></td>
				<td align="center"><%=fd.getTotal_Seats() %></td>
				<td align="center"><%=fd.getBooked_Seats() %></td>
				<td align="center"><%=fd.getSeat_Availability() %></td>
				<td align="center"><%=fd.getClases() %></td>
				<td align="center"><%=fd.getTicket_Price() %></td>
			</tr>
			<%}%>
			</tbody>
		</table>
	</center>
</body>
</html>