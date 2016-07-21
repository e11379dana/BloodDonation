<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>
<html>
<%
  	

       ArrayList topic= (ArrayList)request.getAttribute("topic");
       ArrayList news= (ArrayList)request.getAttribute("news");
       ArrayList id= (ArrayList)request.getAttribute("id");
       ArrayList publisher= (ArrayList)request.getAttribute("publisher");
       Integer num=(Integer)request.getAttribute("num");
       //out.println(num);
       
       
   %>
  
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Blood donation</title>
<link rel="stylesheet" type="text/css" href="CSS/news.css">
<title>News</title>
</head>
<body>
	<div id="main">
	<h2>News & Events</h2>
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
					<li><a href="">GIVING BLOOD</a></li>
					<li><a href="">ABOUT BLOOD</a></li>
					<li><a href="success_logged.jsp">SIGN IN</a></li>
					<li><a href="">ABOUT US</a></li>
				</ul>
			</div>
			</div>
		</nav>
      <% 	if(num>=0){%>
     <br><br>
     <div class="panel-group">
  	<div class="panel panel-warning" id="newsPanel">
   	<div class="panel-heading">
  
   	<% out.println(topic.get(num));%></div>
      <div class="panel-body" id="body">
     <% out.println(news.get(num));
     %><br><br>Published by: <% out.println(publisher.get(num));}
     %> 
     </div>
	</div>
     <br>
      <%
    int k=0;
    for(int i =(news.size()-1);( i>=0); i--)
    {
    	%><br><%
    	if(i!=num){
    	out.print(topic.get(i));
    	%>
    <form method="post" action="more">
    <input type="hidden" value="<%=i%>" name="num">
    <input type="hidden" value="<%=topic%>" name="topic">
    <input type="hidden" value="<%=news%>" name="news">
    <input type="hidden" value="<%=id%>" name="id">
     <input type="hidden" value="<%=publisher%>" name="publisher">
    
     <button type="submit" class="btn btn-primary btn-xs" >Read</button>
    </form><br>
<%
    	}}
%> 

</div>
</body>
</html>