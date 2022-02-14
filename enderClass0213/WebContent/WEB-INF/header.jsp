<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" href="${path}/css/header.css">

<!-- Ajax -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<header class="header">

	<div class="header-1">

		<a href="${path}/ender.jsp" class="logo"> <i
			class="fas fa-laptop-code"></i> Ender
		</a>

		<form action="" class="search-form">
			<input type="search" name="" placeholder="search here..."
				id="search-box"> <label for="search-box"
				class="fas fa-search"></label>
		</form>

		<div class="icons">
			<a href="#" class="fas fa-heart"></a> <a
				href="${path}/userClassList.do" class="fas fa-shopping-cart"></a>

			<c:if test="${sessionScope.userID == null}">
				<div id="login-btn" class="fas fa-user"></div>
			</c:if>

			<c:if test="${sessionScope.userID != null}">
				<div id="login-btn" class="fas fa-user" style="visibility: hidden;"></div>
				<div class="action">
					<div class="profile" onclick="menuToggle();">
						<img src="${path}/image/pic-1.png">
					</div>
					<div class="menu">
						<h3>
							${sessionScope.userName}<br> <span>${sessionScope.userGrade}</span>
						</h3>
						<c:if test="${sessionScope.userGrade == 1}">
							<ul>
								<li><i class="fas fa-user"></i><a href="#">내 정보</a></li>
								<li><i class="fas fa-user-edit"></i><a href="#">정보 수정</a></li>
								<li><i class="fas fa-envelope"></i><a href="#">메일</a></li>
								<li><i class="fas fa-cog"></i><a href="#">설정</a></li>
								<li><i class="fas fa-sign-out-alt"></i><a
									href="${path}/userLogout.do">로그아웃</a></li>
							</ul>
						</c:if>
						<c:if test="${sessionScope.userGrade == 3}">
							<ul>
								<li><i class="fas fa-user"></i><a href="#">내 정보</a></li>
								<li><i class="fas fa-user-edit"></i><a href="#">정보 수정</a></li>
								<li><i class="fas fa-envelope"></i><a href="${path}/bookRegister.do">교재 등록</a></li>
								<li><i class="fas fa-cog"></i><a href="#">설정</a></li>
								<li><i class="fas fa-sign-out-alt"></i><a
									href="${path}/userLogout.do">로그아웃</a></li>
							</ul>
						</c:if>
					</div>
				</div>
			</c:if>
		</div>

	</div>

	<div class="header-2">
		<nav class="headerBar">
			<a href="#home">home</a> <a href="#featured">featured</a> <a
				href="#arrivals">arrivals</a> <a href="#reviews">reviews</a> <a
				href="#blogs">blogs</a><a
				href="${path}/boardList.do">board</a>
		</nav>
	</div>

</header>

<!-- 화면이 줄어들었을 때 아래 생기는 메뉴 -->
<nav class="bottom-navbar">
	<a href="#home" class="fas fa-home"></a> <a href="#featured"
		class="fas fa-list"></a> <a href="#arrivals" class="fas fa-tags"></a>
	<a href="#reviews" class="fas fa-comments"></a> <a href="#blogs"
		class="fas fa-blog"></a>
</nav>

<!-- 로그인 FORM  -->
<c:import url="/WEB-INF/form/loginForm.jsp" />

<!-- 아이디 / 비번 선택 FORM  -->
<c:import url="/WEB-INF/form/selectForm.jsp" />

<!-- 아이디 찾기 FORM  -->
<c:import url="/WEB-INF/form/searchIdForm.jsp" />

<!-- 비밀번호 찾기 FORM  -->
<c:import url="/WEB-INF/form/searchPwForm.jsp" />

<!-- 회원가입 FORM  -->
<c:import url="/WEB-INF/form/registForm.jsp" />

<!-- 유효성 JS -->
<script src="${path}/js/header.js"></script>
<script src="${path}/js/validation.js"></script>
<script src="${path}/js/loginIdCheck.js"></script>
<script src="${path}/js/loginPwCheck.js"></script>