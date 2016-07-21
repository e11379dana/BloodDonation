


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditeNews
 */

public class Edite extends HttpServlet {
	private static final long serialVersionUID = 1L;
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	final String DB_URL = "jdbc:mysql://localhost/news_event";
	final String USER = "root";
	final String PASS = "";   
	Connection conn = null;
	Statement stmt = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String topic = null;
	    String news=null;
		String id=null;
		String date=null;
		String publisher=null;
		String tel1=null;
		String tel2=null;
		String email=null;
		int num=Integer.parseInt(request.getParameter("num"));
			try {
				Class.forName("com.mysql.jdbc.Driver");
			
		      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		      stmt = conn.createStatement();
		      String 	sql = "select * from news_events where id="+num+";";
		      stmt.executeQuery(sql);
		      
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()) {
		    	  if(num==Integer.parseInt(rs.getString("id"))){
		    	   topic=rs.getString("topic");
		    	   news=rs.getString("news_event");
		    	   publisher=rs.getString("publisher");
		    	   tel1=rs.getString("tel1");
		    	   tel2=rs.getString("tel2");
		    	   email=rs.getString("email");
		    	   date=rs.getString("date");
		    	  }
		    	  // System.out.println(num);
		    	}
		      //num=Integer.parseInt(rs.getString("MAX(id)"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
			      try{
			         if(stmt!=null)
			            stmt.close();
			      }catch(SQLException se2){
			      }
			      try{
			         if(conn!=null)
			            conn.close();
			      }catch(SQLException se){
			         se.printStackTrace();
			      }
			}
		    String name = request.getParameter("name");
		    System.out.println(name);
			request.setAttribute("num",Integer.parseInt(request.getParameter("num")));
			request.setAttribute("topic",topic);
			request.setAttribute("news",news);
			request.setAttribute("id",id);
			request.setAttribute("publisher",publisher);
			request.setAttribute("id",id);
			request.setAttribute("tel2",tel2);
			request.setAttribute("tel1",tel1);

			//request.setAttribute("contex",publisher);
			
	        
	        
	        request.getRequestDispatcher("/jspfiles/test.jsp").forward(request,response);
		
	}

}

