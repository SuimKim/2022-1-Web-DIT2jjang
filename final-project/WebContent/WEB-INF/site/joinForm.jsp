<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-3.6.0.min.js"></script>
    <title>중고장터:회원가입</title>
</head>
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
                    <li><a href="loginpage.do">내 정보</a></li>
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

    <main id="jm">
        <br><br><br>
        <div id="joinbox">
            <div id="jit">
                <span>회원가입</span> 
            </div>
            <form action="join.do" id="jf" name="jf" method="post">
                <div id="ji">
                    <input type="text" name="id" placeholder="아이디">
                    <button id="check" type="button">중복확인</button>
                    <input type="password" name="pwd" placeholder="비밀번호">
                    <input type="password" name="pwdch" placeholder="비밀번호 확인">
                    <input type="email" name="email" placeholder="이메일">
                    <input type="name" name="name" placeholder="성명">
                    <hr width="90%">
                    <p>선택정보</p>
                    <input type="text" name="birth" placeholder="생년월일(0000-00-00 형식)">
                    <div id="genderbox">
                        <select id="gender" name="gender">
                            <option value="남성" selected>남성</option>
                            <option value="여성">여성</option>
                            <option value="none">선택하지 않음</option>
                        </select>
                    </div>
                </div>
                <button id="join" type="submit">가입하기</button>
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

<script>
$(document).ready(function() {
	$("#check").click(function(){
		//새창을 열어서 페이지를 오픈 후 -> 회원아이디정보를 가지고 중복체크
		//1. 아이디가 없으면 알림창과 진행x
		if(document.jf.id.value =="" || document.jf.id.value.length < 0){
			alert("아이디를 먼저 입력해주세요")
		} else{
			//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
			//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
			window.open("idCheck.do?id="+document.jf.id.value,"","width=300, height=200");
		}
	});
	
	$("#jf").submit(function(){
		if(document.jf.id.value =="" || document.jf.id.value.length < 0){
			alert("아이디를 입력해주세요.")
			return false;
		}
		if(document.jf.pwd.value =="" || document.jf.pwd.value.length < 0){
			alert("비밀번호를 입력해주세요.")
			return false;
		}
		if(document.jf.name.value =="" || document.jf.name.value.length < 0){
			alert("이름을 입력해주세요.")
			return false;
		}
		if(document.jf.email.value =="" || document.jf.email.value.length < 0){
			alert("이메일을 입력해주세요.")
			return false;
		}
		if(document.jf.pwd.value != document.jf.pwdch.value){
			alert("비밀번호가 다릅니다.")
			return false;
		}
		alert("회원가입이 완료되었습니다.")
		return true;
		
	})
});
	
</script>
</html>