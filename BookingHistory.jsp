<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking History</title>
<%
	String tixNum = (String) session.getAttribute("ticketNumber");
	String tixDate = (String) session.getAttribute("purchaseTimeSamp");
	
	if(tixNum == null){
		tixNum = "No purchase yet";
	}
	
	if(tixDate == null){
		tixDate = "No purchase yet";
	}

%>
</head>
<body>
<h2>Booking History</h2>
<hr>
<table bgcolor="CCFFCC">
<tr>
<td>Ticket Number</td>
<td>Date</td>
</tr>
<tr>
<td><%=tixNum %></td>
<td><%=tixDate %></td>
</tr>
</table>
<table bgcolor="0066FF">
<tr>
<td>
<form name = "Home" method = "post"  action="/HW1/FlightSearch.jsp">
<input type = "submit" value ="Home"/>
</form>
</td>
</tr>
</table>
</body>
</html>