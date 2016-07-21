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
<link rel="stylesheet" type="text/css" href="CSS/donorDetails_style.css">
<title>Register Donor</title>
</head>

<body>
	<div id="main">
	<h2>Register Donor</h2>
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
					<li class="active"><a href="donorDetails.jsp">REGISTER DONOR</a></li>
					<li><a href="jspfiles/searchDonor.jsp">SEARCH DONOR</a></li>
					<li><a href="updateDetails.jsp">UPDATE DONOR DETAILS</a></li>
					<li><a href="addpost.jsp">ADD NEWS & EVENTS</a></li>
					<li><a href="logout.jsp">LOGOUT</a></li>
				</ul>
			</div>
			</div>
		</nav>

	<div class="panel panel-default" id="panel">
  <div class="panel-body" id="panelb">
    
  
	<form class="form-horizontal" role="form" method="post" action="DbConnectorService">

	<div class="form-group">
		<div class="col-md-12">
	<div class="form-group row">
  <label for="inputName" class="col-md-1 control-label">Name </label><div class="col-md-6"> <input type="text" class="form-control"  placeholder="Enter Name" name="name"></div>
  <div class="radio">
  	<label class="col-md-1 control-label"><input type="radio" name="gender" value="M">Male</label>
  	<label class="col-md-1 control-label"><input type="radio" name="gender" value="F">Female</label>
	</div>
		
</div>
  </div>
</div>
	
	<div class="form-group">
	<div class="col-md-12">
            <div class="form-group row">
                <label for="inputNic" class="col-md-1 control-label">NIC Number</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" name="nic" placeholder="NIC">
                </div>
                <label for="inputBday" class="col-md-1 control-label">Birth Date</label>
                <div class="col-md-2">
                    <input type="date" class="form-control" name="bday" placeholder="B'Date">
                </div>
                 <label for="inputDid" class="col-md-1 control-label">Donor ID</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" name="dnmb" placeholder="Donor ID">
                </div>
            </div>
        </div>
        </div>   
       
		
	<div class="form-group">
		 <div class="col-md-12">
	<div class="form-group row">
  <label for="hAddress" class="col-md-1 control-label">Home Address</label>
  <div class="col-md-4">
  <textarea class="form-control" rows="5" name="haddress" placeholder="Home Address"></textarea>
</div>

<label for="oAddress" class="col-md-1 control-label">Office Address</label>
  <div class="col-md-3">
  <textarea class="form-control" rows="5" name="Oaddress" placeholder="Office Address"></textarea>
</div>
</div>
</div>
</div>

<div class="form-group">
	<div class="col-md-12">
		<div class="form-group row">
		 	<label for="homeTel" class="col-md-1 control-label">Home Tel</label>
  			<div class="col-md-2">
  				<input type="number" class="form-control" name="homeTel" placeholder="Telephone">
			</div>
			<label for="mobile" class="col-md-1 control-label">Mobile</label>
  			<div class="col-md-2">
  				<input type="number" class="form-control" name="mobileTel" placeholder="Mobile">
			</div>
			<label for="officeTel" class="col-md-1 control-label">Office Tel</label>
  			<div class="col-md-2">
  				<input type="number" class="form-control" name="officeTel" placeholder="Telephone">
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="col-md-12">
		<div class="form-group row">
		 	<label for="email" class="col-md-1 control-label">E mail</label>
  			<div class="col-md-3">
  				<input type="email" class="form-control" name="email" placeholder="E mail">
			</div>
			<label for="city" class="col-md-2 control-label">Nearest City/Blood Bank</label>
  			<div class="col-md-2">
  				<input type="city" class="form-control" name="city" placeholder="Nearest City">
			</div>
		</div>
	</div>
</div>



<div class="form-group">
	<div class="col-md-12">
		<div class="form-group row">
      	<label for="btype" class="col-md-1 control-label">Blood Type</label>
      	<div class="col-md-2">
      	<select class="form-control" name="bloodType">
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
      <label for="fDate" class="col-md-1 control-label">First Transfusion Date</label>
  			<div class="col-md-2">
  				<input type="date" class="form-control" name="fdate" placeholder="First Date">
			</div>
	 <label for="weight" class="col-md-1 control-label">Weight(kg)</label>
  			<div class="col-md-2">
  				<input type="text" class="form-control" name="weight" placeholder="Weight">
			</div>
</div>
</div>
</div>

<div class="form-group">
	
			<label for="comments" class="col-md-1 control-label">Comments</label>
  			<div class="col-md-4">
  				<textarea class="form-control" rows="5" name="comments" placeholder="Comments"></textarea>
			</div>
		</div>

<div class="form-group">
	<div class="col-md-6">
		<div class="form-group row">
	<div class="col-md-4 control-label">
	<input type="submit" class="btn btn-info" name="submit" value="Submit">
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