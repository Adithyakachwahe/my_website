package pack_1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/Create")
public class Create extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("un");
		String pass = request.getParameter("ps");
		String sql = "insert into database_1.login values(?,?,?)";
		String sql2 = "SELECT * FROM database_1.login";
		int count1 =1;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_1" , "root" ,"systemserver");
			PreparedStatement st = con.prepareStatement(sql);
			Statement sta = con.createStatement();
			ResultSet rs1 =  sta.executeQuery(sql2);
			while(rs1.next())
			{
				count1 = count1+1;
			}
			st.setInt(1, count1);
			st.setString(2, name);
			st.setString(3, pass);
			int count =  st.executeUpdate();
//			System.out.println(count +" updated");
			response.sendRedirect("login.jsp");
			st.close();
			con.close();
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
