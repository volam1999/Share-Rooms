package net.tpcop.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.tpcop.model.Database;
import net.tpcop.model.Profile;

public class ProfileAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Database db;
	private Profile profile;

	Map<String, Object> session = ActionContext.getContext().getSession();
	String sessionEmail = session.get("EMAIL").toString();

	private String fullname, email, password, phone, address, message;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String execute() throws Exception {
		try {
			System.out.println("Session: " + sessionEmail);

			// Connect to database 'tpcop'
			db = new Database();
			Connection conn = db.getConnection();

			String sql = "SELECT * FROM accounts WHERE";
			sql += " email = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, sessionEmail);

			ResultSet rs = ps.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					fullname = rs.getNString("fullname").trim();
					email = rs.getNString("email").trim();
					password = rs.getNString("password").trim();
					phone = rs.getString("phone");
					message = rs.getNString("message");
					address = rs.getNString("address");
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}

		return SUCCESS;
	}

	public String updateInformation() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			Connection conn = db.getConnection();
			System.out.println(fullname);
			profile = getProfile();

			// prepare update data
			fullname = (profile.getFullname() != fullname && !fullname.isEmpty()) ? fullname : profile.getFullname();
			email = (profile.getEmail() != email && !email.isEmpty()) ? email : profile.getEmail();
			password = (profile.getPassword() != password && !password.trim().equals("password")) ? password
					: profile.getPassword();
			phone = (profile.getPhone() != phone && !phone.isEmpty()) ? phone : profile.getPhone();
			message = (profile.getMessage() != message && !message.isEmpty()) ? message : profile.getMessage();

			String sql = "UPDATE accounts SET fullname = ?, email = ?, password= ?, phone = ?, message = ? WHERE";
			sql += " email = ?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, fullname);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, phone);
			ps.setString(5, message);
			ps.setString(6, sessionEmail);

			int i = ps.executeUpdate();
			System.out.println(i + " record effected");

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}

		return SUCCESS;
	}

	private Profile getProfile() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			Connection conn = db.getConnection();

			String sql = "SELECT * FROM accounts WHERE";
			sql += " email = ?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, sessionEmail);

			ResultSet rs = ps.executeQuery();

			if (rs != null) {
				profile = new Profile();
				while (rs.next()) {
					profile.setFullname(rs.getNString("fullname").trim());
					profile.setEmail(rs.getNString("email").trim());
					profile.setPassword(rs.getNString("password").trim());
					profile.setPhone(rs.getString("phone"));
					profile.setMessage(rs.getNString("message"));
				}
			}
			return profile;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return null;
		}
	}

}
