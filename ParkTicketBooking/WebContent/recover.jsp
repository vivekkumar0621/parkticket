<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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


	<form style="padding-left: 52%;">
		<img alt="park" src="Image/logo.png" align="middle" >
	</form>
	
	
	<form action="RecoverSrv" method="post" style="padding-left: 62%;" >
		
		<input type="text" placeholder="username or email" name="email"  required="required" >
		<br>
		<br>
		<input type="date" id="datepicker" placeholder="DOB" name="date" required="required">
		<br>
		<br>
		<input type="text" placeholder="name" name="name" required="required">
		<br>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="show password" >
	</form>


</body>
</html>