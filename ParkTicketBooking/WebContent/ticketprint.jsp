<%@page import="com.bean.TicketBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! TicketBean ticketBean; %>
<%! int due=0; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>everGreen Park</title>

</head>
<body   a link="red" vlink="red" background="Image/bg.jpg" >
	
	<%
		ticketBean=(TicketBean)request.getAttribute("obj");
		int adult=ticketBean.getAdult();
		int child=ticketBean.getChild();
		String land=ticketBean.getLand();
		String ride=ticketBean.getRide();
		int a=0;
		int c=0;
		if(land.equals("true"))
		{
			a=adult*300;
			c=child*250;
			due=due+a+c;
		}
	%>
	
	<%	
		if(ride.equals("true"))
		{
			a=adult*500;
			c=child*400;
			due=due+a+c;
		}
	%>
	
	<script>
		function myFunction() {
 		 window.print();
		}
	</script>
	
	<form style="padding-left: 38%;">
		<img alt="park" src="Image/logo.png" align="middle" >
	</form>
	

	<table style="width:50%" align="center" border="1" cellspacing="0">
 		<tr>
   	 		<th colspan="2" style="color: green;">Welcome To EverGreen Park &nbsp;&nbsp;&nbsp;
   	 			&nbsp;&nbsp;&nbsp;<%=ticketBean.getDate() %>&nbsp;<font color="black">(valid on)</font></th>
  	 	</tr>
 	 	<tr>
 	  		<th>Ticket Number</th>
    		<th style="color: blue"><%=ticketBean.getTicket() %></th>
 	 	</tr>
	  	<tr>
 	   		<th>Email</th>
 	   		<th style="color: blue"><%=ticketBean.getEmail()%> </th>
 	 	</tr>
  		<tr>
  	  		<th>Adult</th>
 	   		<th style="color: blue"><%=ticketBean.getAdult() %></th>
 	 	</tr>
	  	<tr>
  		  	<th>Child</th>
    		<th style="color: blue"><%=ticketBean.getChild() %></th>
 	 	</tr>
 		<tr>
  			<th>Land</th>
    		<th style="color: blue"><%=ticketBean.getLand() %></th>
  		</tr>
 		<tr>
  			<th>Ride</th>
   			<th style="color: blue"><%=ticketBean.getRide() %></th>
  		</tr>
  		<tr>
  			<th style="color: red">Due Amount</th>
  			<th style="color: red"><%=due %></th>
  		</tr>
	</table>
	<% due=0; %>
	<form style="padding-left: 47%;">
		<br>
		<br>
		<button onclick="myFunction()">Print Ticket</button>
	</form>
	
	
	
	<form action="index.jsp" method="post" style="padding-left: 47%;">
		<br>
		<br>
		<input type="submit" value=" log out ">
	</form>
	
</body>
</html>