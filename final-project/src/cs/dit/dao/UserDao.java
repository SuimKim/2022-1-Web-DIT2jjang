package cs.dit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.UserDto;


public class UserDao {
	// DB 연결 
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();                     //Context 객체 얻기 
		Context envCtx = (Context)initCtx.lookup("java:comp/env");  //"java:comp/env"에 해당하는 객체를 찾아서 envCtx에 삽입 
		DataSource ds = (DataSource)envCtx.lookup("jdbc/suim");     //"jdbc/suim"에 해당하는 객체를 찾아서 ds에 삽입 
		Connection con = ds.getConnection();                        //커넥션 풀로부터 커넥션 객체를 얻어냄 

		return con;
	}
	
	// 회원가입 메소드 
	public void join(UserDto dto) { 
		
		String sql = "insert into user(id, pwd, email, name, birth, gender) values(?,?,?,?,?,?)";  // 테이블에 값을 추가하기 위한 쿼리문 String 객체에 저장 
		
	    try(
	    	Connection con = getConnection();
	    	PreparedStatement pstmt = con.prepareStatement(sql);  // PreparedStatement 객체 선언
	    )
	    {
	    	pstmt.setString(1, dto.getId()); // pstmt에 이름 값 셋팅 
	    	pstmt.setString(2, dto.getPwd());   // pstmt에 ID 값 셋팅 
	    	pstmt.setString(3, dto.getEmail());  // pstmt에 패스워드 값 셋팅 
	    	pstmt.setString(4, dto.getName());  // pstmt에 패스워드 값 셋팅 
	    	pstmt.setString(5, dto.getBirth());  // pstmt에 패스워드 값 셋팅 
	    	pstmt.setString(6, dto.getGender());  // pstmt에 패스워드 값 셋팅 
		
	    	pstmt.executeUpdate();
		
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	}
	
	// 아이디 중복확인 메소드 
	public int checkId(String id) {
		String sql = "SELECT id from user";
		
		try(
		    Connection con = getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql);  // PreparedStatement 객체 선언
		)
		{
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if(rs.getString("id").equals(id)) {
					return 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} return 1;
	}
	
	// 로그인 메소드 
	public String login(String id, String pwd) {
		String email = null;
		String sql = "SELECT email FROM user WHERE id=? and pwd=?";
		
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);  // PreparedStatement 객체 선언
		)
		{
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
	        
			ResultSet rs = pstmt.executeQuery();
	        
	        if(rs.next()) {
	        	email = rs.getString("email");
	        }
	    } catch (Exception e) {
	      e.printStackTrace();
	    } return email;
	}
	
	
	// 회원정보 수정 메소드 
	public void updateUser(UserDto dto) { 
		
		String sql = "update user set pwd=?, email=?, name=?, birth=?, gender=? where id=?";  // 테이블에 값을 추가하기 위한 쿼리문 String 객체에 저장 
		
	    try(
	    	Connection con = getConnection();
	    	PreparedStatement pstmt = con.prepareStatement(sql);  // PreparedStatement 객체 선언
	    )
	    {
	    	pstmt.setString(1, dto.getPwd());   // pstmt에 ID 값 셋팅 
	    	pstmt.setString(2, dto.getEmail());  // pstmt에 패스워드 값 셋팅 
	    	pstmt.setString(3, dto.getName());  // pstmt에 패스워드 값 셋팅 
	    	pstmt.setString(4, dto.getBirth());  // pstmt에 패스워드 값 셋팅 
	    	pstmt.setString(5, dto.getGender());  // pstmt에 패스워드 값 셋팅
	    	pstmt.setString(6, dto.getId()); // pstmt에 ID 값 셋팅 
		
	    	pstmt.executeUpdate();
		
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	}
	
	//회원탈퇴 메소드 
	public int deleteUser(UserDto dto) {
		String sql = "delete from user where id=? and pwd=?"; 
		
	    try(
	    	Connection con = getConnection();
	    	PreparedStatement pstmt = con.prepareStatement(sql);  // PreparedStatement 객체 선언
	    )
	    {
	    	pstmt.setString(1, dto.getId());
	    	pstmt.setString(2, dto.getPwd());
	    	
	    	return pstmt.executeUpdate();
	    } catch(Exception e) {
	    	e.printStackTrace();
	    } return -1; // 서버오류 
	}
	
	// 회원 정보 조회 메소드 
	public ArrayList<UserDto> user(String ID) {
		
		ArrayList<UserDto> dtos = new ArrayList<UserDto>();
		
		String sql = "select * from user where id=?";
		
		try(
			Connection con = getConnection(); // 커넥션 얻기 
			PreparedStatement pstmt = con.prepareStatement(sql); // SQL 실행 준비 
			)
		{
			pstmt.setString(1,ID);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				// 1. 레코드셋에서 데이터를 가져오기 
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String email = rs.getString("email");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String gender = rs.getString("gender");
				
				
				// 2. 그 데이터들을 LoginDto로 만들기
				UserDto dto = new UserDto(id, pwd, email, name, birth, gender);
				
				// 3. 그 LoginDto를 배열(ArrayList)에 추가 
				dtos.add(dto);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dtos;
	}

	
	
}