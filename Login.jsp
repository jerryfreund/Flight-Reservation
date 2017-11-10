<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Cardinal Air</title>
</head>
<body>
<form method = "post" action="/HW1/Login">
<!-- User Name:
<input name = "userName"/>
<br/>
Password:
<input type="password" name = "Password"/>
<br/>
<input type = "submit"/> -->
<table border="0">
<tr>
<td>User Name:</td>
<td><input name = "userName"/></td>
</tr>
<tr>
<td>password</td>
<td><input type="password" name = "Password"/></td>
</tr>
</table>

<input type = "submit" value ="Submit"/>

</form>
<a href="/HW1/Registration.jsp">I am a new user, I want to register</a>
</body>
</html>