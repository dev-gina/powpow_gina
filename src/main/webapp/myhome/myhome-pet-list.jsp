<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이홈 반려동물</title>
    <link rel="stylesheet" href="../assets/css/main/main-index.css">
    <link rel="stylesheet" href="../assets/css/myhome/myhome-pet-list.css">
    <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
   <div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="../assets/images/powpow-logo.png" alt="로고" />
						</div>
						<div class="right">
							<div class="icons">
								<a href="#"> <img src="../assets/images/myhome/search_icon2.jpg" alt="검색" /></a> 
								<a href="./shipping-list.myhome"> <img src="../assets/images/myhome/truck_transport_icon2.jpg" alt="배송" /> </a> 
								<a href="../product-cart-list.product"> <img src="../assets/images/myhome/shopping_cart_icon2.jpg"alt="카트" /></a>
							</div>
							<div class="sector"></div>
							<div class="login">
								<a href="../member/login.member">로그인</a>
							</div>
						</div>
					</div>

					<div class="menu-container">
						<ul class="menu-wrap h4">
							<li class="menu"><a href="./product/main.product">스토어</a></li>
							<li class="menu"><a href="#">커뮤니티</a></li>
							<li class="menu"><a href="./list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a href="../product/product-dog.product">강아지</a></li>
								<li class="sub-menu"><a href="../product/product-cat.product">고양이</a></li>
								<li class="sub-menu"><a href="../product/product-bird.product">새</a></li>
								<li class="sub-menu"><a href="../product/product-fish.product">물고기</a></li>
								<li class="sub-menu"><a href="../product/health-main.product">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./community/list.community">홈</a></li>
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./list.myhome">나의 정보</a></li>
								<li class="sub-menu"><a href="./pet-list.myhome">반려동물 정보</a></li>
								<li class="sub-menu"><a href="./shipping-list.myhome">나의 쇼핑</a></li>
								<li class="sub-menu"><a href="./community/read.community">내 게시글</a></li>
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
    <div class="sub h1">
    	<p>반려동물 정보</p>
    </div>
    <a href="./pet-kind.myhome"><button id="submit-button">+추가 등록하기</button></a>
 <%--    <c:choose>
    <c:when test="${empty pet}">
        <script>
            window.location.href = 'no-pet.myhome';
        </script>
    </c:when>
    <c:otherwise> --%>
 <%--    <div id="animals">
        <div id="mydog">
            <div class="card">
                <img class="star" src="../assets/images/myhome/star.svg" data-filled-src="../assets/images/myhome/star-select.svg" alt="선택된 동물">
                <div class="profile-pic" id="profilePic">
                    <img id="profileImage" src="../assets/images/myhome/${pet.petImage}" alt="Profile Picture">
                </div>
                <div class="name"><c:out value="${pet.petName}"/>name</div>
                <input type="file" id="imageUpload" accept="image/*">
                <a rel="stylesheet" href="./pet-update.myhome"><button class="edit-button">편집</button></a>
                <a rel="stylesheet" href="./pet-delete-ok.myhome"><button class="edit-button">삭제</button></a>
            </div>
        </div>
    </div> --%>
      <c:forEach items="${pet}" var="pet">
        <div id="mydog">
            <div class="card">
                <img class="star" src="../assets/images/myhome/star.svg" data-filled-src="../assets/images/myhome/star-select.svg" alt="선택된 동물">
          <div class="profile-pic" id="profilePic">
              <img id="profileImage" src="../assets/images/myhome/${pet.petImage}" alt="Profile Picture">
          </div>
          <div class="name">
              <c:out value="${pet.petName}"/>
          </div>
          <div class="pet-details">
              <p><strong>성별:</strong> <c:out value="${pet.petGender}"/></p>
              <p><strong>품종:</strong> <c:out value="${pet.petBreed}"/></p>
              <p><strong>생일:</strong> <c:out value="${pet.petBirth}"/></p>
              <p><strong>몸무게:</strong> <c:out value="${pet.petWeight}"/>kg</p>
              <p><strong>중성화:</strong> <c:out value="${pet.petNeuter}"/></p>
              <p><strong>동물병원:</strong> <c:out value="${pet.petVet}"/></p>
          </div>
          <div class="button-group">
              <a href="./pet-update.myhome"><button class="edit-button">편집</button></a>
              <a href="./pet-delete-ok.myhome"><button class="edit-button">삭제</button></a>
          </div>
            </div>
        </div>
    </c:forEach>
      <%-- </c:otherwise>
</c:choose> --%>
    <footer>
		<div class="footer-container">
			<div class="footer-section">
				<h3>고객센터 &gt;</h3>
				<p>
					<span class="highlight">0000-0000</span> <span>09:00~18:00</span>
				</p>
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
					<p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146,
						3층 4층</p>
					<p>
						contact@powpow.com | 사업자등록번호: <span class="highlight">사업자정보확인</span>
					</p>
					<p>통신판매업신고번호 제2024-서울강남-0000호</p>
				</div>

				<div class="footer-section legal2">
					<p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을
						지지 않습니다.</p>
					<p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
				</div>

				<div class="footer-section legal3">
					<p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
</body>
<script src="../assets/js/myhome/myhome-pet-list.js">
</script>
</html>