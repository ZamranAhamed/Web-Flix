package User_control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = User_DB.validate(username, password);
		
		if(isTrue == true)
		{
			List<Registered_user> userDetails = User_DB.getRegUser(username);
			request.setAttribute("Uinfo", userDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("registered_user_account.jsp");
			dis1.forward(request, response);
		}
		else
		{
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your Username or Password is incorrect');");
			out.println("location ='login.jsp'");
			out.println("</script>");
		}
	}

}
