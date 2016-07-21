<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../CSS/showDetails_style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Donor-Details</title>
</head>
<body>
<div id="main">
<h2>Donor Details</h2>
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
					<li  class="active"><a href="jspfiles/searchDonor.jsp">SEARCH DONOR</a></li>
					<li><a href="../addpost.jsp">ADD NEWS & EVENTS</a></li>
					<li><a href="../updateDetails.jsp">UPDATE DONOR DETAILS</a></li>
					<li><a href="logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			</div>
		</nav>	
 <%ArrayList name = (ArrayList)request.getAttribute("name"); %>
 <%ArrayList nic = (ArrayList)request.getAttribute("nic"); %>
 <%ArrayList bday = (ArrayList)request.getAttribute("bday"); %>
 <%ArrayList haddress = (ArrayList)request.getAttribute("haddress"); %>
 <%ArrayList times = (ArrayList)request.getAttribute("times"); %>
 <%ArrayList htel = (ArrayList)request.getAttribute("htel"); %>
 <%ArrayList mobile = (ArrayList)request.getAttribute("mobile"); %>
 <%ArrayList oTel = (ArrayList)request.getAttribute("oTel"); %>
 <%ArrayList email = (ArrayList)request.getAttribute("email"); %>
 <%ArrayList twn = (ArrayList)request.getAttribute("twn"); %>
 <%ArrayList bltype = (ArrayList)request.getAttribute("bltype"); %>
 <%ArrayList ldate = (ArrayList)request.getAttribute("ldate"); %>
 <%ArrayList allergies = (ArrayList)request.getAttribute("allergies"); %>
 <%ArrayList comments = (ArrayList)request.getAttribute("comments"); %>
  <%ArrayList id = (ArrayList)request.getAttribute("id"); %>  

<div class="container">
	
	<table class="table table-bordered">
		<thead>
			<tr class="info">
				<th id="name">Name</th>
   				<th id="nic">NIC</th>
   				<th id="name">Donated Times</th>
   				<th id="nic">Home Tel</th>
   				<th id="name">Mobile</th>
   				<th id="nic">Office Tel</th>
   				<th id="name">E mail</th>
   				<th id="nic">Nearest City</th>
   				<th id="name">Blood Type</th>
   				<th id="nic">Donation Number</th>
   				<th id="name">Last Transfusion Date</th>
			</tr>
		</thead>
		<tbody>
		<% 
   		for(int i = 0; i < id.size(); i++){
   		%> 
		<tr>
			<td><%= name.get(i)%></td>
   			<td><%= nic.get(i)%></td>
   			<td><%= times.get(i)%></td>
   			<td><%= htel.get(i)%></td>
   			<td><%= mobile.get(i)%></td>
   			<td><%= oTel.get(i)%></td>
   			<td><%= email.get(i)%></td>
   			<td><%= twn.get(i)%></td>
   			<td><%= bltype.get(i)%></td>
   			<td><%= id.get(i)%></td>
   			<td><%= ldate.get(i)%></td>
   		</tr>
   		<% }%> 
		</tbody>
	</table>
</div>
</div>
</body>
</html>