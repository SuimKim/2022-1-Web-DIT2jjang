<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/2.css">
    <title>중고장터:자주 묻는 질문</title>
<body>
    <header>
        <div id="top">
            <nav>
                <ul>
                    <li><a href="login.do">로그인</a></li>
                    <li><a href="faqList.do">고객센터</a></li>
                    <li>앱다운로드</li>
                </ul>
            </nav>
            <hr>
        </div>
        <div id="title">
            <a href="main.do"><img id="titlelogo" src="icon/maintitle.png"></img></a>
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
                    <li><a href="userUpdate.do">내 정보</a></li>
                    <li>|</li>
                    <li>쪽지함</li>
                </ul>
            </nav>
        </div>
        <div id="category">
            <nav>
                <ul>
                    <li><a href="listClo.do">의류</a></li>
                    <li><a href="listAc.do">액세서리</a></li>
                    <li><a href="listElec.do">전자제품</a></li>
                    <li><a href="listBook.do">도서</a></li>
                    <li><a href="listBeau.do">미용</a></li>
                    <li><a href="listFurn.do">가구</a></li>
                    <li><a href="listEtc.do">기타</a></li>
                    <li><a href="listFree.do">나눔</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main id="fm">
        <br><br><br>
        <div id="faqbox">
            <div id="fa">
                <p>자주 묻는 질문</p>
            </div>
            <table id="faqtable">
                <tbody>
                    <tr>
                        <th class="col">No</th>
                        <th>제목</th>
                        <th class="col2">작성일</th>
                    </tr>
                    <tr>
                        <td class="col">1</td>
                        <td>로그인이 안됩니다.</td>
                        <td class="col2">2022-06-01</td>
                    </tr>
                    <tr>
                        <td class="col">1</td>
                        <td>로그인이 안됩니다.</td>
                        <td class="col2">2022-06-01</td>
                    </tr>
                    <tr>
                        <td class="col">1</td>
                        <td>로그인이 안됩니다.</td>
                        <td class="col2">2022-06-01</td>
                    </tr>
                    <tr>
                        <td class="col">1</td>
                        <td>로그인이 안됩니다.</td>
                        <td class="col2">2022-06-01</td>
                    </tr>
                    <tr>
                        <td class="col">1</td>
                        <td>로그인이 안됩니다.</td>
                        <td class="col2">2022-06-01</td>
                    </tr>
                </tbody>
            </table>
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