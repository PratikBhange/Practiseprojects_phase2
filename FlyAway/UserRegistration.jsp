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
		<h1>Welcome to AirLine Registration System</h1>
		<hr>
		<form action="UserController" method="post">
			<table>
				<tr>
					<td align="right">Enter Your Full Name:</td>
					<td><input type="text" name="fullname"></td>
				</tr>
				<tr>
					<td align="right">Enter Email:</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td align="right">Enter username:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td align="right">Enter password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td align="right">Enter Confirm password:</td>
					<td><input type="password" name="cnfpassword"></td>
				</tr>
				<tr>
					<td align="right">Enter Age:</td>
					<td><input type="number" name="age"></td>
				</tr>
				<tr>
					<td align="right">Enter Aadhar No:</td>
					<td><input type="text" name="aadhar"></td>
				</tr>
				<tr>
					<td align="right">Enter Country:</td>
					<td><input type="text" name="country"></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="Register" name="userLogin">
						<input type="reset" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>