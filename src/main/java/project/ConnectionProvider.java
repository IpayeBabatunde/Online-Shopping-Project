package project;

import java.sql.*;

public class ConnectionProvider {
	
	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root", "123123");
			return con;
			
		}catch(Exception e) {
			System.out.print(e);
			return null;
			
		}
		
	}

}