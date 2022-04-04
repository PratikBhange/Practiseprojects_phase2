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
		<!-- To Handle User Login -->
		<%
		if(request.getParameter("b1").equals("UserForgot")) {
		%>
		<form action="UserController" method="post">
			<table>
				<tr>
					<td align="right">Username</td>
					<td><input type="text" name="username" placeholder="Enter Username"></td>
				</tr>
				<tr>
					<td align="right">Password</td>
					<td><input type="password" name="user_password" placeholder="Enter New Password"></td>
				</tr>
				<tr>
					<td align="right">Confirm Password</td>
					<td><input type="password" name="user_confirm_Password" placeholder="Enter Confirm Password"></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="Forgot" name="userLogin"></td>
				</tr>
			</table>
		</form>
		<%
		}
		%>
		<!-- To Handle Admin Login -->
		<%
		if(request.getParameter("b1").equals("AdminForgot")) {
		%>
		<form action="AdminController" method="post">
			<table>
				<tr>
					<td align="right">Username</td>
					<td><input type="text" name="admin_username" placeholder="Enter Username"></td>
				</tr>
				<tr>
					<td align="right">Password</td>
					<td><input type="password" name="admin_password" placeholder="Enter New Password"></td>
				</tr>
				<tr>
					<td align="right">Confirm Password</td>
					<td><input type="password" name="admin_confirm_password" placeholder="Enter Confirm password"></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="Forgot" name="adminLogin"></td>
				</tr>
			</table>
		</form>
		<%
		}
		%>
	</center>
</body>
</html>