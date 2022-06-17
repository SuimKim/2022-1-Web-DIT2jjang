<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cs.dit.dao.UserDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		UserDao dao = new UserDao();
		
		int result = dao.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>중복확인</title>
	<style>
        body{
            text-align: center;
        }
        div{
            border: 1px solid;
            border-top: 3px solid black;
            padding-bottom: 10px;
        }
        hr{
            width: 80%;
        }
        button{
            height: 30px;
            width: 70px;
            border: none;
        }
    </style>
</head>
<body>
	<%
		String ok = null;
	
		if(result == 1){
			ok = "사용 가능한 아이디입니다.";
		} else{
			ok = "이미 사용중인 아이디입니다.";
		}
	%>
	<div>
		<h2>아이디 중복체크</h2>
	  <hr>
	  <p><%=ok %></p>
	  <button onclick="window.close()">확인</button>
	</div>
</body>
</html>