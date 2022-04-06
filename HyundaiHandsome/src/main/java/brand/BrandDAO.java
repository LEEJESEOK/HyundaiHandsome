package brand;

import java.sql.*;
import java.util.*;

import util.DBManager;

public class BrandDAO {
	static BrandDAO instance = new BrandDAO();

	public static BrandDAO getInstance() {
		return instance;
	}

	public ArrayList<BrandVO> selectBrands() {
		ArrayList<BrandVO> list = new ArrayList<>();

		String sql = "SELECT * FROM BRAND ORDER BY ID";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BrandVO BrandVO = new BrandVO();
				BrandVO.setId(rs.getInt("ID"));
				BrandVO.setType(rs.getInt("TYPE"));
				BrandVO.setName(rs.getString("NAME"));
				BrandVO.setSs(rs.getString("BRAND_SS"));
				BrandVO.setDesc(rs.getString("BRAND_DESC"));
				list.add(BrandVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return list;
	}

}
