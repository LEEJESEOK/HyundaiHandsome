package member;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import util.DBManager;

/*
 *  이지은 작성
 *  Member 관련 데이터 조작을 담당하는 DAO
 */

public class MemberDAO {
	private Connection con;
	private CallableStatement cstmt;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public MemberDAO() {
//		try {
//			Context ctx = new InitialContext();
//			Context envContext = (Context) ctx.lookup("java:/comp/env");
//			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}

	public boolean isExisted(MemberVO memberVO) {  // 로그인 시도 중, 아이디와 비밀번호 일치 여부 확인
		boolean result = false;
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		String runFunc = "{? = call PKG_HANDSOME.SF_MEMBER_LOGIN(?, ?)}";
		
		try {
			
			con = DBManager.getConnection();
			cstmt = con.prepareCall(runFunc);
			
			cstmt.registerOutParameter(1, Types.VARCHAR);
			cstmt.setString(2, id);
			cstmt.setString(3, pwd);
			
			try {
				cstmt.executeQuery();
				System.out.println("SF_MEMBER_LOGIN 실행 성공");
				String flag = cstmt.getString(1);
				if (flag.equals("TRUE")) {
					result = true;
					System.out.println("로그인 성공");
				} else {
					result = false;
					System.out.println("로그인 실패");
				}
				
			} catch(SQLException e) {
				System.out.println("SF_MEMBER_LOGIN 실행 실패");
				System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			}
		} catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } 
		return result;
	}
	
	public boolean addMember(MemberVO memberVO) {
		
		boolean result = false;
		
		String name = memberVO.getName();
		String tel = memberVO.getTel();
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		String runFunc = "{call PKG_HANDSOME.SP_MEMBER_INSERT(?, ?, ?, ?)}";
		
		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(runFunc);
			
			cstmt.setString(1, name);
			cstmt.setString(2, tel);
			cstmt.setString(3, id);
			cstmt.setString(4, pwd);
			
			try {
				cstmt.executeQuery();
				System.out.println("SP_MEMBER_INSERT 실행 성공");
				result = true;
					
			} catch(SQLException e) {
				System.out.println("SP_MEMBER_INSERT 실행 실패");
				System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			}
		} catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } 
		
		return result;
	}
	
	public List<MemberVO> listMember(){
		List<MemberVO> memberList = new ArrayList<MemberVO>();
		try {
			con = DBManager.getConnection();
			String query = "select name, tel, id from member order by name";
			System.out.println("query: " + query);
			
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				String id = rs.getString("id");
				
				MemberVO memberVO = new MemberVO(name, tel, id);
				memberList.add(memberVO);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return memberList;
	}
	
	public List<MemberVO> getInfo(MemberVO memberVO){
		List<MemberVO> info = new ArrayList<MemberVO>();
		String id = memberVO.getId();
		
		try {
			con = DBManager.getConnection();
			String query = "SELECT * FROM TABLE(PKG_HANDSOME.SF_MEMBER_INFO(?))";
			System.out.println("QUERY: " + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				System.out.println("SF_MEMBER_INFO");
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				
				MemberVO memberInfo = new MemberVO(name, tel, id);
				info.add(memberInfo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return info;
		

	}
	
}
