<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/success_logged_style.css">

<title>Insert title here</title>
</head>
<body>
	<div id="main">
		<div class="container">
			<div class="header">
				<h2 style="color:#DC143C; align:center">Donating Blood Saves Lives</h2> 
			</div>
			
			<nav class="navbar navbar-default">
			<div class="conatiner-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					
				</button>
				
			</div>
			<div class="collapse navbar-collapse" id="mainNavBar" >
				<ul class="nav navbar-nav" >
					<li><a href="home">HOME</a></li>
					<li><a href="donorDetails.jsp">REGISTER DONOR</a></li>
                  <li><a href="jspfiles/searchDonor.jsp">SEARCH DONOR</a></li>
                  <li><a href="updateDetails.jsp">UPDATE DONOR</a></li>
                  <li><a href="addpost.jsp">ADD NEWS & EVENTS</a></li>
                  
                  <li><a href="logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			</div>
		</nav>
		</div>
  			<img src="images/bdl.jpg" class="img-responsive center-block" id="image">
	</div>
	
	
	
</body>
</html>