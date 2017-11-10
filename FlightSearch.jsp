<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FlightSearch</title>
</head>
<body>
<h6>Flight Search Page</h6>
<hr>
<h1>Flight Search</h1>
<form name = "flightForm" method = "post"  action="/HW1/FlightSearchResults.jsp">
<table border="0">
<tr>
<td>Depart From:</td>
<td><input name = "userName"/></td>
</tr>
<tr>
<td>Destination:</td>
<td><input  name = "Pass1"/></td>
</tr>
<tr>
<td>Class:</td>
<td>
<select name="tClass">
<option value="Economy">Economy</option>
<option value="Business">Business</option>
<option value="First"> First</option>
<option value="Disabled">Disabled</option>
</select>


</td>
</tr>
<tr>
<td>Number of Passengers:</td>
<td><input  name = "Password"/></td>
</tr>
</table>

<input type = "submit" value ="Search"/>

</form>
<table bgcolor="0066FF">
<tr>
<td>
<form name = "Booking_History" method = "post"  action="/HW1/BookingHistory.jsp">
<input type = "submit" value ="Booking History"/>
</form>
</td>
</tr>
</table>
</body>
</html>