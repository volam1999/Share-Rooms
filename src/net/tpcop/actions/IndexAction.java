package net.tpcop.actions;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.tpcop.model.Database;
import net.tpcop.model.Room;

public class IndexAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Database db;
	private ResultSet rs = null;
	private List<Room> dataList = null;
	private Map<String, Object> session = ActionContext.getContext().getSession();

	public List<Room> getDataList() {
		return dataList;
	}

	public void setDataList(List<Room> dataList) {
		this.dataList = dataList;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (session.get("ADMIN").toString().equals("0")) {
			return userIndex();
		} else {
			return adminIndex();
		}
	}

	private String userIndex() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT TOP 5 * FROM rooms WHERE status != 'Pending' ORDER BY id DESC ";
			rs = db.executeQuery(query);
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
					room.setArea(rs.getString("area"));
					room.setAddress(rs.getNString("address"));
					room.setStatus(rs.getString("status"));
					dataList.add(room);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return ERROR;
		}

		return SUCCESS;
	}

	private String adminIndex() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT TOP 5 * FROM rooms WHERE status = 'Pending' ORDER BY id DESC ";
			rs = db.executeQuery(query);
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
					room.setArea(rs.getString("area"));
					room.setAddress(rs.getNString("address"));
					room.setStatus(rs.getString("status"));
					dataList.add(room);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return ERROR;
		}

		return SUCCESS;
	}

}
