package ir;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import oracle.jdbc.internal.OracleTypes;
import util.DBManager;

public class FileDownloadDAO {
	private FileDownloadDAO() {
	} // �̱��� ���� ����

	private static FileDownloadDAO instance = new FileDownloadDAO();

	public static FileDownloadDAO getInstance() {
		return instance;
	}
	
	// ���� id�� �ش��ϴ� ���� �̸� ��ȸ �޼���
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
