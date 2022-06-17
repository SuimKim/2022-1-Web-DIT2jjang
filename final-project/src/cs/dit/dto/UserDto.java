/**
 * 패키지명: dao
 * 파일명: LoginDto.java
 * 작성자: suim
 * 프로그램 설명: user DB 테이블의 데이터를 담는 클래스 
**/

package cs.dit.dto;

public class UserDto {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String birth;
	private String gender;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public UserDto(String id, String pwd, String email, String name, String birth, String gender) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
	}
	
	public UserDto() {
		
	} //매개변수가 없는 생성자 
	
	
}
