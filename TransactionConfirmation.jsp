<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction Confirmation</title>
</head>
<body>
<h2>Your purchase has been confirmed - Thank You</h2>
<h3>Summary of your flight:</h3>
<%
	Date date = new Date();
	String purchaseTimeSamp = date.toString();
	session.setAttribute("purchaseTimeSamp", purchaseTimeSamp);

	String accName = request.getParameter("accountName");
	session.setAttribute("accName", accName);
	
	//This will generate a pseudo unique ticket number (kinda)
	String tixHashGen = accName + purchaseTimeSamp;
	int hashGen = tixHashGen.hashCode();
	String hashedC = Integer.toString(hashGen);
	String ticketNumber = session.getAttribute("flightNum") + hashedC;
	session.setAttribute("ticketNumber", ticketNumber);
%>

Purchase date:
<%=purchaseTimeSamp %><br>
Ticket Number:
<%=session.getAttribute("ticketNumber") %>
<br>
Account Name:
<%=session.getAttribute("accName") %>
<br>
<br>
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
<br/>
<br/>
Quantity:
<%=session.getAttribute("numTix")%>
<br/>
Total Price: $
<%=session.getAttribute("totalCost")%>
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