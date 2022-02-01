package attendance;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class InstructorInformation {
	
	// information about database for connecting
	private String dburl = "jdbc:mysql://localhost:3306/attendance";
	private String dbuname = "root";
	private String dbpassword = "1234";
	private String dbdriver = "com.mysql.jdbc.Driver";
	
	// loading database driver
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// Login method takes in inputted username and password and searches database for them
	public boolean validLogin(String uname, String password) {
		loadDriver(dbdriver);
		Connection con= null;
		try {
			// connecting to database and searching for the inputted username and password
			con = DriverManager.getConnection(dburl,dbuname,dbpassword);
			PreparedStatement ps = con.prepareStatement("Select * from instructors where uname = ? and password = ?");
			ps.setString(1,uname);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
		
	}
	

	
	
}
