
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
	
	<script >
		function check() {
			var a=document.getElementById("p1").value;
			var b=document.getElementById("p2").value;
			var e=document.getElementById("e1").value;
			
			if(e=="")
			{
				document.getElementById("m1").innerHTML=" ** please fill email";
				return false;
			}
			if(a=="")
			{
				document.getElementById("m2").innerHTML=" ** please fill password";
				return false;
			}
			if(b=="")
			{
				document.getElementById("m3").innerHTML=" ** please re-enter password";
				return false;
			}
			
			if(a!=b)
			{
				document.getElementById("m3").innerHTML=" ** password mismatch";
				return false;
			}			
		}
	
	</script>
	
	

		
	<form style="padding-left: 52%;">
		<img alt="park" src="Image/logo.png" align="middle" >
	</form>
	
	
	<form onsubmit="return check()" action="SignUpSrv" method="post" style="padding-left: 62%;" >
		
		<input type="text" placeholder="username or email" name="email"  id="e1" value="" >
		
		<br>
		<span id="m1" style="color: red;"></span>
		<br>
		<input type="password" placeholder="password" name="password1"  id="p1" value="">
		<br>
		<span id="m2" style="color: red;"></span>
		<br>
		<input type="password" placeholder="re-enter password" name="password2"  id="p2" value="">
		<br>
		<span id="m3" style="color: red;"></span>
		<br>
		<input type="date" id="datepicker" placeholder="DOB" name="date" required="required">
		<br>
		<br>
		<input type="text" placeholder="name" name="name" required="required">
		<br>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="sign up" >
	</form>
	
	
</body>
</html>