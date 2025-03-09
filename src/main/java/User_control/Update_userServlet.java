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

@WebServlet("/Update_userServlet")
public class Update_userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("uid");
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
		boolean isTrue;
		
		isTrue = User_DB.updateRegUser(id, name, password, email, phone, address);
		
		if(isTrue == true)
		{
			
			List<Registered_user> userDetails = User_DB.getUserDetails(id);
			request.setAttribute("Uinfo", userDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("registered_user_account.jsp");
			dis1.forward(request, response);
		}
		else
		{
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Invalid Informations');");
			out.println("location ='Update_userServlet.jsp'");
			out.println("</script>");
		}
	}

}
