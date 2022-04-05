package brand;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.handsome.util.DBManager;

public class BrandDAO {
	static BrandDAO instance;

	BrandDAO() {
	}

	public static BrandDAO getInstance() {
		if (instance == null)
			instance = new BrandDAO();

		return instance;
	}

	Connection conn = null;
	PreparedStatement pstmt;
	CallableStatement cstmt;

	public ArrayList<BrandVO> selectBrands(String brandType) {
		ArrayList<BrandVO> brandList = new ArrayList<BrandVO>();

		try {
			String query = "SELECT * FROM BRAND WHERE TYPE=(SELECT DISTINCT ID FROM BRAND_TYPE WHERE NAME='" + brandType
					+ "') ORDER BY ID";
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int _id = rs.getInt("ID");
				int _type = rs.getInt("TYPE");
				String _name = rs.getString("NAME");
				String _ss = rs.getString("BRAND_SS");
				String _desc = rs.getString("BRAND_DESC");

				BrandVO vo = new BrandVO(_id, _type, _name, _ss, _desc);
				brandList.add(vo);
			}

			DBManager.close(conn, pstmt, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return brandList;
	}

}
