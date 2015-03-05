package CloudComputing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@Path("/Signup")
public class signup {
	@GET
	public void signup(@DefaultValue("test") @QueryParam("firstname") String firstname, @DefaultValue("test") @QueryParam("lastname") String lastname, @DefaultValue("test") @QueryParam("username") String username, @DefaultValue("test") @QueryParam("password") String password, @DefaultValue("test") @QueryParam("email") String email){
		
		System.out.println(firstname);
		System.out.println(lastname);
		System.out.println(username);
		System.out.println(password);
		System.out.println(email);

		
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


	          String stm = "INSERT INTO appuser(firstname,lastname,username,password,email) VALUES(?, ?, ?, ?, ?)";
	          pst = con.prepareStatement(stm);
	          pst.setString(1, firstname);
	          pst.setString(2, lastname);   
	          pst.setString(3, username);
	          pst.setString(4, password);
	          pst.setString(5, email);
	          pst.executeUpdate();

	      } catch (SQLException e) {
	    	  e.printStackTrace();

	      }
	}

}
