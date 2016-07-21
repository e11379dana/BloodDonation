<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../CSS/donorDetails_style.css">
<title>Add the News and Event</title>
</head>
<body>
<div id="main">
	<h2>Update Donor Details</h2>
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
					<li><a href="jspfiles/donorDetails.jsp">REGISTER DONOR</a></li>
					<a href="searchDonor.jsp">SEARCH DONOR</a></li>
					<li><a href="addpost.jsp">NEWS & EVENTS</a></li>
					<li><a href="logout.jsp">LOGOUT</a></li>
					<li  class="active"><li><a href="updateDetails.jsp">UPDATE DONOR DETAILS</a></li>
				</ul>
			</div>
			</div>
		</nav>
		
		<div class="panel panel-default" id="panel">
  <div class="panel-body" id="panelb">
	
	
		<form method="post" class="form-horizontal" role="form" action="Update">
	<div class="form-group">
	<label for="donorid" class="col-md-2 control-label">Donar NIC</label>
	<div class="col-md-2">
          <input type="text" class="form-control" name="nic" placeholder="NIC">
    </div>
    </div>
	
	<div class="form-group">
		<label for="inputLday" class="col-md-2 control-label">Date</label> 
		<div class="col-md-2">
            <input type="date" class="form-control" name="ldate">
        </div>
    </div>
    <div class="form-group">
		<div class="col-md-4 control-label">
		<button type="submit" class="btn btn-success" name="update" >Search</button> 
	</div>
	</div>
	</form>
	</div>
	</div>
</body>
</html>