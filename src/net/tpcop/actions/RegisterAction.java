package net.tpcop.actions;

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
			String query = "INSERT INTO accounts VALUES (N'" + fullname.trim() + "', '" + email.trim() + "', '"
					+ password.trim() + "');";
			if (db.execute(query)) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return "failed";
		}
	}

	public String goSignIn() {
		return SUCCESS;
	}

}
