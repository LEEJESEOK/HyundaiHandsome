package util;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;

/*
작성자  : 
클래스 설명 : DBCP와 관련된 커넥션을 담당하는 클래스.
*/
public class DBManager {
	public static Connection getConnection() {
		
		Connection conn = null; //dbcp 
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/oracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}