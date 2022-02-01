package attendance;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InsertStudent {
	
	// Information for the mysql database to connect
	private String dburl = "jdbc:mysql://localhost:3306/attendance";
	private String dbuname = "root";
	private String dbpassword = "1234";
	private String dbdriver = "com.mysql.jdbc.Driver";
	
	// loading sql driver
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// insert method takes in parameters from the input fields
	public void ValidInsert(String s_id, String s_intime, String s_outtime, String s_totaltime, String s_note) {
		loadDriver(dbdriver);
		Connection con= null;
		try {
			// connecting to database and performing insert action
			
			con = DriverManager.getConnection(dburl,dbuname,dbpassword);
			PreparedStatement ps = con.prepareStatement("Insert into student values(?,?,?,?,?)");
			ps.setString(1, s_id);
			ps.setString(2, s_intime);
			ps.setString(3, s_outtime);
			ps.setString(4, s_totaltime);
			ps.setString(5, s_note);
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
