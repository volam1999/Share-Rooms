package net.tpcop.actions;

import java.sql.ResultSet;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.tpcop.model.Database;

public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String email, password;
	private Database db;

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
			ResultSet rs = null;
			db = new Database();
			String query = "SELECT * FROM accounts WHERE email ='" + getEmail() + "' and password ='" + getPassword()
					+ "';";
			rs = db.executeQuery(query);
			if (rs != null) {
				while (rs.next()) {
					if (rs.getString("email").trim().equals(email)
							&& (rs.getString("password").trim().equals(password))) {
						Map<String, Object> session = ActionContext.getContext().getSession();
						session.put("EMAIL", email);
						return SUCCESS;
					} else {
						return ERROR;
					}
				}
			}
			return ERROR;
		} catch (Exception ex) {
			ex.printStackTrace();
			return ERROR;
		}
	}

	public String goSignUp() {
		return SUCCESS;
	}
}
