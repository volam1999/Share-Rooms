package net.tpcop.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.tpcop.model.Room;
import net.tpcop.model.Database;

public class RoomsAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Database db;
	private String header, body, name, prices, area, address, roomID, authorName, phone, authorEmail;

	private List<Room> dataList = null;
	private ResultSet rs = null;
	private Map<String, Object> session = ActionContext.getContext().getSession();
	private String verified = session.get("VERIFIED").toString();

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Room> getDataList() {
		return dataList;
	}

	public void setDataList(List<Room> dataList) {
		this.dataList = dataList;
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrices() {
		return prices;
	}

	public void setPrices(String prices) {
		this.prices = prices;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getRoomID() {
		return roomID;
	}

	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAuthorEmail() {
		return authorEmail;
	}

	public void setAuthorEmail(String authorEmail) {
		this.authorEmail = authorEmail;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(session.get("ADMIN").toString());
		if (session.get("ADMIN").toString().equals("0")) {
			return userListRooms();
		} else {
			return adminListRooms();
		}
	}

	public String AddRoom() {
		System.out.println(verified);
		try {
			if (verified.equals("0")) {
				return "unverified";
			}

			// Connect to database 'tpcop'
			db = new Database();
			String sql = "INSERT INTO rooms VALUES(?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement ps = db.getConnection().prepareStatement(sql);
			ps.setString(1, session.get("EMAIL").toString().trim());
			ps.setNString(2, header);
			ps.setNString(3, body);
			ps.setString(4, prices);
			ps.setString(5, area);
			ps.setNString(6, address);
			ps.setString(7, "Pending");
			int x = ps.executeUpdate();
			System.out.println(x + " room added");
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return ERROR;
		}
	}

	public String goDetails() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			System.out.println("roomID = " + getRoomID());
			System.out.println("authorEmail = " + authorEmail);
			String query = "SELECT * FROM rooms WHERE id =" + roomID;
			rs = db.executeQuery(query);
			if (rs != null) {
				while (rs.next()) {
					header = rs.getNString("header");
					body = rs.getNString("body");
					prices = rs.getString("price");
					area = rs.getString("area");
					address = rs.getNString("address");
					System.out.println("GET room successfully with ID:" + roomID);
				}
			}

			query = "SELECT * FROM accounts WHERE email = '" + authorEmail + "'";
			rs = db.executeQuery(query);
			if (rs != null) {
				while (rs.next()) {
					authorName = rs.getNString("fullname");
					phone = rs.getString("phone");
				}
			}
			System.out.println("GET INFO COMPLETED");
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return ERROR;
		}
	}

	private String userListRooms() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT * FROM rooms WHERE status != 'Pending'";
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

	private String adminListRooms() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT * FROM rooms WHERE status = 'Pending'";
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

	public String approveRequest() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			Connection conn = db.getConnection();

			String sql = "UPDATE rooms SET status = ? WHERE";
			sql += " id = ?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Open");
			ps.setString(2, roomID);

			int i = ps.executeUpdate();
			System.out.println(i + " record effected");

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}

		return SUCCESS;
	}

	public String cancelRequest() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			Connection conn = db.getConnection();

			String sql = "UPDATE rooms SET status = ? WHERE";
			sql += " id = ?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Closed");
			ps.setString(2, roomID);

			int i = ps.executeUpdate();
			System.out.println(i + " record effected");

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}

		return SUCCESS;
	}

}
