<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  	<%! UserBean u=null; %>
 	<%! String name=""; %>   
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>everGreen Park</title>

</head>
<body   a link="red" vlink="red" background="Image/bg.jpg" >
	
	<%
		u=(UserBean)request.getAttribute("obj");
		name=u.getName();
		session.setAttribute("obj", u);
	%>
	
	<form style="padding-left: 38%;">
		<img alt="park" src="Image/logo.png" align="middle" >
	</form>
	
	<h2 align="center" style="padding-bottom: 1%;">Welcome <%=name %></h2>
	
	
	<marquee behavior="alternate" scrollamount="3" style="color: red"  onmousemove="this.stop()" onmouseout="this.start()"> 
	<% out.print("Land Park @ Rs.300 each. All Ride @ Rs.500. offer: Extra Discount For children under 15 year old."); %> 
	</marquee>
	
	<br>
	<br>
	
	<form style="padding-left: 28%;">
		
	<a href="landparkbooking.jsp">	<img alt="park" src="Image/landpark.jpg" align="middle" width="300" height="200" style="padding-right: 4%"></a>
		<img alt="park" src="Image/waterpark.jpg" align="middle" width="300" height="200">
	</form>
	
	<form style="padding-left: 36%; padding-top: 2%" >
		&nbsp;
		<a href="landparkbooking.jsp" >Land Park</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<a style="color: red">Water Park</a>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Coming Soon
	</form>
	
</body>
</html>