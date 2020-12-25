package net.tpcop.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import net.tpcop.model.Room;

public class ActionSys extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static String DB_URL = "jdbc:sqlserver://localhost:1433;" + "databaseName=tpcop;";
	private static String USER_NAME = "sa";
	private static String PASSWORD = "123456";
	private String email, password;

	private List<Room> dataList = null;
	private ResultSet rs = null;

	public List<Room> getDataList() {
		return dataList;
	}

	public void setDataList(List<Room> dataList) {
		this.dataList = dataList;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		try {
			// Connect to database 'tpcop'
			Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
			// crate statement
			Statement stmt = conn.createStatement();
			String query = "SELECT * FROM rooms";
			rs = stmt.executeQuery(query);
			dataList = new ArrayList<Room>();
			if (rs != null) {
				Room room = null;
				while (rs.next()) {
					room = new Room();
					room.setId(rs.getInt("id") + "");
					room.setAuthor(rs.getString("author"));
					room.setHeader(rs.getNString("header"));
					room.setBody(rs.getNString("body"));
					room.setPrice(rs.getString("price"));
					room.setAddress(rs.getNString("address"));
					dataList.add(room);
					System.out.println("Add room successfully with ID:" + rs.getInt("id"));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}

		return SUCCESS;
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
