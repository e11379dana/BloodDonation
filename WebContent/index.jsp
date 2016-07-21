<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>

<html>
<body>
<%
  	
       ArrayList post= (ArrayList)request.getAttribute("post");
       ArrayList index= (ArrayList)request.getAttribute("index");
       ArrayList des= (ArrayList)request.getAttribute("des");
     
    
  %>
<p>
<head>
<meta charset="ISO-8859-1">
<title>Blood donation</title>

<head>
<meta charset="ISO-8859-1">
<title>Blood donation</title>

</head>
<body>
	
	<header>
		
		<h2>Donate Your Blood</h2>
		<a href="a" id="logo">
		<nav>
			<ul>
				<li><a href="home.html">BACK</a></li>
				<li><a href="login.html">HOME</a></li>
				<form  align="Right" action="logout.jsp" method="POST">
	
	<input align="Right" type="submit" align="Right" value="logout">
	</form>
				
		</nav>	
		</a>	
	</header>
</p>

<%
   
    for(int i = 0; i < index.size(); i++)
    {
    Integer num=(Integer)index.get(i);
    
%>

<p>------------------------------------------------</p>

      <p><%=(String)post.get(i)%> </p>
      <% String postDes = (String)des.get(i); %>
      
      
      
      
      <%
          if(postDes.length() > 25 ){
              out.println(postDes.substring(0,25)+".......");
            %>  <form action="readMore" method="POST">
              <input type="hidden" value="<%=num%>" name="post_num">
              
              <div>
                  <input  style="color:red ; " size="10" maxlength="10" type="submit" value="Read more">
              </div>
                      
          </form>
          <% 
          }
          else{
              out.println(postDes);
          }
 	   }
  
    
       %>
</p>
</body>
</html>