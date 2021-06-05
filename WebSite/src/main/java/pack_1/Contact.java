package pack_1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.*;

@WebServlet("/Contact")
public class Contact extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name1 = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String msg = request.getParameter("message");
		String sql = "insert into database_1.contact values( ?,?,?,?,?)";
		String url = "jdbc:mysql://localhost:3306/database_1";
		int count1 = 1;
		String sql2 = "SELECT * FROM database_1.contact;";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","systemserver");
			PreparedStatement st = con.prepareStatement(sql);
			Statement sta = con.createStatement();
			ResultSet rs1 =  sta.executeQuery(sql2);
			while(rs1.next())
			{
				count1 = count1+1;
			}
			
			st.setInt(1, count1);
			st.setString(2, name1);
			st.setString(3, email);
			st.setString(4, subject);
			st.setString(5, msg);
			int count =  st.executeUpdate();
//		System.out.println(count +" updated");			response.sendRedirect("contact.jsp");
			st.close();
			con.close();
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}

}
