package net.tpcop.actions;

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
	private String header, body, name, prices, area, address;

	private List<Room> dataList = null;
	private ResultSet rs = null;
	private Map<String, Object> session = ActionContext.getContext().getSession();

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

	@Override
	public String execute() throws Exception {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT * FROM rooms";
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
					System.out.println("Add room successfully with ID:" + rs.getInt("id"));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return ERROR;
		}

		return SUCCESS;
	}

	public String AddRoom() {
		try {
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

}
