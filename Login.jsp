<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String error = (String) request.getAttribute("error");
	if(error == null){
		error = "";	
	} else if(error == "account_not_found"){
		error = "Incorrect Username or Password. Please Try Again.";
	}
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sycamore Transfer Login</title>
		<link rel="stylesheet" type="text/css" href="stylesheet.css" />
		<script>
			function useGuestAccount(){
				//PLACE DUMMY EMAIL AND GUEST IN SESSION
				document.location.href = "./about.jsp"
			}
		</script>
	</head>
	<body>
		<h1 id="frontpage">Sycamore Transfer</h1>
		<span id="imageset" style="display: block; margin-left: auto; margin-right: auto; width:605px">
			<img id ="img1" src="titleimage1.jpg" style="height: 300px; width: 300px; transform: rotate(-15deg);">
			<img id ="img2" src="titleimage2.png" style="height: 300px; width: 300px; transform: rotate(15deg);">
		</span>
		<br />
		<div style="display: block; margin-left: auto; margin-right: auto; width:450px; font-size:20px;"><strong><font color="red"><%= error %></font></strong></div>
		<form id="login" method="POST" style="display: block; margin-left: auto; margin-right: auto; width:200px;" name="login" action="SignInServlet">
			<input type="text" name="username" placeholder="Username" required><br /><br />
			<input type="password" name="password" placeholder="Password" required ><br /><br />
			<input type="submit" style="width:206px;" value="Sign In">
		</form>
		<button name="submit" style="width:10%; margin-top:20px; margin-left: 45%; margin-right: 45%;" onclick="useGuestAccount();" >Use Guest Account</button>
	</body>
</html>