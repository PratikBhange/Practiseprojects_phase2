<%@page import="com.model.User"%>
<%@page import="com.model.FlightDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
</style>
<title>Payment</title>
</head>
<body style="background: rgb(17, 237, 200);">
	<%
	FlightDetails fd = (FlightDetails) session.getAttribute("fd");
	User u = (User) session.getAttribute("u");
	%>
	<center>
		<br>
		<br>
		<h2>Payment</h2>
		<br>
		<hr>
		<br>
		<br>
		<form action="BookFlightController" method="post">
			<table>
				<tr>
					<td align="right"><span
						style="margin:2px ; font-style: oblique; font-size: 30px; font-family: monospace; color: rgb(0, 47, 97);">Name
							: </span></td>
					<td><span
						style="margin:2px ; font-style: oblique; font-size: 30px; font-family: monospace; color: rgb(0, 47, 97);"><%=u.getUserFullName()%></span></td>
				</tr>
				<tr>
					<td align="right"><span
						style="margin:2px ; font-style: oblique; font-size: 30px; font-family: monospace; color: rgb(0, 47, 97);">Total
							Amount Due :</span></td>
					<td><span
						style="font-style: oblique; font-size: 30px; font-family: monospace; color: rgb(255, 100, 0);">Rs.</span>&nbsp;
						<span
						style="margin:2px; font-style: oblique; font-size: 30px; font-family: monospace; color: rgb(255, 100, 0);"><%=fd.getTicket_Price()%></span></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit" name="b1" value="Confirm" style="height:30px; width:100px; background:rgb(0,220,0); cursor: pointer; border:groove; margin: 0.5in; "></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>