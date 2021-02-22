package Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
		
	public MemberDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3308/miniproject?serverTimezone=Asia/Seoul&useSSL=false";
			String dbid = "root";
			String dbpw = "0319";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbid,dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userid ,String userpw) {
		String SQL = "SELECT pw FROM USER WHERE id =?";
		
		System.out.print("id = " + userid);
	
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userpw)) {
					return 1;
				}
				else {
					return 0; 
				}
			}
			return -1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	public int join(Members members) {
		String SQL = "INSERT INTO USER ( id, pw, phone ) VALUES (?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, members.getId());
			pstmt.setString(2, members.getPw());
			pstmt.setString(3, members.getPhone());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static MemberDAO getInstance() {
		// TODO Auto-generated method stub
		return null;
	}


	}
