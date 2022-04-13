package brand;

import java.sql.CallableStatement;
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

	public ArrayList<BrandVO> selectFashionBrands() {
		ArrayList<BrandVO> list = new ArrayList<>();

		String sql = "SELECT * FROM FASHION_BRAND_INFO";

		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			rs = cstmt.executeQuery();

			while (rs.next()) {
				BrandVO brandVO = new BrandVO();
				brandVO.setId(rs.getInt("ID"));
				brandVO.setType(rs.getInt("TYPE"));
				brandVO.setName(rs.getString("NAME"));
				brandVO.setSs(rs.getString("SS"));
				brandVO.setDescription(rs.getString("DESCRIPTION"));
				brandVO.setMallScriptType(rs.getString("MALL_SCRIPT_TYPE"));
				brandVO.setMallId(rs.getString("MALL_ID"));
				list.add(brandVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}

		return list;
	}

	public ArrayList<BrandVO> selectBeautyBrands() {
		ArrayList<BrandVO> list = new ArrayList<>();

		String sql = "SELECT * FROM BEAUTY_BRAND_INFO";

		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			rs = cstmt.executeQuery();

			while (rs.next()) {
				BrandVO brandVO = new BrandVO();
				brandVO.setId(rs.getInt("ID"));
				brandVO.setType(rs.getInt("TYPE"));
				brandVO.setName(rs.getString("NAME"));
				brandVO.setSs(rs.getString("SS"));
				brandVO.setDescription(rs.getString("DESCRIPTION"));
				brandVO.setMallScriptType(rs.getString("MALL_SCRIPT_TYPE"));
				brandVO.setMallId(rs.getString("MALL_ID"));
				list.add(brandVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}

		return list;
	}

	public BrandVO selectBeautyBrand() {
		BrandVO brand = new BrandVO();

		String sql = "SELECT * FROM BEAUTY_BRAND_INFO";

		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			rs = cstmt.executeQuery();

			while (rs.next()) {
				brand.setId(rs.getInt("ID"));
				brand.setType(rs.getInt("TYPE"));
				brand.setName(rs.getString("NAME"));
				brand.setSs(rs.getString("SS"));
				brand.setDescription(rs.getString("DESCRIPTION"));
				brand.setMallScriptType(rs.getString("MALL_SCRIPT_TYPE"));
				brand.setMallId(rs.getString("MALL_ID"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}

		return brand;
	}

	public ArrayList<BrandVO> selectLifeStyleBrands() {
		ArrayList<BrandVO> list = new ArrayList<>();

		String sql = "SELECT * FROM LIFESTYLE_BRAND_INFO";

		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			rs = cstmt.executeQuery();

			while (rs.next()) {
				BrandVO brandVO = new BrandVO();
				brandVO.setId(rs.getInt("ID"));
				brandVO.setType(rs.getInt("TYPE"));
				brandVO.setName(rs.getString("NAME"));
				brandVO.setSs(rs.getString("SS"));
				brandVO.setDescription(rs.getString("DESCRIPTION"));
				brandVO.setMallScriptType(rs.getString("MALL_SCRIPT_TYPE"));
				brandVO.setMallId(rs.getString("MALL_ID"));
				list.add(brandVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}

		return list;
	}

	public BrandVO selectLifeStyleBrand() {
		BrandVO brand = new BrandVO();

		String sql = "SELECT * FROM LIFESTYLE_BRAND_INFO";

		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			rs = cstmt.executeQuery();

			while (rs.next()) {
				brand.setId(rs.getInt("ID"));
				brand.setType(rs.getInt("TYPE"));
				brand.setName(rs.getString("NAME"));
				brand.setSs(rs.getString("SS"));
				brand.setDescription(rs.getString("DESCRIPTION"));
				brand.setMallScriptType(rs.getString("MALL_SCRIPT_TYPE"));
				brand.setMallId(rs.getString("MALL_ID"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}

		return brand;
	}

}
