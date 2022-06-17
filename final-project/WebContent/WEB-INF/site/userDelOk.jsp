<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <script>
			alert("탈퇴가 완료되었습니다.");
		</script>
	
    <title>중고장터</title>
</head>
<body>

    <header>
        <div id="top">
            <nav>
                <ul>
                    <li><a href="loginForm.do">로그인</a></li>
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
                    <li><a href="sellForm.html">판매하기</a></li>
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
        <hr class="st1">
    </header>

    <main>
        <section id="s1">
            <img src="icon/배너1.jpg"/><br>
            <img src="icon/배너2.jpg"/>
        </section>
        <hr class="st1">
        <section id="s2">
            <div id="pmbox">
            <h1>최근 등록된 상품</h1>
            </div>
            <div class="prl">
                <img src="pic/IMG_0176.jpg" alt="">
                <p>고양이 구경권<br><br><span>200,000원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_0225.jpg" alt="">
                <p>다이소 수세미<br><br><span>1,500원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_2152.jpg" alt="">
                <p>써브웨이 기프티콘 팔아요<br><br><span>4,000원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_2819.jpg" alt="">
                <p>아이패드 프로11 양도<br><br><span>800,000원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_3047.jpg" alt="">
                <p>해운대 블루라인파크 이용권 4인<br><br><span>36,000원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_3360.jpg" alt="">
                <p>2등일 수도 있는 로또<br><br><span>127,127원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_7817.jpg" alt="">
                <p>애플워치se 스그팝니다<br><br><span>210,000원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_9600.jpg" alt="">
                <p>에어서큘레이터<br><br><span>80,000원</span></p>
            </div>
            <div class="prl">
                <img src="pic/IMG_9941.jpg" alt="">
                <p>맥날 방탄세트 포장봉투...<br><br><span>1,234원</span></p>
            </div>
            <a href="sellView.html"><div class="prl">
                <img src="pic/IMG_2986.jpg" alt="">
                <p>추억의 다마고치입니다<br><br><span>10,000원</span></p>
            </div></a>
        </section>
        <section id="s3">
            <div id="infobox">
                <div class="listbox">
                    <h4>공지사항</h4><span>MORE&rang;</span>
                    <hr class="infoboxline">
                    <p>중고거래 사기근절 캠페인</p>
                    <p>나눔도 하고 기부도 하는 6월의 나눔이벤트</p>
                    <p><자취러시리즈> 이사비 지원 당첨자 발표</p>
                </div>
                <div class="listbox">
                    <h4>자주묻는질문</h4><a href="faqList.html"><span id="qna">MORE&rang;</span></a>
                    <hr class="infoboxline">
                    <p>로그인이 안되는 경우</p>
                    <p>판매글 작성 후 업로드 시 오류 발생</p>
                    <p>회원간 쪽지 보내기 오류 발생</p>
                </div>
                <div class="listbox">
                    <h4>중고장터 공식 SNS</h4>
                    <hr class="infoboxline">
                    <img src="icon/is.png" alt="">
                    <img src="icon/fb.png" alt="">
                    <img src="icon/yt.png" alt="">
                </div>
        </section>
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