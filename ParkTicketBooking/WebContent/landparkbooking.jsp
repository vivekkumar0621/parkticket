<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! UserBean u=null; %>
    <%! String name=null;  %>
    <%! String email=null;  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>everGreen Park</title>

</head>
<body   a link="red" vlink="red" background="Image/bg.jpg" >
	
	
	<%
		u=(UserBean)session.getAttribute("obj");
		name=u.getName();
		email=u.getEmail();
	//	request.getSession().setAttribute("obj", u);
	//	session.setAttribute("obj", u);
		
		Cookie cookie=new Cookie("email", email);
		response.addCookie(cookie);
				
	
		
	//	HttpSession session=request.getSession();
	
	
	%>
	
	
	<script >
	
		function price() {
			
			var a=document.getElementById("a").value;
			var c=document.getElementById("c").value;
	//		var l=document.getElementById("l").value;
	//		var r=document.getElementById("r").value;
	//		document.getElementById("e1").value=a;
		
			if(a=="0" && c=="0")
				return false;
			if(document.getElementById("l").checked==false && document.getElementById("r").checked==false)
				return false;
			
		}
		
	</script>
	
		
	<script type="text/javascript">
		 function process() {
			 if(document.getElementById("confirm").checked==true)
			{
					var a1=parseInt(document.getElementById("a").value);
					var c1=parseInt(document.getElementById("c").value);
					var sum=0;
					var asum=0;
					var csum=0;
					var t1=0;
					var t2=0;
					
					if(document.getElementById("l").checked==true)
					{
						document.getElementById("cb1").value="true";
					}
					else
					{
						document.getElementById("cb1").value="false";
					}
					if(document.getElementById("r").checked==true)
					{
						document.getElementById("cb2").value="true";
					}
					else
					{
						document.getElementById("cb2").value="false";
					}
					if(document.getElementById("l").checked==true)
					{
						t1=t1+300;
						t2=t2+250;
						asum=asum+a1*300;
						csum=csum+c1*250;
					//	sum=asum+csum;
					//	alert(a1 +" " +c1 +" "+asum +" "+csum+" "+sum);
					
						
					}
		
					if(document.getElementById("r").checked==true)
					{
						t1=t1+500;
						t2=t2+400;
						asum=asum+a1*500;
						csum=csum+c1*400;
					//	sum=asum+csum;
					//	alert(a1 +" " +c1 +" "+asum +" "+csum+" "+sum);
					}
					
					sum =asum+csum
					document.getElementById("p1").innerHTML=" Rs "+t1+" x " +a1+" = " + asum;
					document.getElementById("p2").innerHTML=" Rs "+t2+" x " +c1+" = " + csum;
					document.getElementById("p3").innerHTML="&nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp  &nbsp  &nbsp Total : RS. " + sum;
					
				//	document.getElementById("email").value="javascript:getemail()";
					
					document.getElementById("button").disabled=false;
			}
			 else
			{
				document.getElementById("p1").innerHTML="";
				document.getElementById("p2").innerHTML="";
				document.getElementById("p3").innerHTML="";
				document.getElementById("button").disabled=true;
			}
			 			 
		}
	</script>
	
	
		
	<form style="padding-left: 38%;">
		<img alt="park" src="Image/logo.png" align="middle" >
	</form>
	
	<h1 style="color: #006400; margin-left: 20%;">hey <%=name %> ,</h1>
	
	<form onsubmit="return price()" action="LandParkBookingSrv" style="padding-left: 30%" method="post" >
		
		adult:&nbsp;&nbsp;&nbsp; <input type="number"  id="a" name="adult" value="0" min="0" max="12" >
		<span id="p1" style="color: red"> </span>
		<br>
		<br>
		child:&nbsp;&nbsp;&nbsp; <input type="number" value="0" id="c" name="child" min="0" max="12" >
		<span id="p2" style="color: red"> </span>
		<br>
		<br>
		<input type="checkbox" name="landpark" id="l" value="land">land park
		&nbsp;&nbsp;&nbsp; 
		<input type="checkbox" name="ride" id="r" value="ride">ride
		<span id="p3" style="color: red"> </span>
		<br>
		<br>
		Date :&nbsp;&nbsp;&nbsp; <input type="date" id="d"  name="date" required="required">
		<span id="p4" style="color: red"> </span>
		<br>
		<br>
		<input type="checkbox" name="confirm" id="confirm" value="" onchange="javascript:process()">I confirm to book my ticket.
		<br>
		<br>
		&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;
		
		<input type="hidden" name="lpcb" value="false" id="cb1">				
		<input type="hidden" name="rcb" value="false" id="cb2">
		<input type="submit" value="book" disabled="disabled" id="button">
		
	</form>

</body>
</html>