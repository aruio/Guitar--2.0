package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Util {

	public static void main(String[] args) {
		Connection conn = Util.getConnection();
		System.out.println(conn);
	}

	public static Connection getConnection() {
		try {
			Class.forName("org.sqlite.JDBC");
			return DriverManager.getConnection("jdbc:sqlite://d:/HrGuitar2.db");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void closeConnection(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO ×Ô¶¯Éú³ÉµÄ catch ¿é
				e.printStackTrace();
			}
		}

	}
}
