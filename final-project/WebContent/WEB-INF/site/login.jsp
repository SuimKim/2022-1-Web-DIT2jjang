<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-3.6.0.min.js"></script>
    <title>중고장터:로그인</title>
<body>
    <header>
        <div id="top">
            <nav>
                <ul>
                    <li><a href="loginpage.do">로그인</a></li>
                    <li><a href="faqList.do">고객센터</a></li>
                    <li>앱다운로드</li>
                </ul>
            </nav>
            <hr>
        </div>
        <div id="title">
            <a href="joong-go.do"><img id="titlelogo" src="icon/maintitle.png"></img></a>
        </div>
        <div id="scbox">
            <input type="text" id="search" name="search" placeholder="상품명, 키워드 검색">
            <img id="btnsearch" src="icon/search.png" alt="">
        </div>
        <div id="mainnv">
            <nav>
                <ul>
                    <li><a href="loginpage.do">판매하기</a></li>
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
                    <li><a href="loginpage.do">의류</a></li>
                    <li><a href="loginpage.do">액세서리</a></li>
                    <li><a href="loginpage.do">전자제품</a></li>
                    <li><a href="loginpage.do">도서</a></li>
                    <li><a href="loginpage.do">미용</a></li>
                    <li><a href="loginpage.do">가구</a></li>
                    <li><a href="loginpage.do">기타</a></li>
                    <li><a href="loginpage.do">나눔</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main id="lm">
        <br><br><br>
        <div id="loginbox">
            <div id="lgt">
                <p>
                    <span>회원로그인</span><br><br>
                    가입하신 중고장터 아이디와 비밀번호를 입력해주세요.
                </p>
            </div>
            <form action="login.do" id="logingo" name="logingo" method="post">
                <div id="lg">
                    <input type="text" name="id" placeholder="아이디">
                    <input type="password" name="pwd" placeholder="비밀번호">
                </div>
                <button id="login" type="submit">로그인</button>
            </form>
            <div id="lgm">
                <p><a href="joinForm.do">회원가입 &rang;</a></p>
                <p>아이디 / 비밀번호 찾기 &rang;</p>
            </div>
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
<script>
$(document).ready(function() {
	$("#logingo").submit(function(){
		if(document.logingo.id.value =="" || document.logingo.id.value.length < 0){
			alert("아이디를 입력해주세요.")
			return false;
		}
		if(document.logingo.pwd.value =="" || document.logingo.pwd.value.length < 0){
			alert("비밀번호를 입력해주세요.")
			return false;
		}
		return true;
		
	})
});
	
</script>
</html>