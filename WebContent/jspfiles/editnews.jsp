<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


    <title>EditNews&Event</title>
    


    
   <body >
   
     <br>
         <%
             String topic = (String)request.getParameter("topic");
             String news= (String)request.getParameter("news");
             String publisher= (String)request.getParameter("publisher");
             String index = (String)request.getParameter("index");
             String date= (String)request.getParameter("date");
             String email = (String)request.getParameter("email");
             String tel1= (String)request.getParameter("tel1");
             String tel2= (String)request.getParameter("tel2");
            
         %>
       
	<table>
		<tr><h3>News and Events</h3></tr>
		<tr><td>Topic : </td><td><input type="text" name="topic" value=<%=topic%> size="50"> 
		 Date : <input type="date" name="date" value=<%=date%>> </td></tr>
		<tr><td>Publisher :</td><td> <input type="text" name="publisher" size="15" >
		<tr><td>News or Event :</td><td><textarea rows="10" cols="50" name="news" ></textarea></td></tr>
		
		<tr><td>Telephone1 :</td> <td> <input type="number" name="tel1"></td><td> Telephone2 : </td><td><input type="number" name="tel2"  ></td></tr>
		<tr><td>E mail :</td><td><input type="email" name="email" ></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		
		<tr><td></td><td><input type="submit" name="submit" value="Submit"> <input type="button" name="cancel" value="Cancel"></td></tr>
		
	</table>
	</form>
        <br><br>
        
        
    </body>
</html>
