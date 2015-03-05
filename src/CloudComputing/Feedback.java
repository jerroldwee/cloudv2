package CloudComputing;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedback")
public class Feedback extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		//set defaults
		String firstname = "default";
		String lastname= "default";
		String email= "default";
		String school= "default";
		String start= "default";
		String improve= "default";
		String like= "default";
		String recommend= "default";
		
		//get params
		 firstname = request.getParameter("firstname");
		 lastname= request.getParameter("lastname");
		 email= request.getParameter("email");
		 school= request.getParameter("school");
		 start= request.getParameter("start");
		 improve= request.getParameter("improve");
		 like= request.getParameter("like");
		 recommend= request.getParameter("recommend");
		 
		 System.out.println(firstname);
		 System.out.println(lastname);
		 System.out.println(email);
		 System.out.println(school);
		 System.out.println(start);
		 System.out.println(improve);
		 System.out.println(like);
		 System.out.println(recommend);
		
		 Connection con = null;
	      PreparedStatement pst = null;


	      try {

	    	  try {
				Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				con = DriverManager.getConnection(
						"jdbc:postgresql://ec2-107-22-249-138.compute-1.amazonaws.com:5432/dced89r5i9buuv?user=mwnhvvbferqvwd&password=LRN1--GjZJlXwJJOVr9Jvj5xG1&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory");


	          String stm = "INSERT INTO webfeedback(firstname,lastname,email,school,start,improve,userlike,recommend) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	          pst = con.prepareStatement(stm);
	          pst.setString(1, firstname);
	          pst.setString(2, lastname);   
	          pst.setString(3, email);
	          pst.setString(4, school);
	          pst.setString(5, start);
	          pst.setString(6, improve);
	          pst.setString(7, like);
	          pst.setString(8, recommend);
	          pst.executeUpdate();

	      } catch (SQLException e) {
	    	  e.printStackTrace();

	      }
	      
	}
}
