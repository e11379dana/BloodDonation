package codes.servlets;

import codes.javaClasses.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateDetails
 */
@WebServlet("/UpdateDetails")
public class UpdateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Statement stmt = null;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	    String nic = (request.getParameter("nic"));
		//String name = request.getParameter("name");
		String ldate = request.getParameter("ldate");
		
		MysqlConn connect = new MysqlConn();
		
		String sql;
	     MysqlConn con=new MysqlConn();
	     sql="Update donor_details"+" set donor_last_transfusion='"+ldate+"' ,donor_times=donor_times+1 "+"  where donor_nic='"+nic+"'";
	     con.updateQuery(sql, null);
	     request.getRequestDispatcher("/updateDetails.jsp").forward(request,response);
	     System.out.println();
	}

}
