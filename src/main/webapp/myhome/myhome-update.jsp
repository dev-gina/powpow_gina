<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>마이홈 프로필</title>
  <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="stylesheet" href="../assets/css/myhome/myhome-update.css">
  <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
  <div class="header-container">
    <div id="header-wrap">
      <div id="border">
        <div id="nav">
          <div class="left">
            <img src="../assets/images/myhome/logo.png" alt="로고">
          </div>
          <div class="right">
            <div class="icons">
              <a href="#"><img src="../assets/images/myhome/search_icon2.jpg" alt="검색"></a>
              <a href="#"><img src="../assets/images/myhome/truck_transport_icon2.jpg" alt="배송"></a>
              <a href="#"><img src="../assets/images/myhome/shopping_cart_icon2.jpg" alt="카트"></a>
            </div>
            <div class="sector"></div>
            <div class="login"><a href="#">로그인</a></div>
          </div>
        </div>
        <div class="menu-container">
          <ul class="menu-wrap h4">
            <li class="menu"><a href="#">스토어</a></li>
            <li class="menu"><a href="#">커뮤니티</a></li>
            <li class="menu"><a href="#">마이홈</a></li>
            <li class="menu"><a href="#">이벤트</a></li>
          </ul>
          <div id="sector"></div>
          <div class="sub-menu-wrap">
            <ul>
              <li class="sub-menu"><a href="#">강아지</a></li>
              <li class="sub-menu"><a href="#">고양이</a></li>
              <li class="sub-menu"><a href="#">새</a></li>
              <li class="sub-menu"><a href="#">물고기</a></li>
              <li class="sub-menu"><a href="#">헬스+</a></li>
            </ul>
            <ul>
              <li class="sub-menu"><a href="#">홈</a></li>
              <li class="sub-menu"><a href="#">헬스+</a></li>
            </ul>
            <ul>
              <li class="sub-menu"><a href="./myhome-list.jsp">나의 정보</a></li>
              <li class="sub-menu"><a href="./myhome-pet-list.jsp">반려동물 정보</a></li>
              <li class="sub-menu"><a href="./myhome-shipping-list.jsp">나의 쇼핑</a></li>
              <li class="sub-menu"><a href="#">내 게시글</a></li>
            </ul>

            <ul>
              <li class="sub-menu"><a href="#"></a></li>
              <li class="sub-menu"><a href="#"></a></li>
              <li class="sub-menu"><a href="#"></a></li>
              <li class="sub-menu"><a href="#"></a></li>
            </ul>

          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="sub">
    <div class="main-sub h1">나의 정보</div>
    <span class="sub-sub">
      <a href="./list.myhome" class="current-category h4">프로필</a>
      <p>|</p>
      <a href="./likes-list.myhome" class="h4">좋아요</a>
      <p>|</p>
      <a href="./notification.myhome" class="h4">알림설정</a>
      <p>|</p>
      <a href="./password-update.myhome" class="h4">비밀번호 변경</a>
      </span>
  </div>
  <div id="page-content">
    <a href="./list.myhome"><button onClick="alert('수정이 완료되었습니다.')" class="complete">완료</button></a>
    <div id="profile-edit">
      <div class="profile-box">
        <img class="default-profile-image" src="../assets/images/myhome/${member.memberImage}" alt="프로필 사진">
        <span class="id"><c:out value="${member.memberNickname}" />name</span>
        <br>
        <hr>
        <br>
        <div class="imageupload-button">
          <button id="uploadButton">이미지 편집</button>
          <input type="file" id="fileInput" style="display: none;" accept="images/*">
        </div>
      </div>
      <div class="edit-info">
        <div>
          <label class="edit-category1">닉네임</label>
          <input class="edit-member" type="text" placeholder="${member.memberNickname}">
        </div>
        <div>
          <label class="edit-category2">아이디 (이메일)</label>
          <c:out value="${member.memberEmail}"></c:out>
        </div>
        <div>
          <label class="edit-category3">휴대폰번호</label>
          <input class="edit-member" type="text" placeholder="${member.memberPhone}">
        </div>
        <div class="group-category4">
          <label class="edit-category4">주소</label>
          <div class="input-container">
            <input class="inputbutton" type="text" name="address" id="sample6_postcode" placeholder="우편번호">
            <button class="auth-button" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">우편번호</button>
            <input class="inputbutton" type="text" name="address"  id="sample6_address" placeholder="기본주소">
            <input class="inputbutton" type="text" name="address" id="sample6_detailAddress" placeholder="상세주소">
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer>
    <div class="footer-container">
      <div class="footer-section">
        <h3>고객센터 &gt;</h3>
        <p><span class="highlight">0000-0000</span> <span>09:00~18:00</span></p>
        <ul class="custom-list">
          <li>평일: 전체 문의 상담</li>
          <li>토요일, 공휴일: 포포 배송 주문건 상담</li>
          <li>일요일: 휴무</li>
        </ul>
      </div>
      <div class="footer-section">
        <ul>
          <li><a href="#">회사소개</a></li>
          <li><a href="#">채용정보</a></li>
          <li><a href="#">이용약관</a></li>
          <li><a href="#">개인정보 처리방침</a></li>
          <li><a href="#">공지사항</a></li>
          <li><a href="#">안전거래센터</a></li>
        </ul>
      </div>

      <div class="footer-section">
        <ul>
          <li><a href="#">입점신청</a></li>
          <li><a href="#">제휴/광고 문의</a></li>
          <li><a href="#">POWPOW 신고센터</a></li>
          <li><a href="#">파트너 개인정보 처리방침</a></li>
          <li><a href="#">상품권 소개</a></li>
          <li><a href="#">고객의 소리</a></li>
        </ul>
      </div>

      <div class="footer">
        <div class="footer-section legal">
          <p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146, 3층 4층</p>
          <p>contact@powpow.com | 사업자등록번호: 0000000</p>
          <p>통신판매업신고번호 제2024-서울강남-0000호</p>
        </div>

        <div class="footer-section legal2">
          <p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
          <p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
        </div>

        <div class="footer-section legal3">
          <p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
        </div>
      </div>
    </div>
  </footer>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../assets/js/myhome/myhome-update.js">
</script>
</html>