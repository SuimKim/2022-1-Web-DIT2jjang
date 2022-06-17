package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.UserDao;
import cs.dit.dto.UserDto;

public class JoinService implements ProjectService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. insertForm에서 전달된 id, name, pwd를 받는다.
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");

		if(birth == "") { // 선택정보인 생일 정보가 비었으면 
			birth = null; // birth 항목을 null(빈 값)으로 넣어준다. 
		}
		// 2. id, name, pwd로 LoginDto 객체를 만든다.
		UserDto dto = new UserDto(id, pwd, email, name, birth, gender);

		// 3. LoginDao 객체를 생성한다.
		UserDao dao = new UserDao();

		// 4. LoginDao의 메소드 insert(dto)를 실행한다.
		dao.join(dto);

	}

}
