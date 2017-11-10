<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<script>
function validateForm()
{
var x = document.forms["regForm"]["Pass1"].value;
var y = document.forms["regForm"]["newPassword"].value;
if (x != y)
  {
  alert("Passwords are not the same!");
  return false;
  }
}
</script>
<body>
<h1>Registration Page</h1>
<form name = "regForm" method = "post" onsubmit="return validateForm();" action="/HW1/Registration">
<table border="0">
<tr>
<td>User Name:</td>
<td><input name = "newName"/></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name = "Pass1"/></td>
</tr>
<tr>
<td>Confirm password:</td>
<td><input type="password" name = "newPassword"/></td>
</tr>
</table>

<input type = "submit" value ="Register"/>

</form>

</body>
</html>