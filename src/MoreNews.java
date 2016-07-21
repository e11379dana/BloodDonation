import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MoreNews extends HttpServlet {
	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	final String DB_URL = "jdbc:mysql://localhost/news_event";
	final String USER = "root";
	final String PASS = "";   
	Connection conn = null;
	Statement stmt = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		(new MoreNews ()).doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	ArrayList<String> topic=new ArrayList<String>();
	ArrayList<String> news=new ArrayList<String>();
	ArrayList<String> id=new ArrayList<String>();
	ArrayList<String> date=new ArrayList<String>();
	ArrayList<String> publisher=new ArrayList<String>();
	ArrayList<String> tel1=new ArrayList<String>();
	ArrayList<String> tel2=new ArrayList<String>();
	ArrayList<String> email=new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
	      conn = DriverManager.getConnection(DB_URL,USER,PASS);
	      stmt = conn.createStatement();
	      String 	sql = "select * from news_events ;";
	      stmt.executeQuery(sql);
	      
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()) {
	    	   topic.add(rs.getString("topic"));
	    	   news.add(rs.getString("news_event"));
	    	   id.add(rs.getString("id"));
	    	   publisher.add(rs.getString("publisher"));
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
		//request.setAttribute("contex",publisher);
		
        
        
        request.getRequestDispatcher("/jspfiles/news.jsp").forward(request,response);
	}
}
