package com.javalec.daotoex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@172.30.1.31:1521:xe";
	private String uid = "scott";
	private String upw = "pcwk";
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> memberSelect(){
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection(url, uid, upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM MEMBER2");
			
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone1 = rs.getString("phone1");
				String phone2 = rs.getString("phone2");
				String phone3 = rs.getString("phone3");
				String gender = rs.getString("gender");
				
				MemberDTO dto = new MemberDTO(name, id, pw, phone1, phone2, phone3, gender);
				dtos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(stmt != null) {
					stmt.close();
				}
				if(con != null) {
					con.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return dtos;
	}
}
