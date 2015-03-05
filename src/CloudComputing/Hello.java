package CloudComputing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

// Plain old Java Object it does not extend as class or implements 
// an interface

// The class registers its methods for the HTTP GET request using the @GET annotation. 
// Using the @Produces annotation, it defines that it can deliver several MIME types,
// text, XML and HTML. 

// The browser requests per default the HTML MIME type.

//Sets the path to base URL + /hello
@Path("/hello")
public class Hello {

 
  @GET
  @Produces(MediaType.APPLICATION_JSON)
  public String sayPlainTextHello() throws Throwable {
	  
	  
	  System.out.println("-------- PostgreSQL "
				+ "JDBC Connection Testing ------------");

	
	

		Connection connection = null;

		try {
			
			  Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(
					"jdbc:postgresql://ec2-107-22-249-138.compute-1.amazonaws.com:5432/dced89r5i9buuv?user=mwnhvvbferqvwd&password=LRN1--GjZJlXwJJOVr9Jvj5xG1&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory");

		} catch (SQLException e) {

			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
			return null;

		}

		if (connection != null) {
			System.out.println("You made it, take control your database now!");
		} else {
			System.out.println("Failed to make connection!");
		}
	  
	  
	
	  String a ="1";
	  Connection con = null;
      PreparedStatement pst = null;

      String id= "jdbc:postgresql://ec2-107-22-249-138.compute-1.amazonaws.com";
      String author = "mwnhvvbferqvwd";
      String password = "LRN1--GjZJlXwJJOVr9Jvj5xG1";

      try {

    	  Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(
					"jdbc:postgresql://ec2-107-22-249-138.compute-1.amazonaws.com:5432/dced89r5i9buuv?user=mwnhvvbferqvwd&password=LRN1--GjZJlXwJJOVr9Jvj5xG1&ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory");


          String stm = "INSERT INTO Feedback(FirstName, LastName) VALUES(?, ?)";
          pst = con.prepareStatement(stm);
          pst.setString(1, id);
          pst.setString(2, author);                    
          pst.executeUpdate();

      } catch (SQLException e) {
    	  e.printStackTrace();

      } finally {

         
      }
			
	  
	  
    return a;
  }



} 