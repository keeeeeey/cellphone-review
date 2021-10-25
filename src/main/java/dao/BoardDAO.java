package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.DBAction;
import dto.BoardVO;
import dto.MemberVO;

public class BoardDAO {

	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public ArrayList<BoardVO> newList() throws Exception {
		ArrayList<BoardVO> reviewList = new ArrayList<>();
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM REVIEWBOARD";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardVO boardVO = new BoardVO();
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setWrite_date(rs.getTimestamp("write_date"));
				boardVO.setNickname(rs.getString("nickname"));
				boardVO.setStarrate(rs.getFloat("starrate"));
				boardVO.setModel(rs.getString("model"));
				reviewList.add(boardVO);
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
		return reviewList;
	}
	
	public ArrayList<BoardVO> boardList(String model) throws Exception {
		ArrayList<BoardVO> reviewList = new ArrayList<>();
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM REVIEWBOARD WHERE MODEL=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, model);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardVO boardVO = new BoardVO();
				boardVO.setArticleNo(rs.getInt("articleno"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setImageFileName(rs.getString("imagefilename"));
				boardVO.setWrite_date(rs.getTimestamp("write_date"));
				boardVO.setNickname(rs.getString("nickname"));
				boardVO.setStarrate(rs.getFloat("starrate"));
				boardVO.setStarrate_p(rs.getInt("starrate_p"));
				boardVO.setStarrate_d(rs.getInt("starrate_d"));
				boardVO.setStarrate_p2(rs.getInt("starrate_p2"));
				boardVO.setStarrate_d2(rs.getInt("starrate_d2"));
				boardVO.setModel(rs.getString("model"));
				reviewList.add(boardVO);
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
		return reviewList;
	}
	
	public int insertReview(BoardVO boardVO) throws Exception {
		int result = -1;
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("INSERT INTO REVIEWBOARD(TITLE, STARRATE, STARRATE_P, STARRATE_D, STARRATE_P2, STARRATE_D2, MODEL, NICKNAME, CONTENT) "
										+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, boardVO.getTitle());
			pstmt.setFloat(2, boardVO.getStarrate());
			pstmt.setInt(3, boardVO.getStarrate_p());
			pstmt.setInt(4, boardVO.getStarrate_d());
			pstmt.setInt(5, boardVO.getStarrate_p2());
			pstmt.setInt(6, boardVO.getStarrate_d2());
			pstmt.setString(7, boardVO.getModel());
			pstmt.setString(8, boardVO.getNickname());
			pstmt.setString(9, boardVO.getContent());
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
}
