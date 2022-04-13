package ir;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import oracle.jdbc.OracleTypes;
import util.DBManager;

/*
작성자  : 문혁
클래스 설명 : 공시목록 페이지의 DB Disclosure테이블 호출을 담당하는 클래스 
*/
public class DisclosureDAO {
	private DisclosureDAO() {
	} // 싱글턴 패턴 적용
	private static DisclosureDAO instance = new DisclosureDAO();
	public static DisclosureDAO getInstance() {
		return instance;
	}

	// 뷰를 이용해 입력받은 페이지 인덱스에 해당하는 공시 목록 10개 조회
	public ArrayList<DisclosureVO> getListDisclosure(int page) {
		ArrayList<DisclosureVO> disList = new ArrayList<DisclosureVO>();
		String sql = " select * from vw_dis_desc where num between ? and ? ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			// page를 통해 해당 페이지의 시작 공시와 마지막 공시 순번 구하는 로직
			pstmt.setInt(1, 1 + (page - 1) * 10);
			pstmt.setInt(2, page * 10);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				DisclosureVO vo = new DisclosureVO();
				vo.setDisclosureId(rs.getInt("DISCLOSURE_ID"));
				vo.setDisclosureName(rs.getString("DISCLOSURE_NAME"));
				vo.setPresenter(rs.getString("PRESENTER"));
				vo.setIndate(rs.getString("INDATE"));
				vo.setUrl(rs.getString("URL"));
				disList.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return disList;
	}

	// 검색기능 미사용시 공시정보의 마지막 페이지를 구하기 위한 메소드
	// 공시정보 총 개수인 total을 전달해서 disclosureInfoList.jsp에서 페이징 처리와 상단에 총 공시 건수 출력
	public int getDisclosureTotal() {
		int total = 0;
		String runSF = "{ ? = call PKG_HANDSOME.Fn_selectTotDisclosure() }";

		Connection conn = null;
		CallableStatement cstmt = null;

		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(runSF);
			cstmt.registerOutParameter(1, OracleTypes.NUMBER);
			cstmt.executeUpdate();
			total = cstmt.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt);
		}
		return total;
	}

	// 검색 키워드가 포함된 공시 목록을 출력하기 위한 메서드. 파이프라인 함수 이용
	public ArrayList<DisclosureVO> searchSameListDisclosure(String keyword) {
		ArrayList<DisclosureVO> disList = new ArrayList<DisclosureVO>();
		String sql = "SELECT * FROM TABLE(PKG_HANDSOME.fn_selectsamedisclosure(?))";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				DisclosureVO vo = new DisclosureVO();
				vo.setDisclosureId(rs.getInt("DISCLOSURE_ID"));
				vo.setDisclosureName(rs.getString("DISCLOSURE_NAME"));
				vo.setPresenter(rs.getString("PRESENTER"));
				vo.setIndate(rs.getString("INDATE"));
				vo.setUrl(rs.getString("URL"));
				disList.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return disList;
	}

	// 검색 키워드가 포함된 총 공시 건수 출력을 위한 메서드. 파이프라인 함수 이용
	public int searchDisclosureTotal(String keyword) {
		int total = 0;
		String sql = "SELECT count(*) total FROM TABLE(PKG_HANDSOME.fn_selectsamedisclosure(?))";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt("total");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return total;
	}
}