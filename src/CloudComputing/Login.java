package CloudComputing;

import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")


	public class Login extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	    private final String userID = "admin";
	    private final String password = "password";
	 
	    protected void doPost(HttpServletRequest request,
	            HttpServletResponse response) throws ServletException, IOException {
	 
	        // get request parameters for userID and password
	        String user = request.getParameter("user");
	        String pwd = request.getParameter("pwd");
	         
	        if(userID.equals(user) && password.equals(pwd)){
	            HttpSession session = request.getSession();
	            session.setAttribute("user", "Pankaj");
	            //setting session to expiry in 30 mins
	            session.setMaxInactiveInterval(30*60);
	            Cookie userName = new Cookie("user", user);
	            response.addCookie(userName);
	            //Get the encoded URL string
	            String encodedURL = response.encodeRedirectURL("home.jsp");
	            response.sendRedirect(encodedURL);
	        }else{
	            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.jsp");
	            PrintWriter out= response.getWriter();
	            out.println("<font color=red>Either user name or password is wrong.</font>");
	            rd.include(request, response);
	        }
	 
	    }
    
	}
