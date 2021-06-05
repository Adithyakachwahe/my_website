package pack_1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.util.DnsSrv.SrvRecord;

import java.sql.*;
@WebServlet("/Admin")
public class Admin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String userid = request.getParameter("userid");
		String p = request.getParameter("p");
		String sql= "select id from database_1.admin1 where username=? and password=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_1" ,"root" , "systemserver");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, userid);
			st.setString(2, p);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				response.sendRedirect("admin.jsp");
			else {
				response.sendRedirect("login.jsp");
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
	}

}
