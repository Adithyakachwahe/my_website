package pack_1;
import java.sql.*;
public class check_loged_in_or_not {
	
	public boolean check(String uname ,String pass)
	{
		String url = "jdbc:mysql://localhost:3306/database_1";
		String sql = "select id from database_1.login where uname=? and pass=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , "root" , "systemserver");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				return true;
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
		
	}
}
