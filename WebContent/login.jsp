

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/login_style.css">
        <title>Login</title>
    </head>
    <body>
      <div id="main">
		<h2>Sign In</h2>
		<nav class="navbar navbar-default">
			<div class="conatiner-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					
				</button>
			</div>
			<div class="collapse navbar-collapse" id="mainNavBar">
				<ul class="nav navbar-nav">
					<li class="active" ><a href="home">HOME</a></li>
					<li><a href="">GIVING BLOOD</a></li>
					<li><a href="">ABOUT BLOOD</a></li>
				
					<li><a href="success_logged.jsp" data-target="#popUpWindow">SIGN IN</a></li>
					<li><a href="">ABOUT US</a></li>
				</ul>
			</div>
			</div>
		</nav>
		
		<div class="container">
			<form class="form-horizontal" role="form" method="post" action="j_security_check" >
  <div class="form-group">
    <label class="control-label col-sm-2" for="username" >User Name:</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" class="input-large" placeholder="Enter User Name"  name="j_username" />
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-5"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="j_password"/ >
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox"> Remember me</label>
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success">Sign In</button>
    </div>
  </div>
</form>
			
		</div>
		</div>
    </body>
</html>
