<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>



<html>
<%
	ArrayList topic = (ArrayList) request.getAttribute("topic");
	ArrayList news = (ArrayList) request.getAttribute("news");
	ArrayList id = (ArrayList) request.getAttribute("id");
	ArrayList publisher = (ArrayList) request.getAttribute("publisher");
%>
<head>
<meta charset="utf-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Blood donation</title>
<link rel="stylesheet" type="text/css" href="CSS/home.css">
</head>
<body>

	<div id="main">
		<!-- title -->
		<div class="container">
			<h1 style="color: #DC143C; align: center">Bring a life back to
				power, Make blood donation your responsibility</h1>
		</div>
		<br>
		<!-- Navigation bar -->
		<nav class="navbar navbar-default">
			<div class="conatiner-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#mainNavBar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>

					</button>

				</div>
				<div class="collapse navbar-collapse" id="mainNavBar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="home">HOME</a></li>
						<li><a href="">GIVING BLOOD</a></li>
						<li><a href="updateDetails.jsp">ABOUT BLOOD</a></li>
						<li><a
							href="more?num=<%=-1%>&topic='<%=topic%>'&news='<%=news%>'&id='<%=id%>'&publisher='<%=publisher%>'">NEWS</a></li>
						<li><a href="success_logged.jsp" data-target="#popUpWindow">SIGN
								IN</a></li>
						<li><a href="">ABOUT US</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Image slide show -->
		<section>

			<!-- Wrapper for slides -->
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="images/bd.jpg" alt="Chania">
					</div>

					<div class="item">
						<img src="images/bd2.jpg" alt="Chania">
					</div>

					<div class="item">
						<img src="images/bd3.jpg" alt="Flower">
					</div>

					<div class="item">
						<img src="images/bd4.jpg" alt="Flower">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</section>
	</div>




</body>
</html>