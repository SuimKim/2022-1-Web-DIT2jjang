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
    <title>중고장터:나눔등록</title>
</head>
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

    <main id="sellformmain">
        <div id="sellformbox">
            <h2>나눔글 등록하기</h2>
            <p>> 상품 상세 설명을 작성해주세요.</p>
            <p>> 허위 작성시 불이익을 받을 수 있습니다.</p>
            <hr class="st3"><br><br>
            <form action="">
            <table id="usertable">
                <tbody>
                    <tr>
                        <td class="col">상품이미지</td>
                        <td><input type="file" name="img" style="border: none; font-size: 10pt;"></td>
                    </tr>
                    <tr>
                        <td class="col">제목</td>
                        <td><input type="text" name="title"></td>
                    </tr>
                    <tr>
                        <td class="col">카테고리</td>
                        <td>
                            <div id="categorybox">
                                <select id="choosecg" name="category" style="font-size: 10pt; width: 100px;">
                                    <option value="나눔" selected>나눔</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="col">거래지역</td>
                        <td><input type="text" name="loc"></td>
                    </tr>
                    <tr>
                        <td class="col">상태</td>
                        <td><input type="text" name="state"></td>
                    </tr>
                    <tr>
                        <td class="col">설명</td>
                        <td><textarea type="text" name="contents" cols="90" rows="10"></textarea></td>
                    </tr>
                </tbody>
            </table>
            <button type="submit" id="btnsellok">등록하기</button>
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