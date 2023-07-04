package backend;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// WARNING: The OnlineShopping database MUST exist beforehand!
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping", "root",
					"123456");
			return connect;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
