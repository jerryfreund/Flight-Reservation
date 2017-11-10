<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction</title>
</head>
<body>
<h1>Transaction</h1>
<h2>Your selected flight's information</h2>
<hr>
Flight number:
<%=session.getAttribute("flightNum")%>
<br/>
Departure date:
<%=session.getAttribute("flightDate")%>
<br/>
Departure time:
<%=session.getAttribute("depTime")%>
<br/>
Arrival time:
<%=session.getAttribute("arrTime")%>
<br/>
Number of stops:
<%=session.getAttribute("numStops")%>
<br/>
Flight cost per seat (USD):$
<%=session.getAttribute("flightCost")%>
<br/>
Stop location:
<%=session.getAttribute("stopLocation")%>
<br/>
Stop duration:
<%=session.getAttribute("stopDuration")%>
<br/>
Airplane type: 
<%=session.getAttribute("jetType")%>

<% 	
	//Calculating total cost.
	//Converting ticket quantity into an int 
	String strTixQt = request.getParameter("ticketQuantity"); 
	int numTix = Integer.parseInt(strTixQt);
	//Calculating the total cost after converting "flightCost" to a double
	double fCost = (Double) session.getAttribute("flightCost");
	double totalCost = numTix * fCost;
	//Saving the total cost and number ot tix for this session
	session.setAttribute("totalCost", totalCost);
	session.setAttribute("numTix", numTix);
%>

<hr>
<h2>Total cost</h2>
Quantity (number of seats):
<%=numTix %><br/>
Price per seat: $
<%=session.getAttribute("flightCost")%><br/>
Total price (tax included): $
<%=totalCost %><br/>

<form name = "purchaseForm" method = "post"  action="/HW1/TransactionConfirmation.jsp">
<table bgcolor="CCFFCC">
<tr>
<td>Account Holder Name</td>
<td>Routing Number</td>
<td>Account Number</td>
</tr>
<tr>
<td><input name = "accountName"/></td>
<td><input name = "routingNum"/></td>
<td><input name = "accountNum"/></td>
</tr>
</table>
<input type = "submit" value ="Confirm"/>
</form>
<table bgcolor="FF3300">
<tr>
<td>
<form name = "cancelPurchaseForm" method = "post"  action="/HW1/FlightSearch.jsp">
<input type = "submit" value ="Cancel"/>
</form>
</td>
</tr>
</table>
</body>
</html>