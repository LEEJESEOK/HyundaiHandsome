package media.collection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import util.DBManager;

/*
작성자  : 고석준
클래스 설명 : Collection에 관련된 DB 호출을 관리하는 클래스 
*/

public class CollectionDAO {
	public static CollectionDAO instance = new CollectionDAO();
	private Connection con;
	private CallableStatement cstmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private CollectionDAO() {
	}
	
	public static CollectionDAO getIntance() {
		return instance;
	}
	
	// 새로운 Collection을 insert하는 프로시저를 호출하는 함수 
	public boolean insertCollection(List<CollectionVO> collections) {
		boolean done = true;
		
		try {
			con = DBManager.getConnection();
			con.setAutoCommit(false);	//transaction 처리를 위한 커밋 설정 
			for(CollectionVO collection : collections) {
				String query = "{ call PKG_HANDSOME.P_INSERTCOLLECTION(?,?,?,?) }"; //season_cd, name, fileName, isThumnail
				cstmt = con.prepareCall(query);
				cstmt.setString(1, collection.getBrandSS());
				cstmt.setString(2, collection.getBrandName());
				cstmt.setString(3, collection.getFileName());
				cstmt.setInt(4, collection.isThumnail()? 1 : 0);//썸네일인지 아닌지를 판단하기 위한 값 , callableStatement에서는 Boolean값을 보낼수 없어서 0, 1로 보냄 
				cstmt.executeUpdate();
			}
			
			con.commit();
			DBManager.close(con, cstmt);
		}catch(SQLException e) {
			done = false;
			try {
				con.rollback();
				DBManager.close(con, cstmt);
				System.out.println("Collection등록에 실패하였습니다.");
				e.printStackTrace();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return done;
	}

	//Collection을 조회하는 함수, 브랜드 이름과 페이지 번호를 파라미터로받아서 조회 쿼리에 넣을 수 있다. 
	public List<CollectionVO> selectCollectionList(String brandName, int indexPage) {
		// TODO Auto-generated method stub
		List<CollectionVO> collectionList = new ArrayList<>();
		try {
			con = DBManager.getConnection();
			String query = "SELECT * FROM PKG_HANDSOME.F_SELECT_COLLECTION_LIST(?, ?)";
			pstmt = con.prepareStatement(query);
			if(brandName == null)
				pstmt.setString(1, null);	//브랜드 이름이 NUll인 경우는 모든 브랜드를 조회하는 경우이다.
			else 
				pstmt.setString(1, brandName);
			
			pstmt.setInt(2, indexPage);
			
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				CollectionVO co = new CollectionVO();
				co.setCollectionId(rs.getString("COLLECTION_ID"));
				co.setBrandSS(rs.getString("SEASON_CD"));
				co.setBrandName(rs.getString("NAME"));
				co.setThumnailId(rs.getString("THUMNAIL_ID"));
				co.setThumnailURI(rs.getString("URI"));
				
				collectionList.add(co); 
			}
			
			DBManager.close(con, pstmt,rs);
		}catch(SQLException e) {
			e.printStackTrace();
			DBManager.close(con, pstmt,rs);
			return null;
		}finally {
			
		}
		return collectionList;
	}

	// Collection에 등록된 브랜드 목록을 가져오는 함
	public List<String> selectNameList() {
		// TODO Auto-generated method stub
		List<String> nameList = new ArrayList<>();
		try {
			con = DBManager.getConnection();
			String query = "SELECT * FROM PKG_HANDSOME.F_SELECT_COLLECTION_BRAND_NAME()";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				nameList.add(rs.getString("NAME"));
			}
			DBManager.close(con, pstmt,rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			DBManager.close(con, pstmt, rs);
			return null;
		}
		return nameList;
	}

	//Collection의 갯수를 가져오는 함수
	public int countCollection(String brandName) {
		// TODO Auto-generated method stub
		int rows = 0;
		try {
			con = DBManager.getConnection();
			String query = "SELECT * FROM PKG_HANDSOME.F_COUNT_COLLECTION(?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, brandName);//브랜드 이름이 null 일때는 전체 갯수를 조회한다. 
			rs = pstmt.executeQuery();
			while(rs.next()) {
				rows = rs.getInt("count");
			}
			DBManager.close(con, pstmt,rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			DBManager.close(con, pstmt, rs);
			return rows;
		}
		return rows;
	}

	// Collection에 등록된 하나의 Collection에 대한 세부 정보(사진s)들을가져온다.
	public List<CollectionVO> selectCollection(String parameter) {
		// TODO Auto-generated method stub
		List<CollectionVO> list = new ArrayList<>();
		try {
			con = DBManager.getConnection();
			String query = " SELECT * FROM PKG_HANDSOME.F_SELECT_COLLECTION_DET(?)";
		
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(parameter));
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CollectionVO vo = new CollectionVO();
				vo.setImageId(rs.getString("IMAGE_ID"));
				vo.setImageURI(rs.getString("URI"));
				vo.setBrandSS(rs.getString("SEASON_CD"));
				vo.setBrandName(rs.getString("BRAND_NAME"));
				list.add(vo);
			}
			DBManager.close(con, pstmt, rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			DBManager.close(con, pstmt, rs);
			return null;
		}
		
		return list;
	}

	//Collection을 삭제하는 함수
	public boolean deleteCollection(String parameter) {
		// TODO Auto-generated method stub
		try {
			con = DBManager.getConnection();
			con.setAutoCommit(false);
		
			String query = "{ call PKG_HANDSOME.P_COLLECTION_DELETE(?) }"; //collection_id
			cstmt = con.prepareCall(query);
			cstmt.setInt(1, Integer.parseInt(parameter));
			cstmt.executeUpdate();
			
			con.commit();
			DBManager.close(con, cstmt);
		}catch(SQLException e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
				DBManager.close(con, cstmt);
				e.printStackTrace();
		}
		return true;
	}
	
}
