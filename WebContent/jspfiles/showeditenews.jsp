<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>
<html>
<%
  	

       ArrayList topic= (ArrayList)request.getAttribute("topic");
       ArrayList news= (ArrayList)request.getAttribute("news");
       ArrayList id= (ArrayList)request.getAttribute("id");
      
       //out.println(num);
       
       
   %>
  
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
     </br>
      <%
      out.print(news.size());
    int k=0;
    for(int i =(news.size()-1);( i>=0); i--)
    {
    	%><br><%
    	
    	out.print(topic.get(i));
    	%>
    </br>
   <form method="post" action="test">
  <input type="hidden" value="<%=i%>" name="num">
  <input type="submit" value="Edit">
   </form>
<%

    	}
%> 
</body>
</html>