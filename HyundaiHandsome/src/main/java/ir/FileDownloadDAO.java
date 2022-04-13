package ir;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import oracle.jdbc.internal.OracleTypes;
import util.DBManager;

public class FileDownloadDAO {
	private FileDownloadDAO() {
	} // 싱글턴 패턴 적용

	private static FileDownloadDAO instance = new FileDownloadDAO();

	public static FileDownloadDAO getInstance() {
		return instance;
	}
	
	// 파일 id에 해당하는 파일 이름 조회 메서드
	public String getFileName(String id) {
		String fileName = null;
		String runSF = "{ ? = call PKG_HANDSOME.Fn_selectFileName(?) }";

		Connection conn = null;
		CallableStatement cstmt = null;
		
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(runSF);
			cstmt.registerOutParameter(1, OracleTypes.VARCHAR);
			cstmt.setString(2, id);
			cstmt.executeUpdate();
			fileName = cstmt.getString(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt);
		}
		return fileName;
	}
}
