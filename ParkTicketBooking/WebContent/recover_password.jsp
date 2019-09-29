<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! String email=null; %>
    <%! String date=null; %>
    <%! String password=null; %>
    <%! String name=null; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>everGreen Park</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>

	

</head>
<body  a link="red" vlink="red" background="Image/eco-tourism-park-kolkata-entry-fee-timings-holidays-reviews-header.jpg">

	<%
		if(request.getAttribute("email")!=null)
		{
			email=request.getAttribute("email").toString();
			date=request.getAttribute("date").toString();
			password=request.getAttribute("password").toString();
			name=request.getAttribute("name").toString();
		}
		
	%>



	<form style="padding-left: 52%;">
		<img alt="park" src="Image/logo.png" align="middle" >
	</form>
	
	
	<form action="RecoverSrv" method="post" style="padding-left: 62%;" >
		
		<b style="color: red;">Email: </b><input type="text" style="color: red;" disabled="disabled" value="<%=email%>">
		<br>
		<br>
		<b style="color: red;">Pass: </b>&nbsp;&nbsp;<input type="text" style="color: red;" disabled="disabled" value="<%=password%>">
		<br>
		<br>
		<b style="color: red;">DOB: </b>&nbsp;&nbsp;<input type="text" style="color: red;" disabled="disabled" value="<%=date%>">
		<br>
		<br>
		<b style="color: red;">Name: </b>&nbsp;<input type="text" style="color: red;" disabled="disabled" value="<%=name%>">
		<br>
		<br>
	</form>
	<form action="index.jsp" method="post"  style="padding-left: 62%;">
		<input type="submit" value="Home" >
	</form>

</body>
</html>