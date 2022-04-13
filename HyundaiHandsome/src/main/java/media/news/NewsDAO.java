package media.news;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBManager;

/*
작성자  : 고석준
클래스 설명 : News에 관련된 DB 호출을 관리하는 클래스 
*/
public class NewsDAO {
	private static NewsDAO instance = new NewsDAO();
	
	private Connection conn;
	private PreparedStatement pstmt;
	private CallableStatement cstmt;
	private ResultSet rs;
	
	private NewsDAO() {}
	
	public static NewsDAO getInstance() {
		return instance;
	}

	//새로운 News를 넣은 함
	public boolean insertNews(NewsVO news) {
		// TODO Auto-generated method stub
		boolean done = true;
		conn = DBManager.getConnection();
		
		try {
			conn.setAutoCommit(false);
			cstmt = conn.prepareCall("{ call PKG_HANDSOME.P_INSERT_NEWS(?, ?, ?, ?)}");
			
			cstmt.setString(1, news.getTitle());//title
			cstmt.setString(2,  news.getContent());//content
			cstmt.setString(3, news.getImage_id());//image_id
			cstmt.setString(4, news.getThumnailId());//thumnail_id
			
			cstmt.executeQuery();
			conn.commit();
			DBManager.close(conn, cstmt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return false;
			}
			return false;
		}
		
		
		return true;
	}

	//전체 News를 조회하는 함수, 파라미터는 페이지 번호이다.pipelined table function을 사용해서 조회한다.
	public List<NewsVO> selectNewsList(int pageIndex) {
		// TODO Auto-generated method stub
		
		List<NewsVO> newsList = new ArrayList<>();
		try {
			conn = DBManager.getConnection();
			
			String sql = "SELECT * FROM PKG_HANDSOME.F_SELECT_NEWS_LIST_TABLE(?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1,pageIndex);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				NewsVO vo= new NewsVO();
				vo.setId(rs.getInt("ID"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setCreateDate(rs.getString("CREATE_DATE"));
				vo.setThumnailId(rs.getString("THUMNAIL_ID"));
				vo.setUri(rs.getString("URI"));
				newsList.add(vo);
			}
			DBManager.close(conn, pstmt, rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			DBManager.close(conn, pstmt, rs);
			return null;
		}
		return newsList;
	}

	//전체 News 갯수를 조회하는 함수.
	public int countNews() {
		// TODO Auto-generated method stub
		int rows = 0;
		try {
			conn = DBManager.getConnection();
			String query = "SELECT * FROM PKG_HANDSOME.F_COUNT_NEWS()";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				rows = rs.getInt("count");
			}
			DBManager.close(conn, pstmt,rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			DBManager.close(conn, pstmt, rs);
			return rows;
		}
		return rows;
	}

	//News의 이미지와 기사 내용을 조회하는 함수 파라미터는 News의 pk값을 이용해서 pipelined table function을 사용해서 조회한다.
	public NewsVO selectNewsDet(int newsId) {
		// TODO Auto-generated method stub
		NewsVO vo = new NewsVO();
		try {
			conn = DBManager.getConnection();
			String query = "SELECT * FROM PKG_HANDSOME.F_SELECT_NEWSDET(?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, newsId);
			
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				vo.setId(rs.getInt("ID"));
				vo.setTitle(rs.getString("TITLE"));
				vo.setContent(rs.getString("CONTENT"));
				vo.setImageId(rs.getString("IMAGE_ID"));
				vo.setUri(rs.getString("URI"));
				vo.setCreateDate(rs.getString("CREATE_DATE"));
				vo.setPrevId(rs.getInt("PREV_ID"));
				vo.setPrevTitle(rs.getString("PREV_TITLE"));
				vo.setNextId(rs.getInt("NEXT_ID"));
				vo.setNextTitle(rs.getString("NEXT_TITLE"));
			}
			DBManager.close(conn, pstmt, rs);
			return vo;
			
		} catch(SQLException e) {
			e.printStackTrace();
			DBManager.close(conn, pstmt, rs);
		}
		return vo;
		
	}

	//News를 삭제하는 프로시저를 호출하는 함수.
	public boolean deleteNews(String parameter) {
		// TODO Auto-generated method stub
		conn = DBManager.getConnection();
		
		try {
			conn.setAutoCommit(false); // transaction처리를 위한 설정이다. 
			cstmt = conn.prepareCall("{ call PKG_HANDSOME.P_NEWS_DELETE(?)}");
			
			cstmt.setString(1, parameter);
			
			cstmt.executeQuery();
			conn.commit();
			DBManager.close(conn, cstmt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return false;
			}
			return false;
		}
		
		return true;
	}
}
