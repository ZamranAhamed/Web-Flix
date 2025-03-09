package User_control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Delete_userServlet")
public class Delete_userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("uid");
		boolean isTrue;
		
		isTrue = User_DB.deleteRegUser(id);
		
		if(isTrue == true)
		{
			RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
			dis1.forward(request, response);
		}
		else
		{
			List<Registered_user> userDetails = User_DB.getUserDetails(id);
			request.setAttribute("Uinfo", userDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("login.jsp");
			dis2.forward(request, response);
		}
		
	}

}
