package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs.dit.dao.UserDao;
import cs.dit.dto.UserDto;

public class UserUpdateService implements ProjectService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		request.setCharacterEncoding("utf-8");
		
		
		UserDto dto = new UserDto();
		
		dto.setName(request.getParameter("name"));
		dto.setEmail(request.getParameter("email"));
		dto.setBirth(request.getParameter("birth"));
		dto.setGender(request.getParameter("gender"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setId(id);
		
		UserDao dao = new UserDao();
		dao.updateUser(dto);
		
	}

}
