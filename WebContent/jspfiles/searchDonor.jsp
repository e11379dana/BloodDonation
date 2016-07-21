<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../CSS/searchDonor_style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Search....</title>
</head>
<body>
	<div id="main">
	<h1>Search.....</h1>
	
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
					<li><a href="../home">HOME</a></li>
					<li><a href="../donorDetails.jsp">REGISTER DONOR</a></li>
					<li  class="active"><a href="searchDonor.jsp">SEARCH DONOR</a></li>
					<li><a href="../updateDetails.jsp">UPDATE DONOR DETAILS</a></li>
					<li><a href="../addpost.jsp">ADD NEWS & EVENTS</a></li>
					<li><a href="../logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			</div>
		</nav>
	
	<br><br>
	<div class="panel panel-default" id="panel">
  <div class="panel-body" id="panelb">
  
	<form class="form-horizontal" role="form" method="post" action="../SearchDonorService">
	<div class="form-group">
	<label for="btype" class="col-md-2 control-label">Blood Type</label>
	<div class="col-md-3">
		<select class="form-control" name="bType">
			<option value="type">Type</option>
			<option value="AB-">AB-</option>
			<option value="B-" >B-</option>
			<option value="A-" >A-</option>
			<option value="O-" >O-</option>
			<option value="AB+" >AB+</option>
			<option value="B+" >B+</option>
			<option value="A+" >A+</option>
			<option value="O+" >O+</option>
		</select>
  </div>
  </div>	
  	<div class="form-group">
		<label for="fDate" class="col-md-2 control-label">Nearest town</label>
  			<div class="col-md-3">
  				<input type="search" class="form-control" name="nearestTown" placeholder="Nearest town">
			</div>
		</div>
		<div class="form-group">
		<label for="fDate" class="col-md-2 control-label">Date</label>
  			<div class="col-md-3">
  				<input type="date" class="form-control" name="date" placeholder="date">
			</div>
			</div>
		<div class="form-group">
		<div class="col-md-4 control-label">
		<button type="submit" class="btn btn-success" name="searchBt2" >Search</button> 
		</div>
		</div>
	</form>
	</div>
  </div>
  </div>
</body>
</html>