<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/sessionCheck.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/project.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/2.css">
    <title>중고장터:상품 상세 보기</title>
</head>
<body>
    <header>
        <div id="top">
            <nav>
                <ul>
                    <li><a href="login.html">로그인</a></li>
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
                    <li><a href="userUpdate.html">내 정보</a></li>
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
    <main id="viewmain">
        <section id="pdinfo">
            <h4>상품상세</h4>
            <hr class="st2">
            <div id="pdimg"><img src="pic/IMG_2986.jpg" alt=""></div>
            <div id="pdtitle">
                <h3>추억의 다마고치입니다</h3>
                <h1>10,000원</h1>
                <hr class="st4">
                <p>2022.05.20</p>
                <p>|</p>
                <p>판매자: suim0215</p>
                <p>|</p>
                <p>조회수: 17</p>
                <hr class="st4">
                <ul>
                    <li><span>카테고리</span>전자제품</li>
                    <li><span>거래지역</span>부산진구 전포동</li>
                    <li><span>상태</span>중고상품</li>
                </ul>
                <hr class="st4">
                <button type="button" id="btncontact">쪽지보내기</button>
                <button type="button" id="btnurl">URL복사</button>
            </div>
        </section><br>
        <section id="pdaccount">
            <div class="accountbox">
                <ul class="viewtab">
                    <li class="on"><a href="#none">상세설명</a></li>
                    <li><a href="#none">댓글</a></li>
                </ul>
                <hr class="tabside">
                <div id="tab-1" class="tab-content on">
                    <h3>상세설명</h3>
                    <hr class="st4">
                    <p>
                        집 정리하다가 발견한 다마고치입니다.<br>
                        오래된 것 같으나 잘 작동하네요^^.<br>
                        택배거래는 3000원 추가해주세요. <br>
                        직거래는 전포동.부전동. 에서 합니다^^*<br>
                        댓글.쪽지 주세요
                    </p>
                </div>
                <div id="tab-2" class="tab-content">
                    <h3>댓글 0</h3>
                    <hr class="st4">
                    <br><br>
                    <p style="text-align: center;">등록된 댓글이 없습니다.</p>
                    <br><br>
                    <hr class="st4">
                    <textarea name="" id="댓글" cols="100" rows="5"></textarea>
                    <button id="btn댓글">작성하기</button>
                </div>
                <hr class="st2">  
            </div>
            
        </section>
        <hr>
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