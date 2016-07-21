//package codes.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
/**
 * Servlet implementation class UpdateDetails
 */

public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static int id=0;		
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	final String DB_URL = "jdbc:mysql://localhost/news_event";
	final String USER = "root";
	final String PASS = "";   
	Connection conn = null;
	Statement stmt = null;
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
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		try{
			Class.forName("com.mysql.jdbc.Driver");
		    conn = DriverManager.getConnection(DB_URL,USER,PASS);
	       stmt = conn.createStatement();
		 String topic = request.getParameter("topic");
		 String newsEvent= request.getParameter("news");
		 String tel1 = request.getParameter("tel1");
		 String tel2 = request.getParameter("tel2");
		 String publisher = request.getParameter("publisher");
		 String email = request.getParameter("email");
		 String date = request.getParameter("date");
		
		//String ldate = request.getParameter("ldate");
		  String sql=null;
		  System.out.println(id+"+++++++");
		  if(id==0){
		  id=(new Add()).postNumber();
		
		  }
		  /////
		 	/*sql = "select * from news_events ;";
		 	stmt.executeQuery(sql);
		 	ResultSet rs = stmt.executeQuery(sql);
		     
		    	int   num = Integer.parseInt(rs.getString("id"));
	      
	      System.out.println(num);////*/
	      sql = "insert into news_events (date,topic,news_event,telephone_1,telephone_2,publisher,email) values"+"('"+date+"','"+topic+"','"+newsEvent+"',"+tel1+","+tel2+",'"+publisher+"','"+email+"');";
	      PrintWriter out = null;
	      System.out.println(sql);
	      stmt.executeUpdate(sql);
	      stmt.close();
	      conn.close();
	     id++;
	      
	      
	 }catch(SQLException se){
	      se.printStackTrace();
	   }catch(Exception e){
	      e.printStackTrace();
	   }finally{
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
		 request.getRequestDispatcher("/success_logged.jsp").forward(request,response);
	}
	public  int postNumber(){
		int num=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);
	      stmt = conn.createStatement();
	      String 	sql = "select * from news_events ;";
	      stmt.executeQuery(sql);
	      
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()) {
	    	   num = Integer.parseInt(rs.getString("id"));
	    	   System.out.println(rs.getString("topic"));
	    	}
	      //num=Integer.parseInt(rs.getString("MAX(id)"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}

}
