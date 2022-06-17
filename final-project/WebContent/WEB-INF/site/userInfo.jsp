<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/sessionCheck.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cs.dit.dto.UserDto" %>
<%@ page import="cs.dit.dao.UserDao" %>
<%@page import="java.util.ArrayList"%>
<%
	request.setCharacterEncoding("utf-8");

	String id=(String)session.getAttribute("id");
	
	UserDao dao = new UserDao();
	ArrayList<UserDto> dtos = dao.user(id);
	pageContext.setAttribute("dtos", dtos);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <title>중고장터:마이페이지</title>
</head>
<body>
    <header>
        <div id="top">
            <nav>
                <ul>
                    <li><a href="mypage.do">${id } 님</a></li>
                    <li><a href="faqList.html">고객센터</a></li>
                    <li>앱다운로드</li>
                </ul>
            </nav>
            <hr>
        </div>
        <div id="title">
            <a href="main.html"><img id="titlelogo" src="icon/maintitle.png"></img></a>
        </div>
        <div id="scbox">
            <input type="text" id="search" name="search" placeholder="상품명, 키워드 검색">
            <img id="btnsearch" src="icon/search.png" alt="">
        </div>
        <div id="mainnv">
            <nav>
                <ul>
                    <li><a href="sellForm.do">판매하기</a></li>
                    <li>|</li>
                    <li><a href="mypage.do">내 정보</a></li>
                    <li>|</li>
                    <li>쪽지함</li>
                </ul>
            </nav>
        </div>
        <div id="category">
            <nav>
                <ul>
                    <li><a href="listClo.html">의류</a></li>
                    <li><a href="listAc.html">액세서리</a></li>
                    <li><a href="listElec.html">전자제품</a></li>
                    <li><a href="listBook.html">도서</a></li>
                    <li><a href="listBeau.html">미용</a></li>
                    <li><a href="listFurn.html">가구</a></li>
                    <li><a href="listEtc.html">기타</a></li>
                    <li><a href="listFree.html">나눔</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main id="updatemain">
        <div id="usermenu" style="height: 500px;">
            <div id="userbox">
                <h5>${id } 님</h5>
                <button id="btnlogout" onclick="location.href='logout.do'">로그아웃</button>
            </div>
            <div id="usernav">
                <h4>USER MENU</h4>
                <nav>
                    <ul>
                        <li><a href="myList.html">내가 쓴 글 목록</a></li>
                        <li><a href="qnaList.html">1:1 문의</a></li>
                        <li><a href="userUpdate.do">개인정보 수정</a></li>
                        <li><a href="userDelForm.do">회원탈퇴</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="updatebox" style="height: 500px;">
            <h2>${id } 님의 회원정보</h2>
            <p>> 회원가입시 작성했던 개인정보를 수정하실 수 있습니다.</p>
            <p>> 회원님의 정보는 허가없이 열람, 유포되지 않습니다.</p>
            <hr class="st">
            <form action="">
           
                <table id="usertable">  
                    <tbody>
                    <c:forEach var="dto" items="${dtos}">
                        <tr>
                         <td class="col">이름</td>
                            <td>${dto.name}</td>
                        </tr>
                        <tr>
                            <td class="col">이메일</td>
                            <td>${dto.email }</td>
                        </tr>
                        <tr>
                            <td class="col">생년월일</td>
                            <td>${dto.birth }</td>
                        </tr>
                        <tr>
                            <td class="col">성별</td>
                            <td>${dto.gender }</td>
                        </tr>      
                        </c:forEach>              
                    </tbody>
                </table>
                <button id="btnupdate" type="button" onclick="location.href='userUpForm.do'" style="top: 400px;">정보수정 하기</button>
            </form>
        </div>
    </main>
    <footer>
        <div id="ftnav">
            <nav>
                <ul>
                    <li>회사소개</li>
                    <li>이용약관</li>
                    <li id="bol">개인정보 처리방침</li>
                    <li>청소년 보호정책</li>
                </ul>
            </nav>
        </div>
        <hr>
        <div id="info">
            <span>중고장터 사업자정보 &rang;</span><br><br>
            <p>대표이사 : 김말자&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;개인정보보호책임자 : 박설적</p>
            <p>사업자등록번호 : 110-33-37433&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;통신판매업신고 : 2019-서울방배-3278</p>
            <p>호스팅서비스 제공자 : DIT Web Services</p>
            <p>EMAIL : help@joong_go.co.kr&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;FAX : 02-888-9999</p>
            <p>주소 : 서울특별시 성동구 왕십리로 83-21</p>
            <hr>
            <p id="c">COPYRIGHT © DIT2JJANG ALL RIGHTS RESERVED.</p>
        </div>
        <div id="cs">
            <span>고객센터 &rang;</span><br><br>
            <p>1839-3333</p>
            <p>운영시간 9시 - 18시 (주말/공휴일 휴무, 점심시간 13시 - 14시)</p>
        </div>
    </footer>
</body>
</html>