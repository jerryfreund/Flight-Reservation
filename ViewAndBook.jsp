<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View and Book</title>
<%
	String flightNum, flightDate, depTime, arrTime, numStops, 
		   stopLocation, stopDuration, jetType;
	Double flightCost;

    //Setting value and session value to get on other JSP pages within the site
	flightNum = "CA0001";
	session.setAttribute("flightNum", flightNum);
	flightDate = "Oct 1st 2013";
	session.setAttribute("flightDate", flightDate);
	depTime = "12:45 PM";
	session.setAttribute("depTime", depTime);
	arrTime = "10:30 PM";
	session.setAttribute("arrTime", arrTime);
	numStops = "Non-Stop";
	session.setAttribute("numStops", numStops );
	flightCost = 333.33;
	session.setAttribute("flightCost", flightCost);
	stopLocation = "Paris, CDG, France";
	session.setAttribute("stopLocation", stopLocation);
	stopDuration = "No Enroute stops - Direct flight to destination";
	session.setAttribute("stopDuration", stopDuration);
	jetType = "Airbus A380";
	session.setAttribute("jetType", jetType);
%>
</head>
<body>
<form name = "bookForm" method = "post"  action="/HW1/Transaction.jsp">
<table border="1">
<tr>
<td>Flight Number</td>
<td><%=flightNum %></td>
</tr>
<tr>
<td>Flight Date</td>
<td><%=flightDate %></td>
</tr>
<tr>
<td>Departure</td>
<td><%=depTime %></td>
</tr>
<tr>
<td>Arrival Time</td>
<td><%=arrTime %></td>
</tr>
<tr>
<td>Number of Stops</td>
<td><%=numStops %></td>
</tr>
<tr>
<td>Cost</td>
<td><%=flightCost %></td>
</tr>
<tr>
<td>Transfer</td>
<td><%=stopLocation %></td>
</tr>
<tr>
<td>Time between Flights</td>
<td><%=stopDuration %></td>
</tr>
<tr>
<td>Jet type</td>
<td><%=jetType %></td>
</tr>
</table>
<!-- <form name = "bookForm" method = "post"  action="/HW1/Transaction.jsp"> -->
<table>
<tr>
<td>Number of seats</td>
<td><input  name = "ticketQuantity"/></td>
<td><input type = "submit" value ="Select"/></td>
</tr>
</table>
</form>

<table>
<tr>
<td>
<form name = "FormA" method = "post"  action="/HW1/FlightSearchResults.jsp">
<input type = "submit" value ="Back"/>
</form>
</td>
<td>
<form name = "FormB" method = "post"  action="/HW1/FlightSearch.jsp">
<input type = "submit" value ="Home"/>
</form>
</td>
</tr>
</table>
</body>
</html>