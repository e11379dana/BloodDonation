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
<link rel="stylesheet" type="text/css" href="CSS/addpost_style.css">
<title>Make News</title>
</head>

<body>
	<div id="main">
	<h2>Make News or Events</h2>
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
					<li><a href="updateDetails.jsp">UPDATE DONOR DETAILS</a></li>
					<li class="active"><a href="addpost.jsp">ADD NEWS & EVENTS</a></li>
					<li><a href="logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			</div>
		</nav>
	
	<br>

		<h3>News and Events</h3>
		<div class="panel panel-default" id="panel">
  <div class="panel-body" id="panelb">
	
	
		<form method="post" class="form-horizontal" role="form" action="add">
	<div class="form-group">
	<div class="form-group">
	<div class="col-md-12">
		<div class="form-group row">
	<label for="topic" class="col-md-2 control-label">Topic</label>
	<div class="col-md-3">
          <input type="text" class="form-control" name="topic" placeholder="Topic">
    </div>
	<label for="date" class="col-md-2 control-label">Date</label>
	<div class="col-md-3">
          <input type="date" class="form-control" name="date">
    </div>
    </div>
    </div>
    </div>
    <div class="form-group">
	<label for="publisher" class="col-md-2 control-label">Publisher</label>
	<div class="col-md-3">
          <input type="text" class="form-control" name="publisher" placeholder="Publisher">
    </div>
    </div>
    
    <div class="form-group">
	<label for="publisher" class="col-md-2 control-label">News or Event</label>
	<div class="col-md-5">
  		<textarea class="form-control" rows="10" name="news" placeholder="News or Events"></textarea>
	</div>
	</div>
	<div class="form-group">
	<div class="col-md-12">
    <div class="form-group row">
    	<label for="Tel1" class="col-md-2 control-label">Telephone1</label>
	<div class="col-md-3">
          <input type="number" class="form-control" name="tel1" placeholder="Telephone">
    </div>
    <label for="Tel2" class="col-md-2 control-label">Telephone2</label>
	<div class="col-md-3">
          <input type="number" class="form-control" name="tel2" placeholder="Telephone">
    </div>
    </div>
    </div>
    </div>		
	<div class="form-group">
	<label for="email" class="col-md-2 control-label">E mail</label>
	<div class="col-md-3">
  		<input type="email" class="form-control" name="email" placeholder="E mail">
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-md-6">
		<div class="form-group row">
	<div class="col-md-4 control-label">
	<input type="submit" class="btn btn-info" name="submit" value="Post">
</div>
<div class="col-md-2 control-label">
	<input type="button" class="btn btn-info" value="Cancel" name="cancel">
</div>
</div>
</div>
</div>
	</form>
</div>
</div>	
	

 

</div>	
</body>
</html>