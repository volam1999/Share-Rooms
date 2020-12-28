package net.tpcop.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

import net.tpcop.model.Database;

public class RegisterAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String fullname, email, password;

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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

	Database db;

	@Override
	public String execute() throws Exception {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			Connection conn = db.getConnection();
			String query = "INSERT INTO accounts VALUES (?,?,?,?,?,?,?,?);";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setNString(1, fullname);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, "");
			ps.setNString(5, "");
			ps.setNString(6, "");
			ps.setString(7, "0");
			ps.setString(8, "0");
			int row = ps.executeUpdate();
			System.out.println(row + "row added");
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
			return ERROR;
		}
	}

	public String goSignIn() {
		return SUCCESS;
	}

}
