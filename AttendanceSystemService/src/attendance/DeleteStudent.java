package attendance;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteStudent {
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
	
	// method takes in the StudentID entered in the field
	public void ValidDelete(String s_id) {
		loadDriver(dbdriver);
		Connection con= null;
		try {
			// connecting to database and performing the delete action
			con = DriverManager.getConnection(dburl,dbuname,dbpassword);
			PreparedStatement ps = con.prepareStatement("Delete from student where s_id = ?");
			ps.setString(1, s_id);
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
}
