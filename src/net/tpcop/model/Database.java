package net.tpcop.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public class Database {
	private final String DB_URL = "jdbc:sqlserver://localhost:1433;" + "databaseName=tpcop;";
	private final String USER_NAME = "sa";
	private final String PASSWORD = "123456";
	private ResultSet rs = null;

	public Database() {
		super();
	}

	public ResultSet executeQuery(String query) {
		try {
			// Connect to database 'tpcop'
			Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
			// crate statement
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			return rs;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return null;
		}
	}

	public boolean execute(String query) {
		try {
			// Connect to database 'tpcop'
			Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
			// crate statement
			Statement stmt = conn.createStatement();
			stmt.execute(query);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return false;
		}
	}

	public Connection getConnection() {
		return getConnection(DB_URL, USER_NAME, PASSWORD);
	}

	public static Connection getConnection(String dbURL, String userName, String password) {
		Connection conn = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(dbURL, userName, password);
			System.out.println("connect successfully!");
		} catch (Exception ex) {
			System.out.println("connect failure!");
			ex.printStackTrace();
		}
		return conn;
	}

}
