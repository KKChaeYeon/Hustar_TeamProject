package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.MemberVO;

public class MemberDAO {
	
//	멤버변수 DataSource 관련 참조변수 
	Context initCtx;
	Context envCtx;
	DataSource ds;
	
//	멤버변수 SQL 쿼리 관련 참조변수
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
//	싱글톤 패턴 시작
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {
		try{
			initCtx = new InitialContext();
			envCtx = (Context)initCtx.lookup("java:comp/env");
			ds = (DataSource)envCtx.lookup("jdbc/MysqlDB");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public static MemberDAO getInstance() {
		if(instance==null) {
			instance=new MemberDAO();
		}
		return instance;
	}
//	싱글톤 패턴 끝
	

//	회원 가입
	public boolean MemberJoin(MemberVO vo) {
		boolean flag=false;
		try{
			conn=ds.getConnection();
			pstmt=conn.prepareStatement("insert into userid values(?,?,?,?,?,?,?)");
			pstmt.setString(1, vo.getcode());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPhone());
			pstmt.setString(4, vo.getId());
			pstmt.setString(5, vo.getPwd());
			pstmt.setString(6, vo.getAddr1());
			pstmt.setString(7, "ROLE_USER");
			
			//sql문 실행
			int result = pstmt.executeUpdate();
			if(result!=0) {
				flag=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
//	회원 조회
	public MemberVO MemberSearch(String id) {
		MemberVO vo = null;
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement("select * from userid where id=?");
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs!=null) {
				while(rs.next()) {
					vo=new MemberVO(
							rs.getString("code"),
							rs.getString("name"),
							rs.getString("phone"),
							rs.getString("id"),
							rs.getString("pwd"),
							rs.getString("addr1")
							);
					vo.setRole(rs.getString("role"));
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
//	회원 수정
//	회원 삭제
}
