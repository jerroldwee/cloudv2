package CloudComputing;

import java.sql.*;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

@Path("/Register")
public class Register {
	
	@GET
	
	public ResponseBuilder getUsers()
			 {
	 
		
		Connection con = null;
        PreparedStatement pst = null;

        String url = "jdbc:postgresql://ec2-107-22-249-138.compute-1.amazonaws.com";
        String user = "mwnhvvbferqvwd";
        String password = "LRN1--GjZJlXwJJOVr9Jvj5xG1";

        try {

        	   String id = "Trygve Gulbranssen";
            String author = "Trygve Gulbranssen";
            con = DriverManager.getConnection(url, user, password);

            String stm = "INSERT INTO FeedBack(FirstName, LastName) VALUES(?, ?)";
            pst = con.prepareStatement(stm);
            pst.setString(1, id);
            pst.setString(2, author);                    
            pst.executeUpdate();

        } catch (SQLException ex) {
            

        } finally {

            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
               
            }
        }
			return Response
			   .status(200);
			  
	 
		}
}
