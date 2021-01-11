package net.tpcop.actions;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;

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
	private String header, body, name, prices, area, address, roomID, authorName, phone, authorEmail, pic1, pic2, pic3;
	private Date createDate;

	private final String destPath = "D:\\Code\\JAVA\\TPCOP\\WebContent\\images";
	private List<Room> dataList = null;
	private ResultSet rs = null;
	private Map<String, Object> session = ActionContext.getContext().getSession();
	private String verified = session.get("VERIFIED").toString();
	private List<File> fileUpload = new ArrayList<File>();
	private List<String> fileUploadContentType = new ArrayList<String>();
	private List<String> fileUploadFileName = new ArrayList<String>();

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

	public List<File> getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(List<File> fileUpload) {
		this.fileUpload = fileUpload;
	}

	public List<String> getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(List<String> fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public List<String> getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(List<String> fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public String getPic1() {
		return pic1;
	}

	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}

	public String getPic2() {
		return pic2;
	}

	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}

	public String getPic3() {
		return pic3;
	}

	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
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
		String uniqueFileName = UUID.randomUUID().toString();
		try {
			// check if the user has update personal information
			if (verified.equals("0")) {
				session.put("NOTIFICTYPE", "0");
				session.put("NOTIFICBODY", "Please update the profile info to post a room's request");
				return session.get("ADMIN").toString().equals("1") ? "errorAdmin" : "errorUser";
			}

			// save upload file
			if (!fileUpload.isEmpty()) {
				for (int i = 0; i < fileUpload.size(); i++) {
					try {
						File destFile = new File(destPath, uniqueFileName + fileUploadFileName.get(i));
						FileUtils.copyFile(fileUpload.get(i), destFile);
						System.out.println("Uploaded File name: " + uniqueFileName + fileUploadFileName.get(i));
					} catch (IOException e) {
						e.printStackTrace();
						session.put("NOTIFICTYPE", "0");
						session.put("NOTIFICBODY", "Error: " + e.toString());
						return ERROR;
					}
				}
			}

//			// Connect to database 'tpcop'
			db = new Database();
			String sql = "INSERT INTO rooms VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement ps = db.getConnection().prepareStatement(sql);
			ps.setString(1, session.get("EMAIL").toString().trim());
			ps.setNString(2, header);
			ps.setNString(3, body);
			ps.setString(4, prices);
			ps.setString(5, area);
			ps.setNString(6, address);
			ps.setString(7, "Pending");
			ps.setNString(8, fileUpload.size() < 1 ? "" : uniqueFileName + fileUploadFileName.get(0));
			ps.setNString(9, fileUpload.size() < 2 ? "" : uniqueFileName + fileUploadFileName.get(1));
			ps.setNString(10, fileUpload.size() < 3 ? "" : uniqueFileName + fileUploadFileName.get(2));
			long millis = System.currentTimeMillis();
			ps.setDate(11, new Date(millis));
			int x = ps.executeUpdate();
			System.out.println(x + " room added");
			session.put("NOTIFICTYPE", "1");
			session.put("NOTIFICBODY", "Sending room request successfully and waiting for an admin to process!");
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
			return ERROR;
		}
	}

	public String goDetails() {
		try {
			// Connect to database 'tpcop'
			db = new Database();
			String query = "SELECT * FROM rooms WHERE id =" + roomID;
			rs = db.executeQuery(query);
			if (rs != null) {
				while (rs.next()) {
					header = rs.getNString("header");
					body = rs.getNString("body");
					prices = rs.getString("price");
					area = rs.getString("area");
					address = rs.getNString("address");
					pic1 = (rs.getNString("pic1").isEmpty()) ? "" : "..\\images\\" + rs.getNString("pic1");
					pic2 = (rs.getNString("pic2").isEmpty()) ? "" : "..\\images\\" + rs.getNString("pic2");
					pic3 = (rs.getNString("pic3").isEmpty()) ? "" : "..\\images\\" + rs.getNString("pic3");
					createDate = rs.getDate("created_at");
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
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
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
					room.setPic1(rs.getNString("pic1"));
					room.setPic2(rs.getNString("pic2"));
					room.setPic3(rs.getNString("pic3"));
					room.setDate(rs.getDate("created_at"));
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
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
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
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
			return ERROR;
		}
		session.put("NOTIFICTYPE", "1");
		session.put("NOTIFICBODY", "Accept room request successfully...");
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
			session.put("NOTIFICTYPE", "0");
			session.put("NOTIFICBODY", "Error: " + e.toString());
			return ERROR;
		}

		session.put("NOTIFICTYPE", "1");
		session.put("NOTIFICBODY", "Abort room request successfully...");
		return SUCCESS;
	}

}
