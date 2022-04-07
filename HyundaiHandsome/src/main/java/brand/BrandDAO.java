package brand;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;

public class BrandDAO {
	static BrandDAO instance = new BrandDAO();

	public static BrandDAO getInstance() {
		return instance;
	}

	public ArrayList<BrandVO> selectBrands(String brandType) {
		ArrayList<BrandVO> list = new ArrayList<>();

		String sql = "SELECT * FROM BRAND WHERE TYPE = (SELECT ID FROM BRAND_TYPE WHERE NAME=?) ORDER BY ID";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brandType);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BrandVO brandVO = new BrandVO();
				brandVO.setId(rs.getInt("ID"));
				brandVO.setType(rs.getInt("TYPE"));
				brandVO.setName(rs.getString("NAME"));
				brandVO.setSs(rs.getString("SS"));
				brandVO.setDescription(rs.getString("DESCRIPTION"));
				brandVO.setMallType(String.format("%02d", rs.getInt("MALL_TYPE")));
				brandVO.setMallId(rs.getString("MALL_ID"));
				list.add(brandVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return list;
	}

}
