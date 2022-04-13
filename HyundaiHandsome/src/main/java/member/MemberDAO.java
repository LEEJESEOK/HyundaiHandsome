package member;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import util.DBManager;

/*  이지은 작성
 *  Member 관련 데이터 조작을 담당하는 DAO
 *  
 *  isExisted 메서드: 로그인 요청 시, 아이디와 비밀번호 일치 여부를 확인
 *  addMember 메서드: 관리자 추가 요청 시, INSERT를 수행
 *  listMember 메서드: 관리자 목록 요청 시, SELECT를 수행
 *  getInfo 메서드: 마이페이지 요청 시, SELECT를 수행
 */

public class MemberDAO {
	private Connection con;
	private CallableStatement cstmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public MemberDAO() {}
	
	// 로그인 요청 시, 아이디와 비밀번호 일치 여부를 확인하는 메서드
	public boolean isExisted(MemberVO memberVO) {
		
		boolean result = false;  // 로그인 성공 여부를 저장할 변수
		String id = memberVO.getId(); 
		String pwd = memberVO.getPwd();
		String runFunc = "{? = call PKG_HANDSOME.SF_MEMBER_LOGIN(?, ?)}";  // SF_MEMBER_LOGIN 함수 호출 준비
		
		try {
			con = DBManager.getConnection();
			
			cstmt = con.prepareCall(runFunc);
			cstmt.registerOutParameter(1, Types.VARCHAR);  // 아이디와 비밀번호 일치 여부 반환
			cstmt.setString(2, id);  // 클라이언트로부터 입력 받은 아이디
			cstmt.setString(3, pwd);  // 클라이언트로부터 입력 받은 비밀번호
			
			try {
				cstmt.executeQuery();  // 쿼리 실행
				String flag = cstmt.getString(1);  // 쿼리 실행 결과 GET
				
				// 로그인을 성공할 경우
				if (flag.equals("TRUE"))
					result = true;
				
				// 로그인을 실패할 경우
				else 
					result = false;
				
			} catch(SQLException e) {
				System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			}
		} catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException e) {}
            if (cstmt != null) try { cstmt.close(); } catch(SQLException e) {}
            if (con != null) try { con.close(); } catch(SQLException e) {}
        }
		return result;  // 로그인 성공 여부를 반환
	}
	
	// 관리자 추가 요청 시, INSERT를 수행하는 메서드
	public boolean addMember(MemberVO memberVO) {
		
		boolean result = false;  // INSERT 성공 여부를 저장할 변수
		String name = memberVO.getName();
		String tel = memberVO.getTel();
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		String runFunc = "{call PKG_HANDSOME.SP_MEMBER_INSERT(?, ?, ?, ?)}";  // SP_MEMBER_INSERT 프로시저 호출 준비
		
		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(runFunc);
			
			// 클라이언트로부터 입력 받은 데이터들
			cstmt.setString(1, name);  
			cstmt.setString(2, tel);
			cstmt.setString(3, id);
			cstmt.setString(4, pwd);
			
			try {
				cstmt.executeQuery();  // 쿼리 실행
				result = true;  // INSERT 성공 여부 저장
					
			} catch(SQLException e) {
				System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			}
		} catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException e) {}
            if (cstmt != null) try { cstmt.close(); } catch(SQLException e) {}
            if (con != null) try { con.close(); } catch(SQLException e) {}
        }
		return result;  // INSERT 성공 여부를 반환
	}
	
	// 관리자 목록 요청 시, SELECT를 수행하는 메서드
	public List<MemberVO> listMember(){
		
		List<MemberVO> memberList = new ArrayList<MemberVO>();  // 관리자 목록 데이터를 저장할 변수
		
		try {
			con = DBManager.getConnection();
			
			String query = "select name, tel, id from member order by name";  // 실행할 쿼리문 저장
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();  // ResultSet에 쿼리문 결과를 저장
			
			while (rs.next()) {  // 쿼리 실행 결과 GET
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				String id = rs.getString("id");
				
				MemberVO memberVO = new MemberVO(name, tel, id);
				memberList.add(memberVO);  // 각 관리자의 이름, 연락처, 아이디 데이터 저장
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
            if (rs != null) try { rs.close(); } catch(SQLException e) {}
            if (cstmt != null) try { cstmt.close(); } catch(SQLException e) {}
            if (con != null) try { con.close(); } catch(SQLException e) {}
        }
		return memberList;  // 관리자 목록 데이터를 반환
	}
	
	// 마이페이지 요청 시, SELECT를 수행하는 메서드
	public List<MemberVO> getInfo(MemberVO memberVO){
		
		List<MemberVO> info = new ArrayList<MemberVO>();  // 특정 관리자의 데이터를 저장할 변수
		String id = memberVO.getId();  // 조회할 관리자의 ID
		
		try {
			con = DBManager.getConnection();
			
			String query = "SELECT * FROM TABLE(PKG_HANDSOME.SF_MEMBER_INFO(?))";  // 실행할 쿼리문 저장
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);  // 조회할 관리자의 ID
			rs = pstmt.executeQuery();  // ResultSet에 쿼리문 결과를 저장
			
			while (rs.next()) {  // 쿼리 실행 결과 GET
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				
				MemberVO memberInfo = new MemberVO(name, tel, id);
				info.add(memberInfo);  // 각 관리자의 이름, 연락처, 아이디 데이터 저장
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
            if (rs != null) try { rs.close(); } catch(SQLException e) {}
            if (cstmt != null) try { cstmt.close(); } catch(SQLException e) {}
            if (con != null) try { con.close(); } catch(SQLException e) {}
        }
		return info;  // 특정 관리자의 데이터를 반환
	}
}