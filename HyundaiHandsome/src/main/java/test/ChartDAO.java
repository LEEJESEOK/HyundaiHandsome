package test;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.DBManager;

/*
작성자  : 고석준
클래스 설명 : Chart의 정보를 담고있는 View객체에 대한 호출을 담당하는 클래스.
*/
public class ChartDAO {
	private static ChartDAO instance = new ChartDAO();
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private ChartDAO() {}
	
	public static ChartDAO getInstance() {
		return instance;
	}
	
	//View객체에있는 차트 정보를 가져온다.
	public Map<String,List<ChartVO>> selectChart(){
		List<ChartVO> brandByName = new ArrayList<>();
		List<ChartVO> collectionBySeason = new ArrayList<>();
		try {
			//브랜드별 콜렉션참가수 조회 
			conn = DBManager.getConnection();
			
			String query = "SELECT * FROM PKG_HANDSOME.F_SELECT_COLLECTION_STAT('NAME')"; 
			pstmt = conn.prepareCall(query);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ChartVO vo = new ChartVO();
				vo.setCount(rs.getInt("COUNT"));
				vo.setStatCd(rs.getString("STAT_CD"));
				brandByName.add(vo);
			}
			
			DBManager.close(conn, pstmt, rs);
			
			// 시즌별 콜렉션 수
			conn = DBManager.getConnection();
			
			query = "SELECT * FROM PKG_HANDSOME.F_SELECT_COLLECTION_STAT('SEASON')";
			pstmt = conn.prepareCall(query);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ChartVO vo = new ChartVO();
				vo.setCount(rs.getInt("COUNT"));
				vo.setStatCd(rs.getString("STAT_CD"));
				collectionBySeason.add(vo);
			}
			DBManager.close(conn, pstmt, rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			DBManager.close(conn, pstmt, rs);
			return null;
		}
		HashMap<String, List<ChartVO>> statMap = new HashMap<>();
		statMap.put("brandByName", brandByName);
		statMap.put("collectionBySeason", collectionBySeason);
		return statMap;
	}
}
