package cs.dit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs.dit.dao.UserDao;
import cs.dit.dto.UserDto;
import cs.dit.service.JoinService;
import cs.dit.service.ProjectService;
import cs.dit.service.UserUpdateService;



/**
 * Servlet implementation class LoginController
 */
@WebServlet("*.do")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SiteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
		String viewPage = null;
		
		
		// 페이지 이동 코드 
		if(com != null && com.trim().equals("loginpage")) {
			viewPage = "/WEB-INF/site/login.jsp";
		}
		
		else if(com != null && com.trim().equals("joong-go")) {
			viewPage = "/WEB-INF/site/index.jsp";
		}
		
		else if(com != null && com.trim().equals("joinForm")) {
			viewPage = "/WEB-INF/site/joinForm.jsp";
		}
		
		else if(com != null && com.trim().equals("idCheck")) {
			viewPage = "/WEB-INF/site/idCheck.jsp";
		}
		
		else if(com != null && com.trim().equals("join")) {
			ProjectService service = new JoinService();
			service.execute(request, response);
			viewPage = "/WEB-INF/site/login.jsp";
		}
		
		else if(com != null && com.trim().equals("main")) {
			viewPage = "/WEB-INF/site/main.jsp";
		}
	
		else if(com != null && com.trim().equals("mypage")) {
			viewPage = "/WEB-INF/site/userInfo.jsp";
		}
		else if(com != null && com.trim().equals("logout")) {
			viewPage = "/WEB-INF/site/index.jsp";
			HttpSession session = request.getSession();
					
			// session을 초기화
			session.invalidate();
		}
		else if(com != null && com.trim().equals("userInfo")) {
			viewPage = "/WEB-INF/site/userInfo.jsp";
		}
		
		else if(com != null && com.trim().equals("userUpForm")) {
			viewPage = "/WEB-INF/site/userUpdate.jsp";
		}
		else if(com != null && com.trim().equals("userUpdate")) {
			ProjectService service = new UserUpdateService();
			service.execute(request, response);
			viewPage = "/WEB-INF/site/userInfo.jsp";
		}
		else if(com != null && com.trim().equals("userDelForm")) {
			viewPage = "/WEB-INF/site/userDel.jsp";
		}
		else if(com != null && com.trim().equals("sellForm")) {
			viewPage = "/WEB-INF/site/sellForm.jsp";
		}
		
		//--------------------------------------------------------------
		// service 포함 코드 
		else if(com != null && com.trim().equals("login")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			UserDao dao = new UserDao();
		    String email = dao.login(id, pwd);
					
		    if(email != null) {
		    	HttpSession session = request.getSession();
		    	session.setAttribute("id", id);
		    	viewPage = "/WEB-INF/site/main.jsp";
						
		    } else {
		    	viewPage = "/WEB-INF/site/login2.jsp";
		    } 
		}
		
		else if(com != null && com.trim().equals("userdelete")) {
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			String pwd = request.getParameter("pwd");
			
			UserDto dto = new UserDto();
			dto.setId(id); dto.setPwd(pwd);
			
			UserDao dao = new UserDao();
			int result = dao.deleteUser(dto);
			
			if(result == 1) {
				viewPage = "/WEB-INF/site/userDelOk.jsp";
				session = request.getSession();
				
				// session을 초기화
				session.invalidate();
			} else {
				viewPage = "/WEB-INF/site/userDelFail.jsp";
			}
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
