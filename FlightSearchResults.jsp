<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filight Search Results</title>
</head>
<body>
<%
	String flightNum, flightDate, depTime, arrTime, numStops, flightCost;
	flightNum = "CA0001";
	flightDate = "Oct 1st 2013";
	depTime = "12:45 PM";
	arrTime = "10:30 PM";
	numStops = "Non-Stop";
	flightCost = "$333.33";
	
%>
<h6>Flight Search Results Page</h6>
<hr>
<form name = "flightInfo" method = "post"  action="/HW1/ViewAndBook.jsp">
<table border="1" width="100%">
<tr>
<td>Flight Number</td>
<td>Flight Date</td>
<td>Departure time</td>
<td>Arrival Time</td>
<td>Number of Stops</td>
<td>Cost</td>
<td>Book</td>
</tr>
<tr>
<td><%=flightNum %></td>
<td><%=flightDate %></td>
<td><%=depTime %></td>
<td><%=arrTime %></td>
<td><%=numStops %></td>
<td><%=flightCost %></td>
<td><input type = "submit" value ="View/Book"/>
</tr>
</table>
</form>

</body>
</html>