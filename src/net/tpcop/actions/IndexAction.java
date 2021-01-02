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
	private int totalUser, totalRequest, totalOpen, totalClosed;

	public List<Room> getDataList() {
		return dataList;
	}

	public void setDataList(List<Room> dataList) {
		this.dataList = dataList;
	}

	public int getTotalUser() {
		return totalUser;
	}

	public void setTotalUser(int totalUser) {
		this.totalUser = totalUser;
	}

	public int getTotalRequest() {
		return totalRequest;
	}

	public void setTotalRequest(int totalRequest) {
		this.totalRequest = totalRequest;
	}

	public int getTotalOpen() {
		return totalOpen;
	}

	public void setTotalOpen(int totalOpen) {
		this.totalOpen = totalOpen;
	}

	public int getTotalPending() {
		return totalClosed;
	}

	public void setTotalPending(int totalPending) {
		this.totalClosed = totalPending;
	}

	public int getTotalClosed() {
		return totalClosed;
	}

	public void setTotalClosed(int totalClosed) {
		this.totalClosed = totalClosed;
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
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
			return ERROR;
		}

		return SUCCESS;
	}

	private String adminIndex() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT TOP 5 * FROM rooms ORDER BY id DESC ";
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

			// get number of user
			query = "SELECT COUNT('id') FROM accounts";
			rs = db.executeQuery(query);
			if (rs.next()) {
				int numberOfRows = rs.getInt(1);
				System.out.println("numberOfUser= " + numberOfRows);
				totalUser = numberOfRows;
			} else {
				System.out.println("error: could not get the record counts");
			}

			// get number of request
			query = "SELECT COUNT('id') FROM rooms WHERE status = 'Pending'";
			rs = db.executeQuery(query);
			if (rs.next()) {
				int numberOfRows = rs.getInt(1);
				System.out.println("numberOfRequest= " + numberOfRows);
				totalRequest = numberOfRows;
			} else {
				System.out.println("error: could not get the record counts");
			}

			// get number of approved request
			query = "SELECT COUNT('id') FROM rooms WHERE status = 'Open'";
			rs = db.executeQuery(query);
			if (rs.next()) {
				int numberOfRows = rs.getInt(1);
				System.out.println("numberOfOpen= " + numberOfRows);
				totalOpen = numberOfRows;
			} else {
				System.out.println("error: could not get the record counts");
			}

			// get number of denied request
			query = "SELECT COUNT('id') FROM rooms WHERE status = 'Closed'";
			rs = db.executeQuery(query);
			if (rs.next()) {
				int numberOfRows = rs.getInt(1);
				System.out.println("numberOfClosed= " + numberOfRows);
				totalClosed = numberOfRows;
			} else {
				System.out.println("error: could not get the record counts");
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
			return ERROR;
		}
		
		return SUCCESS;
	}

}
