<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/sessionCheck.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/2.css">
    <title>중고장터:문의하기</title>
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
    </header>

    <main id="qnaformmain">
        <div id="qnaformbox">
            <h2>1대1 문의사항 작성하기</h2>
            <p>> 문의 사항을 작성해주세요.</p>
            <p>> 상담 내용을 구체적으로 적어주시면 빠른 답변을 받으실 수 있습니다.</p>
            <hr class="st3"><br><br>
            <form action="">
            <table id="usertable">
                <tbody>
                    <tr>
                        <td class="col">제목</td>
                        <td><input type="text" name="title"></td>
                    </tr>
                    <tr>
                        <td class="col">내용</td>
                        <td><textarea type="text" name="contents" cols="90" rows="13"></textarea></td>
                    </tr>
                </tbody>
            </table>
            <button type="submit" id="btnqnaok">등록하기</button>
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