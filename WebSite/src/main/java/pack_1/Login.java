package pack_1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Login")
public class Login extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		check_loged_in_or_not obj = new check_loged_in_or_not();
		if(obj.check(uname, pass)) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("user", uname);
			response.sendRedirect("index.jsp");
		}
		else
			response.sendRedirect("login.jsp");
	}

}
