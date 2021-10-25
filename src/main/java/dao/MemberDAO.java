package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBAction;
import dto.MemberVO;

public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public MemberVO getMember(String id) throws Exception {
		MemberVO memberVO = null;
		String sql = "SELECT * FROM REVIEWMEMBER WHERE ID=?";
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				memberVO = new MemberVO();
				memberVO.setId(rs.getString("id"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setPw(rs.getString("pw"));
				memberVO.setName(rs.getString("name"));
				memberVO.setRegistration(rs.getString("registration"));
				memberVO.setNickname(rs.getString("nickname"));
				memberVO.setPhone(rs.getString("phone"));
				memberVO.setModel(rs.getString("model"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberVO;
	}
	
	public int insertMember(MemberVO memberVO) throws Exception {
		int result = -1;
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("INSERT INTO REVIEWMEMBER(ID, PW, NAME, REGISTRATION, NICKNAME, EMAIL, MODEL, PHONE) "
										+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, memberVO.getId());
			pstmt.setString(2, memberVO.getPw());
			pstmt.setString(3, memberVO.getName());
			pstmt.setString(4, memberVO.getRegistration());
			pstmt.setString(5, memberVO.getNickname());
			pstmt.setString(6, memberVO.getEmail());
			pstmt.setString(7, memberVO.getModel());
			pstmt.setString(8, memberVO.getPhone());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public MemberVO checkId(String id) throws Exception {
		MemberVO memberVO = null;
		Connection conn = DBAction.getInstance().getConnection();
		String sql = "SELECT ID FROM REVIEWMEMBER WHERE ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				memberVO = new MemberVO().setId(rs.getString("ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {rs.close();}
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return memberVO;
	}
	
	public MemberVO checkNickname(String nickname) throws Exception {
		MemberVO memberVO = null;
		Connection conn = DBAction.getInstance().getConnection();
		String sql = "SELECT NICKNAME FROM REVIEWMEMBER WHERE NICKNAME=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickname);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				memberVO = new MemberVO().setNickname(rs.getString("NICKNAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {rs.close();}
				if (pstmt != null) {pstmt.close();}
				if (conn != null) {conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return memberVO;
	}
}
