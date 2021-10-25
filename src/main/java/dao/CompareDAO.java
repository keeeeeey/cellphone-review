package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBAction;
import dto.CompareVO;
import dto.CompareVO2;

public class CompareDAO {

	private static CompareDAO instance = new CompareDAO();
	
	public static CompareDAO getInstance() {
		return instance;
	}
	
	public CompareVO compare(String model) throws Exception {
		CompareVO compareVO = null;
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM compare_view WHERE MODEL = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, model);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				compareVO = new CompareVO();
				compareVO.setProduct(rs.getString("model"));
				compareVO.setPicture(rs.getString("picture"));
				compareVO.setSize(rs.getString("size"));
				compareVO.setWeight(rs.getInt("weight"));
				compareVO.setPixel(rs.getInt("pixel"));
				compareVO.setPrice(rs.getString("price"));
				compareVO.setStarrate(rs.getFloat("starrate"));
				compareVO.setStarrate_p(rs.getInt("starrate_p"));
				compareVO.setStarrate_d(rs.getInt("starrate_d"));
				compareVO.setStarrate_p2(rs.getInt("starrate_p2"));
				compareVO.setStarrate_d2(rs.getInt("starrate_d2"));
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
		return compareVO;
	}
	
	public CompareVO2 compare2(String model) throws Exception {
		CompareVO2 compareVO2 = null;
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM compare_view WHERE MODEL = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, model);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				compareVO2 = new CompareVO2();
				compareVO2.setProduct(rs.getString("model"));
				compareVO2.setPicture(rs.getString("picture"));
				compareVO2.setSize(rs.getString("size"));
				compareVO2.setWeight(rs.getInt("weight"));
				compareVO2.setPixel(rs.getInt("pixel"));
				compareVO2.setPrice(rs.getString("price"));
				compareVO2.setStarrate(rs.getFloat("starrate"));
				compareVO2.setStarrate_p(rs.getInt("starrate_p"));
				compareVO2.setStarrate_d(rs.getInt("starrate_d"));
				compareVO2.setStarrate_p2(rs.getInt("starrate_p2"));
				compareVO2.setStarrate_d2(rs.getInt("starrate_d2"));
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
		return compareVO2;
	}
}
