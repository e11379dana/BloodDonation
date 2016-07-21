package codes.servlets;

import codes.javaClasses.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Month;
import java.time.Period;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchDonor
 */
@WebServlet("/SearchDonor")
public class SearchDonor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		String bType=null;
		bType = request.getParameter("bType");
		String city = request.getParameter("nearestTown");
		String date=request.getParameter("date");
		MysqlConn connect = new MysqlConn();
		
		String sql;
	      if(!(city.equals(""))) {
	    	  sql = "select * from donor_details where donor_blood_type =" +" '"+bType+"'and donor_near_twn='"+city+"';";
	    	  //stmt.executeQuery(sql);
	  	  }
	      else {
	    	  sql = "select * from donor_details where donor_blood_type =" +"'"+bType+"';";
	    	  //stmt.executeQuery(sql);
	      }
	      
	      ResultSet rs = connect.getQuery(sql);
	      
	      ArrayList<String> name =new ArrayList<String>();
	        ArrayList<String> gender =new ArrayList<String>();
	        ArrayList<String> nic =new ArrayList<String>();
	        ArrayList<String> bdate =new ArrayList<String>();
	        ArrayList<String> haddress =new ArrayList<String>();
	        ArrayList<String> hTel =new ArrayList<String>();
	        ArrayList<String> mobile  =new ArrayList<String>();
	        ArrayList<String> oTel =new ArrayList<String>();
	        ArrayList<String>email =new ArrayList<String>();
	        ArrayList<String> twn =new ArrayList<String>();
	        ArrayList<String> bltype =new ArrayList<String>();
	        ArrayList<String>  ldate =new ArrayList<String>();
	        ArrayList<String>times  =new ArrayList<String>();
	        ArrayList<String> allergies=new ArrayList<String>();
	        ArrayList<String>  comments  =new ArrayList<String>();
	        ArrayList<String>id  =new ArrayList<String>(); 
	        boolean addArray=true;
	        try {
				while(rs.next()){
				     //Retrieve by column name
					String lDate=rs.getString("donor_last_transfusion");
					 
					 if(!date.equals("")){
						if(CalDate(lDate,date)<90){
							addArray=false;
						}
					 }
					 if(addArray){
					 ldate.add(lDate);
				     name.add(rs.getString("donor_name"));
				    gender.add(rs.getString("donor_gender"));
				     nic.add(rs.getString("donor_nic"));
				      bdate.add(rs.getString("donor_bdate"));
				      System.out.println(bdate.get(bdate.size()-1));
				      haddress.add(rs.getString("donor_homeaddress"));
				      hTel.add(rs.getString("donor_home_tel"));
				     mobile.add(rs.getString("donor_mobile"));
				     oTel.add(rs.getString("donor_office_tel"));
				      email.add(rs.getString("donor_email"));
				     twn.add(rs.getString("donor_near_twn"));
				      bltype.add(rs.getString("donor_blood_type"));
				      ldate.add(lDate);
				     times .add(rs.getString("donor_times"));
				     allergies.add(rs.getString("donor_weight"));
				      comments.add(rs.getString("donor_other_comments"));
				      id.add(rs.getString("donor_id"));
					 }
					 else  addArray=true;
				     //Display values
				     //out.println(ldate);
				    
				    
				     
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         request.setAttribute("name", name);
	         request.setAttribute("gender", gender);
	         request.setAttribute("nic", nic);
	         request.setAttribute("haddress", haddress);
	         request.setAttribute("htel", hTel);
	         request.setAttribute("mobile", mobile);
	         request.setAttribute("oTel", oTel);
	         request.setAttribute("email", email);
	         request.setAttribute("twn", twn);
	         request.setAttribute("bltype", bltype);
	         request.setAttribute("ldate", ldate);
	         request.setAttribute("times", times);
	         request.setAttribute("allergies", allergies);
	         request.setAttribute("comments", comments);
	         request.setAttribute("id", id);
	        request.getRequestDispatcher("./jspfiles/showDetails.jsp").forward(request, response);
	      
	}
  public long CalDate(String ldate,String date){
	  String [] LastDate=ldate.split("-");  
	  LocalDate last = LocalDate.of(Integer.parseInt(LastDate[0]),Integer.parseInt(LastDate[1]), Integer.parseInt(LastDate[2]));
	  String [] NextDate=date.split("-");  
		LocalDate nowday = LocalDate.of(Integer.parseInt(NextDate[0]),Integer.parseInt(NextDate[1]), Integer.parseInt(NextDate[2]));

		Period p = Period.between(last,nowday);
		long p2 = ChronoUnit.DAYS.between(last, nowday);

		System.out.println("" + p.getYears() + "." + p.getMonths() + "." + p.getDays() + " ." + p2 + " ");
	return p2;	
  }
  
}
