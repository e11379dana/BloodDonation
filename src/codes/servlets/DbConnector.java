package codes.servlets;

import codes.javaClasses.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DbConnector
 */
@WebServlet("/DbConnector")
public class DbConnector extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        try (PrintWriter out = response.getWriter()) {
	            /* TODO output your page here. You may use following sample code. */
	            
	            out.println("<!DOCTYPE html>");
	            out.println("<html>");
	            out.println("<head>");
	            out.println("<title>Adding post</title>");  
	            out.println("<meta http-equiv=\"refresh\" content=\"1; url=/DonateBlood/new_post\" />");
	            out.println("</head>");
	            out.println("<body>");
	            out.println("Your post is being added to the blog...<br>");
	            
	            String title = request.getParameter("title");
	            String content = request.getParameter("content");
	            doGet(request, response);
	           // Post_store.add_post(title, content);
	            out.println("</body>");
	            out.println("</html>");
	        }
	    }
	 @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 request.getRequestDispatcher("/home.html").forward(request,response);
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MysqlConn connect = new MysqlConn();
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String nic = request.getParameter("nic");
		String bday = request.getParameter("bday");
		String haddress = request.getParameter("haddress");
		String Oaddress = request.getParameter("Oaddress");
		String homeTel = request.getParameter("homeTel");
		String mobileTel = request.getParameter("mobileTel");
		String officeTel = request.getParameter("officeTel");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String bType = request.getParameter("bloodType");
		String fdate = request.getParameter("fdate");
		String weight = request.getParameter("weight");
		String comments = request.getParameter("comments");
		String id = request.getParameter("dnmb");
      
      String sql;
      sql = "insert into donor_details (donor_name,donor_gender,donor_nic,donor_bdate,donor_homeaddress,donor_officeaddress,donor_home_tel,donor_mobile,donor_office_tel,donor_email,donor_near_twn,donor_blood_type,donor_first_transfusion,donor_weight,donor_other_comments,donor_id, donor_last_transfusion,donor_times) values"
    		  +"('"+name+"','"+gender+"','"+nic+"','"+bday+"','"+haddress+"','"+Oaddress+"','"+homeTel+"','"+mobileTel+"','"+officeTel+"','"+email+"','"+city+"','"+bType+"','"+fdate+"','"+weight+"','"+comments+"','"+id+"','"+fdate+"',"+1+");";
      connect.setQuery(sql, null);
      request.getRequestDispatcher("/donorDetails.jsp").forward(request,response);
	}

}
